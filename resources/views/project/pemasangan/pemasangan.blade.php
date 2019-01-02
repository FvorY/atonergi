@extends('main')
@section('content')

@include('project/pemasangan/editpemasangan')

<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">After Order</li>
					<li class="breadcrumb-item active" aria-current="page">Pemasangan</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	              <div class="card">
	                <div class="card-body">
	                  <h4 class="card-title">Pemasangan</h4>
										<div class="row">
											<div class="col-md-4 col-sm-12 col-xs-12">
			    							<div class="alert alert-success alert-dismissible" title="Delivered">
			    							    <button type="button" class="close" data-dismiss="alert">&times;</button>
			    							    <strong>Notice!</strong> <br>
			    							    Delivered
			    							    <label class="badge badge-pill badge-success">{{$countd}}</label>
			    							</div>
			    						</div>
											<div class="col-md-4 col-sm-12 col-xs-12">
			    							<div class="alert alert-primary alert-dismissible" title="Process Delivery">
			    							    <button type="button" class="close" data-dismiss="alert">&times;</button>
			    							    <strong>Notice!</strong> <br>
			    							    Process Delivery
			    							    <label class="badge badge-pill badge-primary">{{$countpd}}</label>
			    							</div>
			    						</div>
			    						<div class="col-md-4 col-sm-12 col-xs-12">
			    							<div class="alert alert-warning alert-dismissible" title="Sedang Process">
			    							    <button type="button" class="close" data-dismiss="alert">&times;</button>
			    							    <strong>Notice!</strong> <br>
			    							    Sedang Process
			    							    <label class="badge badge-pill badge-warning">{{$countp}}</label>
			    							</div>
			    						</div>
										</div>
	                  <div class="table-responsive">
		                  <table class="table data-table table-hover" cellspacing="0">
		                  	<thead class="bg-gradient-info">
		                  		<tr>
		                  			<th>No</th>
														<th>ID WO</th>
		                  			<th>Customer</th>
														<th>Tanggal WO</th>
		                  			<th>Status</th>
														<th>Delivery Date</th>
														<th>Installer</th>
		                  			<th>Action</th>
		                  		</tr>
		                  	</thead>
		                  	<tbody>
													@foreach ($data as $key => $value)
														<tr>
			                  			<td>{{$key + 1}}</td>
			                  			<td>{{$value->wo_nota}}</td>
			                  			<td>{{$value->c_name}}</td>
			                  			<td>{{Carbon\Carbon::parse($value->wo_date)->format('d-m-Y')}}</td>
															@if ($value->wo_status_install == 'P')
																<td><span class="badge badge-pill badge-warning">Sedang Process</span></td>
															@elseif ($value->wo_status_install == 'PD')
																<td><span class="badge badge-pill badge-primary">Process Delivery</span></td>
															@elseif ($value->wo_status_install == 'D')
																<td><span class="badge badge-pill badge-success">Delivered</span></td>
															@endif
			                  			<td>{{Carbon\Carbon::parse($value->q_delivery)->format('d-m-Y')}}</td>
															<td>{{$value->i_installer}}</td>
															@if ($value->wo_status_install == 'P')
																<td>
				                  				<div class="btn-group">
				                  					<a href="{{url('project/pemasangan/prosespemasangan').'/'.$value->wo_id}}" class="btn btn-info btn-sm" title="Process"><i class="fa fa-sign-in-alt"></i></a>
				                  					<button class="btn btn-danger btn-sm" type="button" onclick="hapus({{$value->wo_id}})" title="Delete"><i class="fa fa-trash"></i></button>
				                  				</div>
				                  			</td>
															@elseif ($value->wo_status_install == 'PD')
																<td>
				                  				<div class="btn-group">
																		<button type="button" class="btn btn-info btn-sm" onclick="ubah({{$value->wo_id}})" name="button" title="Edit"> <i class="fa fa-edit"></i> </button>
				                  					<button data-target="#edit" data-toggle="modal" data class="btn btn-warning btn-sm" onclick="edit({{$value->wo_id}})" title="Setting"><i class="fa fa-cog"></i></button>
				                  					<button class="btn btn-danger btn-sm" type="button" onclick="hapus({{$value->wo_id}})" title="Delete"><i class="fa fa-trash"></i></button>
				                  				</div>
				                  			</td>
															@elseif ($value->wo_status_install == 'D')
																<td>
				                  				<div class="btn-group">
				                  					<button class="btn btn-danger btn-sm" disabled="" type="button" onclick="hapus({{$value->wo_id}})" title="Delete"><i class="fa fa-trash"></i></button>
				                  				</div>
				                  			</td>
															@endif
			                  		</tr>
													@endforeach
		                  	</tbody>
		                  </table>
		              </div>
	                </div>
	              </div>
	    </div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script type="text/javascript">
function hapus(id){
	iziToast.show({
	timeout: false,
	theme: 'dark',
	icon: 'fa fa-question',
	title: 'Hapus?',
	message: 'Anda yakin ingin menhapus data?',
	position: 'center', // bottomRight, bottomLeft, topRight, topLeft, topCenter, bottomCenter
	progressBarColor: '#57c7d4',
	buttons: [
			['<button>Ya</button>', function (instance, toast) {
				waitingDialog.show()
				$.ajax({
					type: 'get',
					data: {id:id},
					dataType: 'json',
					url: baseUrl + '/project/pemasangan/hapus',
					success : function(result){
						if (result.status == 'berhasil') {
							iziToast.success({
								icon: 'fa fa-check',
								message: 'Berhasil Dihapus!',
							});
							setTimeout(function () {
														window.location.reload();
												}, 1000);
						} else if (result.status == 'gagal') {
							iziToast.warning({
								icon: 'fa fa-times',
								message: 'Gagal Dihapus!',
							});
							setTimeout(function () {
														window.location.reload();
												}, 1000);
						}
					}
				});
			}, true], // true to focus
			['<button>Tidak</button>', function (instance, toast) {
					instance.hide();
			}]
	],
});
}

	function edit(id){
		waitingDialog.show();
			$.ajax({
				type: 'get',
				data: {id:id},
				dataType: 'json',
				url: baseUrl + '/project/pemasangan/edit',
				success : function(result){
						$('#i_wo').val(result[0].i_wo);
						setTimeout(function(){
								waitingDialog.hide();
						}, 1000)
				}
			});
	}

	function setting(){
		$.ajax({
			type: 'get',
			data: $('#editdata').serialize(),
			dataType: 'json',
			url: baseUrl + '/project/pemasangan/setting',
			success : function(result){
				if (result.status == 'berhasil') {
					iziToast.success({
						icon: 'fa fa-check',
						message: 'Berhasil Diproses!',
					});
					setTimeout(function () {
												window.location.reload();
										}, 1000);
				} else if (result.status == 'kesalahan') {
					ziToast.warning({
						icon: 'fa fa-times',
						message: 'Mohon isi semua data dengan lengkap!',
					});
					setTimeout(function () {
												window.location.reload();
										}, 1000);
				} else if (result.status == 'gagal') {
					iziToast.warning({
						icon: 'fa fa-times',
						message: 'Gagal Dihapus!',
					});
					setTimeout(function () {
												window.location.reload();
										}, 1000);
				}
			}
		});
	}

	function ubah(id){
		window.location.href = baseUrl + '/project/pemasangan/ubah?id='+id;
	}
</script>
@endsection
