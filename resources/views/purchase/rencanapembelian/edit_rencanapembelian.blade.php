@extends('main')
@section('content')


<!-- partial -->
<div class="content-wrapper">
	<div class="col-lg-12">	
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb bg-info">
				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item">Purchase</li>
				<li class="breadcrumb-item"><a href="{{url('purchase/rencanapembelian/rencanapembelian')}}">Request Order</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit Request Order</li>

			</ol>
		</nav>
	</div>

	<div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
	                <h4 class="card-title">Edit Request Order</h4>
                  
                  <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                      <label>Request Order Code</label>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-sm" name="">
                      </div>
                    </div>
                    <div class="col-md-6 col-sm-0 col-xs-0">
                      <!-- empty -->
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                      <label>Date Request Order</label>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-sm datepicker" name="">
                      </div>
                    </div>
                    <div class="col-md-6 col-sm-0 col-xs-0">
                      <!-- empty -->
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                      <label>Vendor</label>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                      <div class="form-group">
                        <select class="form-control form-control-sm">
                          <option>--Select--</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-6 col-sm-0 col-xs-0">
                      <!-- empty -->
                    </div>
                  </div> 
                  <div class="row" style="margin-top: 15px;border-top: 1px solid #98c3d1;padding-top:15px;border-bottom: 1px solid #98c3d1; margin-bottom: 15px;">
                    <div class="col-md-2 col-sm-12 col-xs-12">
                      <label>Item</label>
                    </div>
                    <div class="col-md-2 col-sm-12 col-xs-12">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-sm" name="" readonly="" id="rp_kodeitem">
                      </div>
                    </div>
                    <div class="col-md-2 col-sm-12 col-xs-12">
                      <div class="form-group">
                        <input type="text" class="form-control form-control-sm" name="" id="rp_item">
                      </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                      <label>Qty</label>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                      <div class="form-group">
                        <input type="number" class="form-control form-control-sm" name="" id="rp_qty">
                      </div>
                    </div>
                  </div>

                  <div class="table-responsive">
                    <table class="table data-table table-hover" cellspacing="0" id="t72a">
                      <thead class="bg-gradient-info">
                        <tr>
                          <th>Item Code</th>
                          <th>Item Name</th>
                          <th width="1%">Qty</th>
                          <th width="1%">Stock Warehouse</th>
                          <th width="1%">Action</th>
                        </tr>
                      </thead>
                    </table>
                  </div>
                    <div align="right" style="margin-top: 15px;">
                      <button class="btn btn-info btn-sm" type="button">Save Data</button>
                      <a class="btn btn-secondary btn-sm" href="{{url('purchase/rencanapembelian/rencanapembelian')}}">Back</a>
                    </div>
                </div>
            </div>
    </div>
</div>
<!-- content-wrapper ends -->
@endsection
