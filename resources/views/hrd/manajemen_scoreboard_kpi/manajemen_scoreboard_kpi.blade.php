@extends('main')
@section('content')

@include('hrd/manajemen_scoreboard_kpi/modal_detailscore')
@include('hrd/manajemen_scoreboard_kpi/modal_konfirm_pki')
@include('hrd/manajemen_scoreboard_kpi/modal_detail_pki')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Manajemen Scoreboard & KPI</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12">

			<ul class="nav nav-tabs tab-solid  tab-solid-primary" role="tablist">
	            <li class="nav-item">
	              <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#konfirmas_kpi_tab" role="tab" aria-controls="konfirmas_kpi_tab" aria-selected="true"><i class="mdi mdi-home-outline"></i>Konfirmasi KPI</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" id="tab-6-2" data-toggle="tab" href="#scoreboard_tab" role="tab" aria-controls="scoreboard_tab" aria-selected="false"><i class="mdi mdi-account-outline"></i>Data Scoreboard</a>
	            </li>
	        </ul>

	    </div>
		<div class="col-lg-12 grid-margin stretch-card">

	      	<div class="card">
	      		<div class="tab-content tab-content-solid">

	      			<div class="tab-pane fade active show" id="konfirmas_kpi_tab" role="tabpanel">

				        <div class="card-body">
				          <h4 class="card-title">Konfirmasi KPI</h4>
				          	<div class="row">
				          		<div class="col-md-2 col-sm-3 col-xs-12">
				                	<label>Periode</label>
				                </div>
			                	<div class="col-md-7 col-sm-9 col-xs-12">

				                	
			                		<div class="form-group">
			                			<div class="input-group input-daterange">
			                				<input type="text" class="form-control form-control-sm" name="">
			                				<span class="input-group-addon bg-secondary">-</span>
			                				<input type="text" class="form-control form-control-sm" name="">
			                				<div class="input-group-btn">
												<button class="btn btn-sm btn-info"><i class="fa fa-search"></i></button>
												<button class="btn btn-sm btn-secondary"><i class="fa fa-refresh"></i></button>
											</div>
			                			</div>
			                		</div>
									
								</div>
								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="form-group">
										<select class="form-control form-control-sm">
											<option value="semua">Semua</option>	
											<option value="belum">Belum dikonfirm</option>	
											<option value="sudah">Sudah dikonfirm</option>	
										</select>
									</div>
								</div>
			                </div>		          
				          	<div class="row">

								<div class="table-responsive">
									<table class="table table-hover data-table" cellspacing="0">
									  <thead class="bg-gradient-info">
									    <tr>
									      <th>No</th>
									      <th>Date</th>
									      <th>Code</th>
									      <th>Employee</th>
									      <th>Status</th>
									      <th>Date Confirm</th>
									      <th>Total Score</th>
									      <th>Action</th>
									    </tr>
									  </thead>
									  <tbody>
									    <tr>
									    	<td>1</td>
									    	<td>20 Dec 2018</td>
									    	<td>PKI-2018-001</td>
									    	<td>Alpha</td>
									    	<td style="color: blue;">Sudah Dikonfirmasi</td>
									    	<td>21 Dec 2019</td>
									    	<td>18.00</td>
									    	<td>
									    		<div class="btn-group btn-group-sm">
									    			<button class="btn btn-success" data-toggle="modal" data-target="#detail_kpi" title="Detail" type="button"><i class="fa fa-info"></i></button>
									    			<button class="btn btn-primary disabled" title="Confirm" data-toggle="modal" data-target="#konfirm_kpi" type="button" disabled=""><i class="fa fa-edit"></i></button>
									    			<button class="btn btn-danger" title="Batalkan Konfirmasi" type="button"><i class="fa fa-times"></i></button>
									    		</div>
									    	</td>
									    </tr>
									    <tr>
									    	<td>2</td>
									    	<td>18 Dec 2018</td>
									    	<td>PKI-2018-002</td>
									    	<td>Bravo</td>
									    	<td style="color: red;">Belum Dikonfirmasi</td>
									    	<td></td>
									    	<td>0.00</td>
									    	<td>
									    		<div class="btn-group btn-group-sm">
									    			<button class="btn btn-success" data-toggle="modal" data-target="#detail_kpi" title="Detail" type="button"><i class="fa fa-info"></i></button>
									    			<button class="btn btn-primary" title="Confirm" data-toggle="modal" data-target="#konfirm_kpi" type="button"><i class="fa fa-edit"></i></button>
									    			<button class="btn btn-danger disabled" title="Batalkan Konfirmasi" type="button" disabled=""><i class="fa fa-times"></i></button>
									    		</div>
									    	</td>
									    </tr>
									  </tbody>
									</table>
								</div>
								
				        	</div>

				      	</div>

				    </div>

				    <div class="tab-pane fade" id="scoreboard_tab" role="tabpanel">
				    	<div class="card-body">
				          <h4 class="card-title">Data Scoreboard</h4>
				          	<div class="row">
				          		<div class="col-md-2 col-sm-3 col-xs-12">
				                	<label>Periode</label>
				                </div>
			                	<div class="col-md-7 col-sm-9 col-xs-12">

				                	
				                		<div class="form-group">
				                			<div class="input-group input-daterange">
				                				<input type="text" class="form-control form-control-sm" name="">
				                				<span class="input-group-addon bg-secondary">-</span>
				                				<input type="text" class="form-control form-control-sm" name="">
				                				<div class="input-group-btn">
													<button class="btn btn-sm btn-info"><i class="fa fa-search"></i></button>
													<button class="btn btn-sm btn-secondary"><i class="fa fa-refresh"></i></button>
												</div>
				                			</div>
				                		</div>
									
								</div>
								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="form-group">
										<select class="form-control form-control-sm">
											<option value="semua">Semua</option>	
											<option value="belum">Belum dikonfirm</option>	
											<option value="sudah">Sudah dikonfirm</option>	
										</select>
									</div>
								</div>
			                </div>		          
				          	<div class="row">

								<div class="table-responsive">
									<table class="table table-hover data-table" cellspacing="0">
									  <thead class="bg-gradient-info">
									    <tr>
									      <th>No</th>
									      <th>Date</th>
									      <th>Code</th>
									      <th>Employee</th>
									      <th>Status</th>
									      <th>Date Confirm</th>
									      <th>Action</th>
									    </tr>
									  </thead>
									  <tbody>
									    <tr>
									    	<td>1</td>
									    	<td>20 Dec 2018</td>
									    	<td>PKI-2018-001</td>
									    	<td>Alpha</td>
									    	<td style="color: blue;">Sudah Dikonfirmasi</td>
									    	<td>21 Dec 2019</td>
									    	<td>
								    			<button data-toggle="modal" data-target="#detail_scoreboard" class="btn btn-success" title="Detail" type="button"><i class="fa fa-info-circle"></i></button>
									    	</td>
									    </tr>
									  </tbody>
									</table>
								</div>
								
				        	</div>

				      	</div>
				    </div>
		      	</div>
	    	</div>
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@endsection