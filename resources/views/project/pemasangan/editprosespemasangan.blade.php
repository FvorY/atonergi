@extends('main')
@section('content')

<!-- partial -->
<div class="content-wrapper">
	<div class="col-lg-12">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb bg-info">
				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="{{url('/home')}}">Home</a></li>
				<li class="breadcrumb-item">After Order</li>
				<li class="breadcrumb-item"><a href="{{url('project/pemasangan/pemasangan')}}">Pemasangan</a></li>
				<li class="breadcrumb-item active" aria-current="page">Process Edit Pemasangan</li>
			</ol>
		</nav>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Process Edit Pemasangan</h4>
									<form id="data">
									<input type="text" name="i_io" value="{{$install[0]->i_io}}">
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
		                				<input type="text" readonly="" class="form-control form-control-sm" name="" value="{{Carbon\Carbon::parse($data[0]->wo_date)->format('d-m-Y')}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>W.O.#</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="" value="{{$data[0]->wo_nota}}">
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
											<input type="hidden" name="d_wo" value="{{$data[0]->wo_nota}}">
	                	</div>
									</form>
			              	<div class="col-md-6 col-sm-12 col-xs-12">
			              		<div class="row">
					              	<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Instalation Date</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<div class="input-group">
						                        <input class="form-control datepicker" readonly="" name="i_instalation_date" type="text" style="cursor: pointer;" value="{{Carbon\Carbon::parse($install[0]->i_instalation_date)->format('d-m-Y')}}">
						                        <span class="input-group-addon bg-info text-white">
						                            <i class="fa fa-calendar"></i>
						                        </span>
					                        </div>
				            			</div>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Location</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<input type="text" name="i_location" class="form-control form-control-sm" value="{{$install[0]->i_location}}">
				            			</div>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Installer</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<input type="text" name="i_installer" id="i_installer" class="form-control form-control-sm" value="{{$install[0]->i_installer}}">
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
		                  				<input type="text" class="form-control form-control-sm" readonly="" name="" value="{{$value->qd_item}}">
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
	              		<button class="btn btn-sm btn-info" onclick="perbarui()" type="button">Process</button>
	              		<a href="{{url('project/pemasangan/pemasangan')}}" class="btn btn-secondary btn-sm">Back</a>
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

	function perbarui(){
		var i_installer = $('#i_installer').val();
		$.ajax({
			type: 'get',
			data: $('#data').serialize()+'&i_installer='+i_installer,
			dataType: 'json',
			url: baseUrl + '/project/pemasangan/perbarui',
			success : function(result){
				iziToast.success({
          icon: 'fa fa-check',
          message: 'Berhasil Diproses!',
        });
        setTimeout(function () {
                      window.location.href = baseUrl + '/project/pemasangan/pemasangan';
                  }, 1000);
			}
		});
	}
</script>
@endsection
