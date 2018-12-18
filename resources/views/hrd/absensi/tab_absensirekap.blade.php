<div class="tab-pane fade" id="absrekap" role="tabpanel" aria-labelledby="tab-6-3">
	<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
      	<div class="card">
	        <div class="card-body">
	          <h4 class="card-title">Absensi Rekap Periode</h4>


						<form action="{{url('/hrd/absensi/rekap')}}" class="form-horizontal" method="POST" enctype="multipart/form-data">
							{{ csrf_field() }}
	          	<div class="row ">
	          		<div class="col-md-12 ">
		          		<label class="col-lg-12 col-form-label alamraya-no-padding">Upload File Absensi (Maks. 5mb)</label>
		          		<input type="file" class="dropify" data-height="100" data-max-file-size="5000kb"/>
		          	</div>
                </div>
                <div class="row mt-3 mb-3">
	          		<div class="col-lg-12 text-right">
		          		<button type="submit" id="simpanrekap" class="btn btn-info">Simpan Data</button>
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
						  		<th colspan="7">Pegawai</th>
						  		<th colspan="2">Kehadiran</th>
						  		<th colspan="2">Datang Terlambat</th>
						  		<th colspan="2">Pulang Awal</th>
						  		<th colspan="2">Istirahat Lebih</th>
						  		<th colspan="2">Scan Kerja 1x</th>
						  		<th colspan="3">Lembur</th>
						  		<th>Tidak Hadir</th>
						  		<th>Libur</th>
						  		<th colspan="17">Perhitungan Pengecualian Izin</th>

						  	</tr>
						    <tr>
								<th>PIN</th>
								<th>NIP</th>
								<th>Nama</th>
								<th>Jabatan</th>
								<th>Departemen</th>
								<th>Kantor</th>
								<th>Izin Libur</th>

								<th>Jumlah</th>
								<th>Jam:Menit</th>

								<th>Jumlah</th>
								<th>Jam:Menit</th>

								<th>Jumlah</th>
								<th>Jam:Menit</th>

								<th>Jumlah</th>
								<th>Jam:Menit</th>

								<th>Masuk</th>
								<th>Keluar</th>

								<th>Jumlah</th>
								<th>Jam:Menit</th>
								<th>Scan 1x</th>

								<th>Tanpa Izin</th>

								<th>Rutin & Umum</th>

								<th>Izin Tidak Masuk (Keperluan Pribadi)</th>
								<th>Izin Pulang Awal (Keperluan Pribadi)</th>
								<th>Izin Datang Terlambat (Keperluan Pribadi)</th>
								<th>Sakit dengan surat dokter</th>
								<th>Sakit tanpa surat dokter</th>
								<th>Izin meninggalkan tempat kerja</th>
								<th>Izin dinas (Izin keperluan kantor)</th>
								<th>Izin datang terlambat (kerperluan kantor)</th>
								<th>Izin pulang awal (keperluan kantor)</th>
								<th>Cuti normatif</th>
								<th>Cuti pribadi</th>
								<th>Tidak scan (masuk)</th>
								<th>Tidak scan (mulai istirahat)</th>
								<th>Tidak scan (selesai istirahat)</th>
								<th>Tidak scan (mulai lembur)</th>
								<th>Tidak scan (selesai lembur)</th>
								<th>Izin Lain-lain</th>

						    </tr>
						  </thead>
						  @php
						  	$pegawai = ['Alpha', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot'];
						  @endphp
						  <tbody>

						  </tbody>
						</table>
					</div>
	        	</div>
	      	</div>
    	</div>
	</div>
</div>
