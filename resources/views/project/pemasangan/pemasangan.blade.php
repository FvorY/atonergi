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
														<th>Code WO</th>
		                  			<th>Customer</th>
														<th>Status SO</th>
														<th>Installer</th>
														<th>Code Perdin</th>
														<th>Delivery Rsp</th>
														<th>Status Perdin</th>
		                  			<th>Action</th>
		                  		</tr>
		                  	</thead>
		                  	<tbody>
													@foreach ($data as $key => $value)
														@if ($value->so_status_delivery == 'D')
															<tr>
																<td>{{$key + 1}}</td>
																<td>{{$value->wo_nota}}</td>
																<td>{{$value->c_name}}</td>
																<td><span class="badge badge-pill badge-success">Delivered</span></td>
																<td>{{$value->i_installer}}</td>
																<td></td>
																<td></td>
																<td></td>
																	<td>
																		<div class="btn-group">
																			<a href="{{url('project/pemasangan/prosespemasangan').'/'.$value->wo_id}}" class="btn btn-info btn-sm" title="Buat Perdin"><i class="fa fa-sign-in"></i></a>
																			<button type="button" class="btn btn-warning btn-sm" onclick="detail({{$value->wo_id}})" name="button" title="Detail"> <i class="fa fa-folder"></i> </button>
																			<button type="button" class="btn btn-success btn-sm" onclick="approve({{$value->wo_id}})" name="button" title="Approve"> <i class="fa fa-check"></i> </button>
																		</div>
																	</td>
															</tr>
															@endif
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

</script>
@endsection
