<?php echo $tab_language ?>

<div class="kt-portlet kt-portlet--mobile">
	<div class="kt-portlet__head kt-portlet__head--lg">
		<div class="kt-portlet__head-label">
			<span class="kt-portlet__head-icon">
				<i class="flaticon2-image-file"></i>
			</span>
			<h3 class="kt-portlet__head-title">
				Management Subcategory
			</h3>
		</div>
		<div class="kt-portlet__head-toolbar">
			<div class="kt-portlet__head-wrapper">
				<div class="kt-portlet__head-actions">
					<a href="#" class="btn btn-brand btn-elevate btn-icon-sm" data-toggle="modal"
					   data-target="#modal-create">
						<i class="la la-plus"></i>
						Add Sub Category
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
				<th width="20">No</th>
				<th>Categori</th>
				<th>Subcategory</th>
				<!-- <th>Action</th> -->
			</tr>
			</thead>
			<?php $no = 1 ?>
			<tbody>
			<?php foreach ($listsubcategory as $datas) : ?>
				<tr>
					<td><?php echo $no ?></td>
                    <td><?php echo $datas['title']?></td>
                    <td><?php echo $datas['parent_name']?></td>
					<!-- <td>
						<a href="#" class="btn btn-success btn-elevate btn-elevate-air btn-edit">Edit</a>
						<a href="" class="btn btn-danger btn-elevate btn-elevate-air btn-delete">Delete</a>
					</td> -->
				</tr>
				<?php $no++ ?>
			<?php endforeach; ?>
			</tbody>
		</table>
		<!--end: Datatable -->
	</div>
</div>
<!--begin::Modal-->

<!-- <form method="post" action="<//?php echo base_url() . 'proweb/sub_category/createprocess'; ?>" enctype="multipart/form-data"
	  class="form-send">

	<input type="hidden" name="id_language" value="<//?php echo $id_language ?>">

	<div class="modal" id="modal-create" role="dialog" aria-labelledby="exampleModalLabel"
		 aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Subcategory</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="exampleSelect1">Category</label>
						<select name="id_category" id="selectcategory"></select>
						
					</div>
					<div class="form-group">
						<label for="exampleSelect1">Use</label>
						<select class="form-control" name="use">
							<option value="yes">Yes</option>
							<option value="no">No</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleSelect1">View Top Menu</label>
						<select class="form-control" name="view_top_menu">
							<option value="yes">Yes</option>
							<option value="no">No</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleSelect1">Thumbnail</label>
						<br />
						<img src="" class="img-thumbnail" width="200">
						<br /><br />
						<div class="custom-file">
							<input type="file" class="custom-file-input browse-preview-img" accept="image/*" name="thumbnail" id="customFile">
							<label class="custom-file-label" for="customFile">Choose file</label>
						</div>
						<span class="form-text text-muted"><//?php echo $this->main->file_info() ?></span>
					</div>
					<div class="form-group">
						<label>Thumbnail Alt</label>
						<textarea class="form-control"  id="exampleTextarea" rows="3" name="thumbnail_alt"></textarea>
						<span class="form-text text-muted"><//?php echo $this->main->help_thumbnail_alt() ?></span>
					</div>
					<div class="form-group" style="margin-left: 20px; margin-right: 20px">
						<label>Description</label>
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
</form> -->
