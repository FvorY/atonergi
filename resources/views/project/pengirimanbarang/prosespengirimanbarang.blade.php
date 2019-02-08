@extends('main')
@section('content')

<!-- partial -->
<div class="content-wrapper">
	<div class="col-lg-12">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb bg-info">
				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="{{url('/home')}}">Home</a></li>
				<li class="breadcrumb-item">After Order</li>
				<li class="breadcrumb-item"><a href="{{url('project/pengirimanbarang/pengirimanbarang')}}">Pengiriman Barang</a></li>
				<li class="breadcrumb-item active" aria-current="page">Process Pengiriman Barang</li>
			</ol>
		</nav>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Process Pengiriman Barang</h4>
									<form id="data">
                	<div class="row">
                		<div class="col-md-6 col-sm-12 col-xs-12">
                			<div class="row">
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Customer</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="" value="{{$data[0]->c_code}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Order By</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" value="{{$data[0]->c_name}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Address</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<textarea class="form-control form-control-sm" readonly="">{{$data[0]->c_address}}</textarea>
		                			</div>
		                		</div>
		                	</div>
	                	</div>
	                	<div class="col-md-6 col-sm-12 col-xs-12">
                			<div class="row">
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Date</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="" value="{{Carbon\Carbon::parse($data[0]->so_date)->format('d-m-Y')}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>S.O.#</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="" value="{{$data[0]->so_nota}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Ship to</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="" value="{{$data[0]->q_ship_to}}">
		                			</div>
		                		</div>
		                	</div>
											<input type="hidden" name="d_so" value="{{$data[0]->so_nota}}">
	                	</div>
									</form>
			              	<div class="col-md-6 col-sm-12 col-xs-12">
			              		<div class="row">
					              	<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Delivery Date</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<div class="input-group">
						                        <input class="form-control datepicker" readonly="" name="d_delivery_date" type="text" style="cursor: pointer;">
						                        <span class="input-group-addon bg-info text-white">
						                            <i class="fa fa-calendar"></i>
						                        </span>
					                        </div>
				            			</div>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Weight</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<input type="text" name="d_weight" class="form-control form-control-sm">
				            			</div>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Shipping Charges</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<input type="text" name="d_shipping_charges" id="d_shipping_charges" class="form-control form-control-sm rp">
				            			</div>
				            		</div>
				            	</div>
				            </div>

                	</div>

                  <div class="table-responsive">
	                  <table class="table data-table table-hover" cellspacing="0">
	                  	<thead class="bg-gradient-info">
	                  		<tr>
	                  			<th>Item</th>
	                  			<th>Qty</th>
	                  			<th>Unit</th>
													<th>Description</th>
													<th>Unit Price</th>
													<th>Line Total</th>
	                  		</tr>
	                  	</thead>
	                  	<tbody>
												@foreach ($barang as $key => $value)
													<tr>
		                  			<td>
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="{{$value->i_code}} - {{$value->i_name}}">
		                  			</td>
		                  			<td>
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="{{$value->qd_qty}}">
		                  			</td>
		                  			<td>
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="{{$value->u_unit}}">
		                  			</td>
		                  			<td>
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="{{$value->qd_description}}">
		                  			</td>
														<td>
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="Rp. {{number_format($value->qd_price,2,',','.')}}">
		                  			</td>
														<td>
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="Rp. {{number_format($value->qd_total,2,',','.')}}">
		                  			</td>
		                  		</tr>
												@endforeach
	                  	</tbody>
	                  </table>
	              </div>

	              <div class="row">
	              	<div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-top: 15px;">
	              		<button class="btn btn-sm btn-info" onclick="proses()" type="button">Process</button>
	              		<a href="{{url('project/pengirimanbarang/pengirimanbarang')}}" class="btn btn-secondary btn-sm">Back</a>
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
	$('.rp').maskMoney({prefix:'Rp. ', thousands:'.', decimal:',', precision:0});

	function proses(){
		var d_shipping_charges = $('#d_shipping_charges').val();
		$.ajax({
			type: 'get',
			data: $('#data').serialize()+'&d_shipping_charges='+d_shipping_charges,
			dataType: 'json',
			url: baseUrl + '/project/pengirimanbarang/proses',
			success : function(result){
				console.log(result);
				iziToast.success({
          icon: 'fa fa-check',
          message: 'Berhasil Diproses!',
        });
        setTimeout(function () {
                      window.location.href = baseUrl + '/project/pengirimanbarang/pengirimanbarang';
                  }, 1000);
			}
		});
	}
</script>
@endsection
