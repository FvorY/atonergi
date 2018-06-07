@extends('main')
@section('content')

@include('order/proforma/tambah')

@include('master/customer/tambah')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">Order</li>
					<li class="breadcrumb-item active" aria-current="page">Proforma Invoice</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Proforma Invoice</h4>
		          	<div class="row">
		          		
						<div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
							<button class="btn btn-info" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Create Invoice</button>
						</div>
						<div class="table-responsive">
							<table class="table table-hover data-table" cellspacing="0">
							  <thead class="bg-gradient-info">
							    <tr>
							      <th>No</th>
							      <th>P.I.#</th>
							      <th>Vendor Item</th>
							      <th>Total</th>
							      <th>Status</th>
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