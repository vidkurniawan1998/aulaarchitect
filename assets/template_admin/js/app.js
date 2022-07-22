$(document).ready(function () {

    data_1_status_view();
    status_seo_view();
    data_1_hapus();


    var base_url = $('#base_url').attr('title');
    var path_img = base_url + 'upload/images/';
    var get_subcategory_url = $('#get_subcategory').val();

    $("#selectcategory").change(function(){
        var get_id_category = $(this).val();
        $.ajax({
            url: get_subcategory_url,
            type: 'post',
            data: {id_category:get_id_category},
            dataType: 'json',
            success:function(response){
                // console.log(response);

                var len = response.length;

                $("#select_subcategory").empty();
                for( var i = 0; i<len; i++){
                    var id = response[i]['id_subcategory'];
                    var title = response[i]['title'];
                    
                    $("#select_subcategory").append("<option value='"+id+"'>"+title+"</option>");

                }
            }
        });
    });

    if ($('.tinymce').length > 0) {

        tinymce.init({
            selector: '.tinymce',
            height: 300,
            theme: 'modern',
            relative_urls: false,
            remove_script_host: false,
            convert_urls: false,
            plugins: [
                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                'searchreplace visualblocks visualchars code fullscreen',
                'insertdatetime media nonbreaking save table contextmenu directionality',
                'emoticons template paste textcolor colorpicker textpattern imagetools filemanager responsivefilemanager'
            ],
            toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image responsivefilemanager',
            toolbar2: 'print preview media | forecolor backcolor emoticons',
            image_advtab: true,
            templates: [
                {title: 'Test template 1', content: 'Test 1'},
                {title: 'Test template 2', content: 'Test 2'}
            ],
            content_css: [
                '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
                '//www.tinymce.com/css/codepen.min.css'
            ],

            external_filemanager_path: base_url + "assets/template_admin/tinymce/plugins/filemanager/",
            filemanager_title: "Responsive Filemanager",
            external_plugins: {"filemanager": base_url + "assets/template_admin/tinymce/plugins/filemanager/plugin.min.js"}

        });


    }

    $('.input-select2').select2({
        placeholder : 'Select an option'
    });

    $('.input-select2-clear').select2({
        placeholder : 'Select an option',
        allowClear : true,
    });

    $('.datatable').on("click", ".btn-delete", function (e) {
        e.preventDefault();

        var action = $(this).data('action');
        var self = $(this);
        swal.fire({
            title: 'Anda yakin ?',
            text: "Ingin menghapus data ini",
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes',
            cancelButtonText: 'No',
            reverseButtons: true
        }).then(function (result) {
            if (result.value) {
                $.ajax({
                    url: action,
                    method: 'get',
                    data: {},
                    success: function (e) {
                        self.parents('tr').remove();
                        // swal.fire(
                        // 	'Berhasil!',
                        // 	'Data Berhasil di hapus',
                        // 	'success'
                        // )
                    }
                });
            } else if (result.dismiss === 'cancel') {
                swal.fire(
                    'Batal',
                    'data tidak di hapus',
                    'error'
                )
            }
        });

        return false;
    });

    $('.datatable').on("click", ".btn-edit", function (e) {
        e.preventDefault();
        var json = $(this).parents('td').siblings('td.data-row').children('textarea').val();
        var action = $(this).data('action');
        var data = JSON.parse(json);

        $('#modal-edit').parents('form').attr('action', action);
        $.each(data, function (field, value) {

            if ($('#modal-edit [name="' + field + '"]').hasClass('tinymce')) {
                tinyMCE.activeEditor.setContent(value);
            } else if ($('#modal-edit [name="' + field + '"]').hasClass('browse-preview-img')) {
                $('#modal-edit [name="' + field + '"]').parents('div').siblings('img').attr('src', path_img + value);
            } else {
                $('#modal-edit [name="' + field + '"]').val(value);
            }

        });
        
        $("#selectcategory").change(function(){
            var get_id_category = $(this).val();
            $.ajax({
                url: get_subcategory_url,
                type: 'post',
                data: {id_category:get_id_category},
                dataType: 'json',
                success:function(response){
                    // console.log(response);
    
                    var len = response.length;
    
                    $("#select_subcategory").empty();
                    for( var i = 0; i<len; i++){
                        var id = response[i]['id_subcategory'];
                        var title = response[i]['title'];
                        
                        $("#select_subcategory").append("<option value='"+id+"'>"+title+"</option>");
    
                    }
                }
            });
        });

        $('#modal-edit').modal('show');


        return false;
    });

    $('.form-send').submit(function (e) {
        e.preventDefault();

        $('.container-loading').hide().removeClass('hide').fadeIn('fast');
        $.ajax({
            url: $(this).attr('action'),
            type: $(this).attr('method'),
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            success: function (json) {
                $('.container-loading').fadeOut('fast').addClass('hide');
                var data = JSON.parse(json);
                $('.form-group').removeClass('validated');
                $('.invalid-feedback').remove();
                $('.form-control').removeClass('is-invalid');
                if (data.status === 'error') {
                    swal.fire({
                        position: 'center',
                        type: 'warning',
                        title: data.message,
                    });

                    $.each(data.errors, function (field, message) {
                        if (message) {
                            $('[name=' + field + ']').parents('.form-group').addClass('validated');
                            $('[name=' + field + ']').after('<div class="invalid-feedback">' + message + '</div>');
                            $('[name=' + field + ']').addClass('is-invalid');
                        }
                    })
                } else if (data.status == 'success') {
                    window.location.reload();
                } else {
                    swal.fire({
                        position: 'center',
                        type: 'warning',
                        title: 'Ada kesalahan',
                    });
                }
            }
        });

        return false;
    });

    $('.language-change').click(function (e) {
        e.preventDefault();
        var id = $(this).data('id');

        $.ajax({
            url: base_url + 'proweb/general/language_change/' + id,
            type: 'get',
            success: function () {
                window.location.reload();
            }
        });

        return false;
    });


    $(".browse-preview-img").change(function () {
        readURL(this, $(this));
    });

    function readURL(input, self) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                self.parents('div').siblings('img').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    $('.data-1-status').change(function () {
        data_1_status_view();
    });

    $('.status-seo').change(function () {
        status_seo_view();
    });

    $('.btn-data-1-tambah').click(function () {
        var form = $('.data-1-data').html();

        $('.data-1-wrapper ol').append(form);
        data_1_hapus();

        $(".browse-preview-img").change(function () {
            readURL(this, $(this));
        });
    });

    function data_1_status_view() {
        var data_1_status = $('input[name="data_1_status"]:checked').val();
        if (data_1_status === 'yes') {
            $('.data-1-wrapper').removeClass('hide');
        } else {
            $('.data-1-wrapper').addClass('hide');
        }
    }

    function status_seo_view() {
        var status_seo_view = $('input[name="status_seo"]:checked').val();
        if (status_seo_view === 'yes') {
            $('.status-seo-wrapper').removeClass('hide');
        } else {
            $('.status-seo-wrapper').addClass('hide');
        }
    }

    function data_1_hapus() {
        $('.btn-data-1-hapus').click(function () {
            $(this).parents('li').remove();
        });
    }

    
});
