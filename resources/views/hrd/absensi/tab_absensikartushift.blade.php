<div class="tab-pane fade show active" id="abskartushift" role="tabpanel" aria-labelledby="tab-6-2">
	<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
      	<div class="card">
	        <div class="card-body">
	          <h4 class="card-title">Absensi Kartu Shift</h4>
						@if(Session::has('sukses'))
								<div class="alert alert-fill-primary" role="alert">
									<i class="mdi mdi-alert-circle"></i>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
																aria-hidden="true">&times;</span></button>
										<strong>{{ Session::get('sukses') }}</strong>
								</div>
						@elseif(Session::has('gagal'))
							<div class="alert alert-fill-danger" role="alert">
								<i class="mdi mdi-alert-circle"></i>
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
															aria-hidden="true">&times;</span></button>
									<strong>{{ Session::get('gagal') }}</strong>
							</div>
						@endif
						<a href="javascript:void(0);" onclick="javascipt:window.open('{{url('/public/assets/berkas/kartushift/kartushift.xlsx')}}');"><button class="btn btn-success">Download Contoh Excel</button></a>
						<br>
						<br>
						<form action="{{url('/hrd/absensi/kartushift')}}" class="form-horizontal" method="POST" enctype="multipart/form-data">
							{{ csrf_field() }}
	          	<div class="row ">
	          		<div class="col-md-12 ">
		          		<label class="col-lg-12 col-form-label alamraya-no-padding">Upload File Absensi (Maks. 5mb)</label>
		          		<input type="file" class="dropify" name="kartushift" data-height="100" data-max-file-size="5000kb"/>
		          	</div>
                </div>
                <div class="row mt-3 mb-3">
									@if (App\mMember::akses('ABSENSI', 'tambah'))
	          		<div class="col-lg-12 text-right">
		          		<button type="submit" id="simpanshift" class="btn btn-info">Simpan Data</button>
		          	</div>
									@endif
	          	</div>
							</form>
                <div class="row form-group">
                	<div class="col-lg-8 col-md-12 col-sm-12">
	                	<label class="col-lg-12 col-form-label alamraya-no-padding">Tanggal</label>

	                	<div class="col-lg-12 col-md-12 col-sm-12">
	                		<div class="row">
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
								<div class="col-lg-3 col-md-3 col-sm-12">
									<span class="btn-group mt-1">
										<button type="button" class="btn btn-primary btn-sm icon-btn" onclick="kssearch()">
			                              <i class="fa fa-search"></i>
			                            </button>
			                             <button type="button" class="btn btn-info btn-sm icon-btn" onclick="ksrefresh()" >
			                              <i class="fa fa-refresh"></i>
			                            </button>
			                        </span>
								</div>
							</div>
						</div>
					</div>
                </div>
	          	<div class="row ">
					<!-- <div class="col-md-12 col-sm-12 col-xs-12 alamraya-btn-add" align="right"> -->
						<!-- <button class="btn btn-info" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button> -->
					<!-- </div> -->
					<div class="table-responsive">
						<table class="table table-hover table-striped data-table" cellspacing="0" id="tablekartushift">
						  <thead class="bg-gradient-info">
						    <tr>
								<th>PIN</th>
								<th>NIP</th>
								<th>Nama</th>
								<th>Jabatan</th>
								<th>Departemen</th>
								<th>Kantor</th>
								<th>Tanggal</th>
								<th>Kehadiran</th>
								<th>In</th>
								<th>Out</th>
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
