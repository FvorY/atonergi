@extends('main')
@section('content')

<!-- partial -->
<div class="content-wrapper">
	<div class="col-lg-12">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb bg-info">
				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="{{url('/home')}}">Home</a></li>
				<li class="breadcrumb-item">Pemasangan</li>
				<li class="breadcrumb-item"><a href="{{url('project/pemasangan/pemasangan')}}">Pengiriman Barang</a></li>
				<li class="breadcrumb-item active" aria-current="page">Buat Perdin</li>
			</ol>
		</nav>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Buat Perdin</h4>
									<form id="data">
                	<div class="row">
                		<div class="col-md-6 col-sm-12 col-xs-12">
                			<div class="row">
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Customer</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="customer" value="{{$data[0]->c_code}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Address</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<textarea class="form-control form-control-sm" readonly="" name="address">{{$data[0]->c_address}}</textarea>
		                			</div>
		                		</div>
		                	</div>
	                	</div>
	                	<div class="col-md-6 col-sm-12 col-xs-12">
                			<div class="row">
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>W.O.#</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="codewo" value="{{$data[0]->wo_nota}}">
		                			</div>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<label>Code Perdin</label>
		                		</div>
		                		<div class="col-md-6 col-sm-6 col-xs-12">
		                			<div class="form-group">
		                				<input type="text" readonly="" class="form-control form-control-sm" name="codeperdin">
		                			</div>
		                		</div>
		                	</div>
											<input type="hidden" name="d_wo" value="{{$data[0]->wo_nota}}">
	                	</div>
									</form>
			              	<div class="col-md-6 col-sm-12 col-xs-12">
			              		<div class="row">
					              	<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Tanggal Pengajuan</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<div class="input-group">
						                        <input class="form-control datepicker" name="pengajuandate" type="text" style="cursor: pointer;">
						                        <span class="input-group-addon bg-info text-white">
						                            <i class="fa fa-calendar"></i>
						                        </span>
					                        </div>
				            			</div>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Nama Pelaksana</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<select class="form-control" name="pelaksana">
				            					<option> - Pilih Pelaksana - </option>
															@foreach ($pelaksana as $key => $value)
																<option value="{{$value->mp_id}}">{{$value->mp_kode}} - {{$value->mp_name}}</option>
															@endforeach
				            				</select>
				            			</div>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Proyek</label>
				            		</div>
				            		<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<textarea class="form-control form-control-sm" name="proyek"></textarea>
				            			</div>
				            		</div>

												<div class="col-md-6 col-sm-6 col-xs-12">
				            			<label>Tanggal Pertanggung Jawaban</label>
				            		</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
				            			<div class="form-group">
				            				<div class="input-group">
						                        <input class="form-control datepicker" disabled name="tanggalpertanggungjawab" type="text" style="cursor: pointer;">
						                        <span class="input-group-addon bg-info text-white">
						                            <i class="fa fa-calendar"></i>
						                        </span>
					                        </div>
				            			</div>
				            		</div>
				            	</div>
				            </div>

                	</div>

										<div class="col-md-12">
											<div class="row">
											<div class="col-md-3 col-sm-6 col-xs-12">
												<label>Lama Dinas</label>
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 alamraya-no-padding">
												<div id="datepicker-popup" class="input-group date datepicker">
																			<input type="text" class="form-control" id="ksdatepicker01" placeholder="dd-mm-yyyy">
																			<div class="input-group-addon">
																				<span class="mdi mdi-calendar"></span>
																			</div>
																	</div>
											</div>
											<span class="alamraya-span-addon">
												-
											</span>
											<div class="col-lg-4 col-md-4 col-sm-12 alamraya-no-padding">
												<div id="datepicker-popup" class="input-group date datepicker">
																			<input type="text" class="form-control" id="ksdatepicker02" placeholder="dd-mm-yyyy">
																			<div class="input-group-addon">
																				<span class="mdi mdi-calendar"></span>
																			</div>
																	</div>
											</div>
										</div>
									</div>

									<div class="row" style="margin-top: 15px;border-top: 1px solid #98c3d1;padding-top:15px;border-bottom: 1px solid #98c3d1; margin-bottom: 15px;">
										<div class="col-md-3 col-sm-12 col-xs-12">
											<label>Keterangan</label>
										</div>
										<div class="col-md-2 col-sm-12 col-xs-12">
											<div class="form-group">
												<input type="text" class="form-control form-control-sm right" name="keterangan" id="keterangan" >
											</div>
										</div>
									 <div class="col-md-3 col-sm-12 col-xs-12">
										 <label>Jumlah</label>
									 </div>
									 <div class="col-md-2 col-sm-12 col-xs-12">
										 <div class="form-group">
											 <input type="text" class="form-control form-control-sm right hanya_angka" name="jumlah" id="jumlah">
										 </div>
									 </div>
								 </div>

                  <div class="table-responsive">
	                  <table class="table data-table table-hover" cellspacing="0">
	                  	<thead class="bg-gradient-info">
	                  		<tr>
	                  			<th>Keterangan</th>
	                  			<th>Jumlah</th>
	                  		</tr>
	                  	</thead>
	                  	<tbody>

	                  	</tbody>
	                  </table>
	              </div>

	              <div class="row">
	              	<div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-top: 15px;">
	              		<button class="btn btn-sm btn-info" onclick="simpan()" type="button">Simpan</button>
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
</script>
@endsection
