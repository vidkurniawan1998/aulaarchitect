<?php echo $tab_language ?>

<div class="kt-portlet kt-portlet--mobile">
    <div class="kt-portlet__head kt-portlet__head--lg">
        <div class="kt-portlet__head-label">
			<span class="kt-portlet__head-icon">
				<i class="flaticon2-image-file"></i>
			</span>
            <h3 class="kt-portlet__head-title">
                Management Product
            </h3>
        </div>
        <div class="kt-portlet__head-toolbar">
            <div class="kt-portlet__head-wrapper">
                <div class="kt-portlet__head-actions">
                    <a href="#" class="btn btn-brand btn-elevate btn-icon-sm" data-toggle="modal"
                       data-target="#modal-create">
                        <i class="la la-plus"></i>
                        Add Product
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="kt-portlet__body">
        <!--begin: Datatable -->
        <table class="table table-striped- table-bordered table-hover table-checkable datatable">
            <thead>
            <tr>
                <th class="d-none"></th>
                <th width="20">No</th>
                <th>Category</th>
                <th>Product Title</th>
                <th>Location</th>
                <th>Thumbnail</th>
                <th>Use</th>
                <!-- <th>Available</th> -->
                <!-- <th>Best Seller</th> -->
                <!-- <th>New Status</th> -->
                <!-- <th>Product Price</th> -->
                <th width="220">Option</th>
            </tr>
            </thead>
            <?php $no = 1 ?>
            <tbody>
            <?php foreach ($tour as $datas) : ?>
                <tr>
                    <td class="d-none data-row">
                        <textarea><?php echo json_encode($datas) ?></textarea>
                    </td>
                    <td><?php echo $no ?></td>
                    <td><?php echo $datas->category_title ?></td>
                    <td><?php echo $datas->title ?></td>
                    <td><?php echo $datas->location?></td>
                    <td>
                        <img src="
                        <?php echo $this->main->image_preview_url($datas->thumbnail) ?>" alt="Icon" width="
                        <?php echo $this->main->image_size_preview() ?>">
                    </td>
                    <td><?php echo $datas->use ?></td>
                    <!-- <td><?php //echo $datas->best_seller ?></td> -->
                    <!-- <td><?php //echo $datas->new_status ?></td> -->
                    <!-- <td> -->
                        <?php
                        // if ($datas->price_old) {
                        //     echo '<span style="text-decoration: line-through">' . $this->main->currency($datas->price_old) . '</span><br />';
                        // }
                        // echo $this->main->currency($datas->price);
                        ?>
                    <!-- </td> -->
                    <td>
                        <!-- <a href="<?php //echo base_url('proweb/product_gallery/list/' . $datas->id) ?>" -->
                           <!-- class="btn btn-primary btn-elevate btn-elevate-air">Gallery</a> -->
                        <a href="#"
                           class="btn btn-success btn-elevate btn-elevate-air btn-edit">Edit</a>
                        <a href="#"
                           data-action="<?php echo base_url() ?>proweb/product/delete/<?php echo $datas->id ?>"
                           class="btn btn-danger btn-elevate btn-elevate-air btn-delete">Delete</a>
                    </td>
                </tr>
                <?php $no++ ?>
            <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>

