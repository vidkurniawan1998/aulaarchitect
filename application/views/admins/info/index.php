<?php echo $tab_language ?>

<div class="kt-portlet kt-portlet--mobile">
	<div class="kt-portlet__head kt-portlet__head--lg">
		<div class="kt-portlet__head-label">
			<span class="kt-portlet__head-icon">
				<i class="flaticon2-image-file"></i>
			</span>
			<h3 class="kt-portlet__head-title">
				Management Info
			</h3>
		</div>
		<div class="kt-portlet__head-toolbar">
			<div class="kt-portlet__head-wrapper">
				<div class="kt-portlet__head-actions">
					<!-- <a href="#" class="btn btn-brand btn-elevate btn-icon-sm" data-toggle="modal"
					   data-target="#modal-create">
						<i class="la la-plus"></i>
						Add Info
					</a> -->
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
				<th>Title</th>
				<th>Description</th>
				<th class="d-none"></th>
			</tr>
			</thead>
			<?php $no = 1 ?>
			<tbody>
			<?php foreach ($info as $datas) : ?>
				<tr>
					<td><?php echo $no ?></td>
					<td><?php echo $datas->title ?></td>
					<td><?php echo $datas->description ?></td>
					<td>
						<a href="#"
						   class="btn btn-success btn-elevate btn-elevate-air btn-edit" data-tinymce="true">Edit</a>
                            <!-- <a href="#"
                            data-action="<?php echo base_url() ?>proweb/info/delete/<?php echo $datas->id ?>"
                            class="btn btn-danger btn-elevate btn-elevate-air btn-delete">Delete</a> -->
					</td>
					<td class="d-none data-row">
						<textarea><?php echo json_encode($datas) ?></textarea>
					</td>
				</tr>
				<?php $no++ ?>
			<?php endforeach; ?>
			</tbody>
		</table>
		<!--end: Datatable -->
	</div>
</div>
<!--begin::Modal-->

<form method="post" action="<?php echo base_url() . 'proweb/info/createprocess'; ?>" enctype="multipart/form-data"
	  class="form-send">

	<input type="hidden" name="id_language" value="<?php echo $id_language ?>">

	<div class="modal" id="modal-create" role="dialog" aria-labelledby="exampleModalLabel"
		 aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Info</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					</button>
				</div>
				<div class="modal-body">
					<!-- <div class="form-group">
						<label for="exampleSelect1">Title</label>
						<input type="text" class="form-control" placeholder="Title" name="title">
					</div> -->
					<div class="form-group" style="margin-left: 20px; margin-right: 20px">
						<label>Description</label>
						<textarea class="tinymce" id="exampleTextarea" rows="3" name="description"></textarea>
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

<form method="post" action="<?php echo base_url() . 'proweb/info/update'; ?>" enctype="multipart/form-data"
	  class="form-send">

	<div class="modal" id="modal-edit" role="dialog" aria-labelledby="exampleModalLabel"
		 aria-hidden="true">

		<input type="hidden" name="id">

		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Edit Info</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					</button>
				</div>
				<div class="modal-body">
					<!-- <div class="form-group">
						<label for="exampleSelect1">Title</label>
						<input type="text" class="form-control" placeholder="Title" name="title">
					</div> -->
					<div class="form-group" style="margin-left: 20px; margin-right: 20px">
						<label>Description</label>
						<textarea class="tinymce" id="exampleTextarea" rows="3" name="description"></textarea>
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


