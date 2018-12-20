@extends('main')
@section('content')

@include('hrd/manajemen_scoreboard/tambah_manajemen_scoreboard')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Manajemen Scoreboard</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Manajemen Scoreboard</h4>
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
							    
							  </tbody>
							</table>
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