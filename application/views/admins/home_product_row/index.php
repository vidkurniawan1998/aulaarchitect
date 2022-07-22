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

        <form method="post" action="<?php echo base_url('proweb/home_product_row/update'); ?>"
              enctype="multipart/form-data"
              class="form-send">
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
                <label for="exampleSelect1">Pilih Produk</label>
                <select name="id_product" class="form-control">
                    <?php foreach($product_list as $row_product) { ?>
                        <option value="<?php echo $row_product->id ?>" <?php echo $row_product->id == $row->id_product ? 'selected':'' ?>><?php echo $row_product->title ?></option>
                    <?php } ?>
                </select>
            </div>
            <input type="submit" class="btn btn-primary" name="submit" value="Update Data">
        </form>
    </div>
</div>