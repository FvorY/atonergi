<div class="tab-pane fade" id="abstahun" role="tabpanel" aria-labelledby="tab-6-4">
	<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
      	<div class="card">
	        <div class="card-body">
	          <h4 class="card-title">Absensi Rincian Tahunan</h4>


						<form action="{{url('/hrd/absensi/tahun')}}" class="form-horizontal" method="POST" enctype="multipart/form-data">
							{{ csrf_field() }}
	          	<div class="row ">
	          		<div class="col-md-12 ">
		          		<label class="col-lg-12 col-form-label alamraya-no-padding">Upload File Absensi (Maks. 5mb)</label>
		          		<input type="file" class="dropify" data-height="100" data-max-file-size="5000kb"/>
		          	</div>
                </div>
                <div class="row mt-3 mb-3">
	          		<div class="col-lg-12 text-right">
		          		<button type="submit" id="simpantahun" class="btn btn-info">Simpan Data</button>
		          	</div>
	          	</div>
						</form>
                <div class="row form-group">
                	<div class="col-lg-8 col-md-12 col-sm-12">
	                	<label class="col-lg-12 col-form-label alamraya-no-padding">Tanggal</label>

	                	<div class="col-lg-12 col-md-12 col-sm-12">
	                		<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-12 alamraya-no-padding">
									<div id="datepicker-popup" class="input-group date datepicker">
				                        <input type="text" class="form-control" placeholder="dd-mm-yyyy">
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
				                        <input type="text" class="form-control" placeholder="dd-mm-yyyy">
				                        <div class="input-group-addon">
				                          <span class="mdi mdi-calendar"></span>
				                        </div>
				                    </div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-12 alamraya-no-padding alamraya-opt-btn">
									<span class="btn-group mt-1">
										<button type="button" class="btn btn-primary btn-sm icon-btn">
			                              <i class="fa fa-search"></i>
			                            </button>
			                             <button type="button" class="btn btn-info btn-sm icon-btn" >
			                              <i class="fa fa-refresh"></i>
			                            </button>
			                        </span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12 ">
	                	<label class="col-lg-12 col-form-label alamraya-label-padding">Divisi</label>

	                	<div class="col-lg-12 col-md-12 col-sm-12 alamraya-no-padding">
							<div class="form-group">
								<select class="form-control form-control-sm" id="filter">
									<option>--Select--</option>
									<option value="hrd">HRD dan General Affair</option>
									<option value="keu">Keuangan dan Akuntansi</option>
									<option value="snm">Sales dan Marketing</option>
									<option value="prd">Produksi</option>
									<option value="gnp">Gudang dan Pengiriman</option>
									<option value="opr">Operator</option>
									<option value="gmr">General Manager</option>
								</select>
							</div>
						</div>
					</div>
                </div>
	          	<div class="row ">
					<!-- <div class="col-md-12 col-sm-12 col-xs-12 alamraya-btn-add" align="right"> -->
						<!-- <button class="btn btn-info" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button> -->
					<!-- </div> -->
					<div class="table-responsive">
						<table class="table table-hover table-striped data-table" cellspacing="0">
						  <thead class="bg-gradient-info">

						    <tr>
								<th>PIN</th>
								<th>NIP</th>
								<th>Nama</th>
								<th>Jabatan</th>
								<th>Departemen</th>
								<th>Kantor</th>
								<th>Bulan</th>
								@for($j=0;$j<=31;$j++)
									<th>{{$j}}</th>
								@endfor
								<th>Libur</th>
								<th>Cuti</th>
								<th>Izin</th>
								<th>Sakit</th>
								<th>Absen</th>
								<th>Cuti Normatif</th>
								<th>Dinas</th>
								<th>Hari Kerja</th>
								<th>Tidak Hadir</th>
								<th>Kehadiran</th>
						    </tr>
						  </thead>
						  @php
						  	$pegawai = ['Alpha', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot'];
						  	$status = ['D', 'L', 'H', 'A'];
						  	$bulan = [
										'Januari',
										'Februari',
										'Maret',
										'April',
										'Mei',
										'Juni',
										'Juli',
										'Agustus',
										'September',
										'Oktober',
										'Nopember',
										'Desember'
								  	];
						  @endphp
						  <tbody>
						    @for($i=0;$i<=5;$i++)
							    <tr>
							    	<td>{{$i+1}}</td>
							    	<td>{{$i+1}}</td>
							    	<td>{{$pegawai[$i]}}</td>
							    	<td>Staff</td>
							    	<td>Keuangan</td>
							    	<td></td>
							    	<td>{{ $bulan[array_rand($bulan)] }}</td>
							    	@for($k=1;$k<=31;$k++)
								    	<td>{{$status[array_rand($status)]}}</td>
								    @endfor
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>{{$i}}</td>
								    <td>31</td>
								    <td>0</td>
								    <td>31</td>
							    </tr>
						    @endfor
						  </tbody>
						</table>
					</div>
	        	</div>
	      	</div>
    	</div>
	</div>
</div>
