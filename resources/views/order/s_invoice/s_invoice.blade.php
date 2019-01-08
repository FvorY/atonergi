@extends('main')

@section('extra_styles')
<style type="text/css">
	.float-left{
		float: left;
	}
	.float-right{
		float: right;
	}
</style>
@endsection
@section('content')

<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">Order</li>
					<li class="breadcrumb-item active" aria-current="page">Sales Invoice</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Sales Invoice</h4>
		          		<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="alert alert-primary alert-dismissible" title="DP sudah Lunas">
								    <button type="button" class="close" data-dismiss="alert">&times;</button>
								    <strong>Notice!</strong> <br>
								    DP Paid Off
								    <label class="badge badge-pill badge-primary">0</label>
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="alert alert-warning alert-dismissible" title="DP belum Lunas">
								    <button type="button" class="close" data-dismiss="alert">&times;</button>
								    <strong>Notice!</strong> <br>
								    DP not yet paid off
								    <label class="badge badge-pill badge-warning">0</label>
								</div>
							</div>
						</div>

		          	<div class="">
		          		<div class="table-responsive">
		          			<table class="table table-hover table-bordered data-table" cellspacing="0">
		          				<thead class="bg-gradient-info">
		          					<tr>
		          						<th>No</th>
		          						<th>S.I.#/Q.O.#</th>
		          						<th>Customer</th>
		          						<th>Total Bill</th>
		          						<th>DP</th>
		          						<th>Payment</th>
		          						<th>Status</th>
		          						<th>Action</th>
		          					</tr>
		          				</thead>
		          				<tbody>
		          					<tr>
		          						<td>1</td>
		          						<td>SI-001/SWP/SF-PS/112018</td>
		          						<td>Alpha</td>
		          						<td>
		          							<span class="float-left">Rp.</span>
		          							<span class="float-right">40.000.000,00</span>
		          						</td>
		          						<td>
		          							<span class="float-left">Rp.</span>
		          							<span class="float-right">4.000.000,00</span>
		          						</td>
		          						<td>
		          							Tunai
		          						</td>
		          						<td>
		          							<span class="badge badge-success badge-pill">paid off</span>
		          						</td>
		          						<td>
		          							<div class="btn-group btn-group-xs">
		          								<a href="{{url('order/s_invoice/detail_s_invoice')}}" class="btn btn-info">Detail</a>
			          							<a href="{{url('order/s_invoice/print_salesinvoice')}}" target="_blank" class="btn btn-primary" title="Print"><i class="fa fa-print"></i></a>
			          						</div>
		          						</td>
		          					</tr>
		          					<tr>
		          						<td>2</td>
		          						<td>SI-002/SWP/SF-PS/112018</td>
		          						<td>Bravo</td>
		          						<td>
		          							<span class="float-left">Rp.</span>
		          							<span class="float-right">41.000.000,00</span>
		          						</td>
		          						<td>
		          							<span class="float-left">Rp.</span>
		          							<span class="float-right">5.000.000,00</span>
		          						</td>
		          						<td>
		          							Tunai
		          						</td>
		          						<td>
		          							<span class="badge badge-success badge-pill">Paid off</span>
		          							<span class="badge badge-primary badge-pill">Printed</span>
		          						</td>
		          						<td>
		          							<div class="btn-group btn-group-xs">
		          								<a href="{{url('order/s_invoice/detail_s_invoice')}}" class="btn btn-info">Detail</a>
			          							<a href="{{url('order/s_invoice/print_salesinvoice')}}" target="_blank" class="btn btn-primary" title="Print"><i class="fa fa-print"></i></a>
			          						</div>
		          						</td>
		          					</tr>
		          					<tr>
		          						<td>3</td>
		          						<td>SI-003/SWP/SF-PS/112018</td>
		          						<td>Charlie</td>
		          						<td>
		          							<span class="float-left">Rp.</span>
		          							<span class="float-right">41.000.000,00</span>
		          						</td>
		          						<td>
		          							<span class="float-left"></span>
		          							<span class="float-right"></span>
		          						</td>
		          						<td>
		          							Tunai
		          						</td>
		          						<td>
		          							<span class="badge badge-warning badge-pill">Not Yet Paid off</span>
		          						</td>
		          						<td>
		          							<div class="btn-group btn-group-xs">
		          								<a href="{{url('order/s_invoice/detail_s_invoice')}}" class="btn btn-info">Detail</a>
			          							<a href="{{url('order/s_invoice/print_salesinvoice')}}" target="_blank" class="btn btn-primary" title="Print"><i class="fa fa-print"></i></a>
			          						</div>
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
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@endsection