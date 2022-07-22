<?php echo $tab_language ?>
<div class="kt-portlet kt-portlet--mobile">
    <div class="kt-portlet__head kt-portlet__head--lg">
        <div class="kt-portlet__head-label">
			<span class="kt-portlet__head-icon">
				<i class="flaticon2-image-file"></i>
			</span>
            <h3 class="kt-portlet__head-title">
                Management Page <?php echo $row->title ?>
            </h3>
        </div>
    </div>
    <div class="kt-portlet__body">

        <form method="post" action="<?php echo base_url('proweb/pages/update/' . $row->id); ?>"
              enctype="multipart/form-data"
              class="form-send">
            <input type="hidden" name="type" value="<?php echo $type ?>">
            <div class="form-group">
                <label for="exampleSelect1">Judul Top Menu</label>
                <textarea class="form-control" name="title_menu"><?php echo $row->title_menu ?></textarea>
            </div>
            <div class="form-group">
                <label for="exampleSelect1">Judul Halaman</label>
                <textarea class="form-control" name="title"><?php echo $row->title ?></textarea>
            </div>
            <div class="form-group">
                <label for="exampleSelect1">Sub Judul</label>
                <textarea class="form-control" name="title_sub"><?php echo $row->title_sub ?></textarea>
            </div>
            <div class="form-group">
                <label for="exampleSelect1">Thumbnail</label>
                <br />
                <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" class="img-thumbnail" width="200">
                <br /><br />
                <div class="custom-file">
                    <input type="file" class="custom-file-input browse-preview-img" accept="image/*" name="thumbnail" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
                <span class="form-text text-muted"><?php echo $this->main->file_info() ?></span>
            </div>
            <div class="form-group">
                <label for="exampleSelect1">File</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input browse-preview-img" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                    <?php if($row->file) { ?>
                        <br />
                        <br />
                        <a href="<?php echo $this->main->image_preview_url($row->file) ?>" target="_blank" class="btn btn-success">Download File</a>
                    <?php } ?>
                </div>
            </div>
            <div class="form-group" style="margin-left: 20px; margin-right: 20px">
                <label>Description</label>
                <textarea class="tinymce" id="exampleTextarea" rows="3"
                          name="description"><?php echo $row->description ?></textarea>
            </div>
            <?php if ($row->status_seo == 'yes') { ?>
                <div class="form-group">
                    <label for="exampleSelect1">Meta title</label>
                    <input type="text" class="form-control" value="<?php echo $row->meta_title ?>" name="meta_title">
                </div>
                <div class="form-group">
                    <label for="exampleSelect1">Meta Description</label>
                    <input type="text" class="form-control" value="<?php echo $row->meta_description ?>"
                           name="meta_description">
                </div>
                <div class="form-group">
                    <label for="exampleSelect1">Meta Keywords</label>
                    <input type="text" class="form-control" value="<?php echo $row->meta_keywords ?>"
                           name="meta_keywords">
                </div>
            <?php } ?>

            <?php if ($row->data_1 && count(json_decode($row->data_1)) > 0) { ?>
                <h4>Penambahan Item Data</h4>
                <div class="data-1-wrapper">
                    <ol>
                        <?php
                        $row_data_1 = json_decode($row->data_1, TRUE);
                        foreach ($row_data_1['title'] as $key => $title) { ?>
                            <li>
                            <div class="form-group">
                                <label for="exampleSelect1">Judul</label>
                                <textarea class="form-control" name="data_1[title][]"><?php echo $title ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleSelect1">Deskripsi</label>
                                <textarea class="form-control" name="data_1[description][]"><?php echo $row_data_1['description'][$key] ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleSelect1">Nama Gambar</label>
                                <textarea class="form-control" name="data_1[images][]"><?php echo $row_data_1['images'][$key] ?></textarea>
                            </div>
                            <button type="button" class="btn btn-danger btn-data-1-hapus">Hapus</button>
                            <br/>
                            <br/>
                            <br/>
                            </li>
                        <?php } ?>
                    </ol>
                </div>
                <button type="button" class="btn btn-success btn-data-1-tambah">Tambah Data</button>
            <?php } ?>

            <br/><br/>
            <br/><br/>
            <br/><br/>
            <input type="submit" class="btn btn-primary" name="submit" value="Update Data">
        </form>
    </div>
</div>

<div class="data-1-data hide">
    <li>
        <div class="form-group">
            <label for="exampleSelect1">Judul</label>
            <textarea class="form-control" name="data_1[title][]"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleSelect1">Deskripsi</label>
            <textarea class="form-control" name="data_1[description][]"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleSelect1">Nama Gambar</label>
            <textarea class="form-control" name="data_1[images][]"></textarea>
        </div>
        <button type="button" class="btn btn-danger btn-data-1-hapus">Hapus</button>
        <br/>
        <br/>
        <br/>
    </li>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        data_1_hapus();

        $('.btn-data-1-tambah').click(function () {
            var form = $('.data-1-data').html();

            $('.data-1-wrapper ol').append(form);
            data_1_hapus();
        });
    });

    function data_1_hapus() {
        $('.btn-data-1-hapus').click(function () {
            $(this).parents('li').remove();
        });
    }
</script>