<form method="post" action="<?php echo base_url() . 'proweb/product/createprocess'; ?>" enctype="multipart/form-data"
      class="form-send">
    <input type="hidden" name="created_at" value="<?php echo date('Y-m-d H:i:s') ?>">
    <input type="hidden" name="id_language" value="<?php echo $id_language ?>">
    <input type="hidden" id="get_subcategory" value="<?php echo base_url('Product/getsubcategory'); ?>">

    <div class="modal" id="modal-create" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add shop</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleSelect1">Product Category</label>
                        <select class="form-control" name="id_category" id="selectcategory">
                            <?php foreach ($category as $r) { ?>
                                <option value="<?php echo $r->id ?>"><?php echo $r->title ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                         <label for="exampleSelect1">Product Subcategory</label>
                         <select class="form-control" name="id_subcategory" id="select_subcategory">
                               
                         </select>       
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Use</label>
                        <select class="form-control" name="use">
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Best Seller</label>
                        <select class="form-control" name="best_seller">
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div> -->
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">New Status</label>
                        <select class="form-control" name="new_status">
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div> -->
                    <div class="form-group">
                        <label for="exampleSelect1">Product Title</label>
                        <input type="text" class="form-control" name="title">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Product Sub Title</label>
                        <input type="text" class="form-control" name="title_sub">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Location</label><br>
                            <select name="location" class="form-control input-select2-clear">
                                <option value="">-Choose Location-</option>
                                <?php
                                    foreach ($districts as $district) {
                                ?>
                                    <option value="<?= $district->name ?>"><?= $district->name ?></option>
                                <?php
                                    }
                                ?>
                            </select>
                    </div>
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Product Price Promo</label>
                        <input type="number" class="form-control" name="price">
                    </div> -->
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Product Price Old</label>
                        <input type="number" class="form-control" name="price_old">
                        * Jika tidak terisi, maka harga promo yang digunakan dan tidak ada harga tercoret
                    </div> -->
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Star</label>
                        <select class="form-control" name="star">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div> -->
                    <div class="form-group">
                        <label for="exampleSelect1">Thumbnail</label>
                        <br />
                        <img src="" class="img-thumbnail" width="200">
                        <br /><br />
                        <div class="custom-file">
                            <input type="file" class="custom-file-input browse-preview-img" accept="image/*" name="thumbnail" id="customFile">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        <span class="form-text text-muted">
                            <?php echo $this->main->file_info() ?></span>
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Thumbnail Alt</label>
                        <input type="text" class="form-control" name="thumbnail_alt">
                        <span class="form-text text-muted">
                        <?php echo $this->main->help_thumbnail_alt() ?></span>
                    </div>
                    <div class="form-group" style="margin-left: 20px; margin-right: 20px">
                        <label>Product Description</label>
                        <textarea class="tinymce" id="exampleTextarea" rows="3" name="description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Meta title</label>
                        <input type="text" class="form-control" placeholder="Meta Title" name="meta_title">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Meta Description</label>
                        <input type="text" class="form-control" placeholder="Meta description" name="meta_description">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Meta Keywords</label>
                        <input type="text" class="form-control" placeholder="Meta keywords" name="meta_keywords">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" name="submit" value="Save">
                </div>
            </div>
        </div>
    </div>
</form>

<form method="post" action="<?php echo base_url() . 'proweb/product/update'; ?>" enctype="multipart/form-data"
      class="form-send">
    <input type="hidden" name="updated_at" value="<?php echo date('Y-m-d H:i:s') ?>">
    <input type="hidden" id="get_subcategory" value="<?php echo base_url('Product/getsubcategory'); ?>">
    <div class="modal" id="modal-edit" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

        <input type="hidden" name="id">

        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit shop</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleSelect1">Product Category</label>
                        <select class="form-control" name="id_category">
                            <?php foreach ($category as $r) { ?>
                                <option value="<?php echo $r->id ?>"><?php echo $r->title ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                         <label for="exampleSelect1">Product Subcategory</label>
                         <select class="form-control" name="id_subcategory" id="select_subcategory">
                               <?php foreach ($subkategori as $r) { ?>
                                <option value="<?php echo $r->id ?>"><?php echo $r->title ?></option>
                            <?php } ?>
                         </select>       
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Use</label>
                        <select class="form-control" name="use">
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Best Seller</label>
                        <select class="form-control" name="best_seller">
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div> -->
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">New Status</label>
                        <select class="form-control" name="new_status">
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div> -->
                    <div class="form-group">
                        <label for="exampleSelect1">Product Title</label>
                        <input type="text" class="form-control" name="title">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Product Sub Title</label>
                        <input type="text" class="form-control" name="title_sub">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Location</label><br>
                            <select name="location" class="form-control input-select2-clear">
                                <option value="">-Choose Location-</option>
                                <?php
                                    foreach ($districts as $district) {
                                ?>
                                    <option value="<?= $district->name ?>"><?= $district->name ?></option>
                                <?php
                                    }
                                ?>
                            </select>
                    </div>
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Product Price Promo</label>
                        <input type="number" class="form-control" name="price">
                    </div> -->
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Product Price Old</label>
                        <input type="number" class="form-control" name="price_old">
                        * Jika tidak terisi, maka harga promo yang digunakan dan tidak ada harga tercoret
                    </div> -->
                    <!-- <div class="form-group">
                        <label for="exampleSelect1">Star</label>
                        <select class="form-control" name="star">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div> -->
                    <div class="form-group">
                        <label for="exampleSelect1">Thumbnail</label>
                        <br />
                        <img src="" class="img-thumbnail" width="200">
                        <br /><br />
                        <div class="custom-file">
                            <input type="file" class="custom-file-input browse-preview-img" accept="image/*" name="thumbnail" id="customFile">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        <span class="form-text text-muted">
                            <?php echo $this->main->file_info() ?></span>
                    </div>
                        <div class="form-group">
                            <label for="exampleSelect1">Thumbnail Alt</label>
                            <input type="text" class="form-control" name="thumbnail_alt">
                            <span class="form-text text-muted">
                            <?php echo $this->main->help_thumbnail_alt() ?></span>
                    </div>
                    <div class="form-group" style="margin-left: 20px; margin-right: 20px">
                        <label>Product Description</label>
                        <textarea class="tinymce" id="exampleTextarea" rows="3" name="description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Meta title</label>
                        <input type="text" class="form-control" placeholder="Meta Title" name="meta_title">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Meta Description</label>
                        <input type="text" class="form-control" placeholder="Meta description" name="meta_description">
                    </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Meta Keywords</label>
                        <input type="text" class="form-control" placeholder="Meta keywords" name="meta_keywords">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" name="submit" value="Update">
                </div>
            </div>
        </div>
    </div>
</form>


