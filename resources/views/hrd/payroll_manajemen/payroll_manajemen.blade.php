@extends('main')
@section('content')

@include('hrd/payroll_manajemen/tambah_payroll_manajemen')
@include('hrd/payroll_manajemen/detail_payroll_manajemen')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Payroll Pegawai Manajemen</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12 alamraya-row-nav">
			<ul class="nav nav-tabs tab-solid tab-solid-primary alamraya-navtab" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#abspayroll" role="tab" aria-controls="abspayroll" aria-selected="true"><i class="mdi mdi-file-document"></i>Payroll Pegawai Manajemen</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

	            <div class="tab-pane fade show active" id="abspayroll" role="tabpanel" aria-labelledby="tab-6-1">
					<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
				      	<div class="card">
					        <div class="card-body">
					          <h4 class="card-title">Payroll Pegawai Manajemen</h4>
										<div class="row ">
				          		<form method="POST" enctype="multipart/form-data" action="{{ url('/hrd/absensi/import-data-manajemen') }}" style="width: 100%">
				          			{{csrf_field()}}
					          		<div class="col-md-12 ">
						          		<label class="col-lg-12 col-form-label alamraya-no-padding">Upload File Absensi (Maks. 5mb)</label>
						          		<input type="file" name="file-manajemen" class="dropify" data-height="100" data-max-file-size="5000kb"/>
						          	</div>

						          	<div class="col-md-12" style="margin-top: 2mm">
						          		<button class="btn btn-primary" type="submit">Upload</button>
						          	</div>
				          		</form>
				            </div><br>
					          	<div class="row form-group">
				              	  	<div class="col-lg-6 col-md-12 col-sm-12">
					                	<label class="col-lg-12 col-form-label alamraya-no-padding">Divisi</label>

					                	<div class="col-lg-12 col-md-12 col-sm-12 alamraya-no-padding">
											<div class="form-group">
												<select class="form-control form-control-sm" id="filter">
													<option value="all">Tampilkan Semua</option>
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
									<div class="col-lg-6 col-md-12 col-sm-12">
					                	<label class="col-lg-12 col-form-label alamraya-no-padding">Status</label>

					                	<div class="col-lg-12 col-md-12 col-sm-12 alamraya-no-padding">
											<div class="form-group">
												<select class="form-control form-control-sm" id="filter">
													<option value="all">Tampilkan Semua</option>
													<option value="nprtd">Sudah Dicetak</option>
													<option value="uprtd">Belum Dicetak</option>
												</select>
											</div>
										</div>
									</div>
				                </div>
				                <div class="row form-group">
									<div class="col-lg-12 col-md-12 col-sm-12">
					                	<label class="col-lg-12 col-form-label alamraya-no-padding">Periode (Mulai - Selesai)</label>

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
													<span class="input-group-append">
														<button type="button" class="btn btn-primary btn-sm icon-btn ml-2">
							                              <i class="fa fa-search"></i>
							                            </button>
							                            <button type="button" class="btn btn-info btn-sm icon-btn ml-2" >
							                              <i class="fa fa-refresh"></i>
							                            </button>
							                        </span>
												</div>
												<button class="btn btn-info alamraya-btn-add" data-toggle="modal" data-target="#tambahpayman"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
											</div>
										</div>
									</div>
				                </div>
					          	<div class="row">

									<div class="table-responsive">
										<table class="table table-hover data-table" cellspacing="0">
										  <thead class="bg-gradient-info">
										    <tr>
										      <th>Kode</th>
										      <th>Tanggal</th>
										      <th>Periode</th>
										      <th>NIP</th>
										      <th>Nama Pegawai</th>
										      <th>Total Gaji</th>
										      <th>Tanggal Cetak</th>
										      <th>Aksi</th>
										    </tr>
										  </thead>
										  <tbody class="center">
										    <tr>
												<td>#123456789</td>
												<td>12-12-2018</td>
												<td>
													<div class="pull-left">12-12-2018</div><br>
													<div class="center">s/d</div>
										    		<div class="pull-right">12-12-2018</div>
												</td>
												<td>#123456789</td>
												<td>Nasikhatul Insaniyah</td>
												<td>
													<div class="pull-left">Rp.</div>
										    		<div class="pull-right">1.430.000,00</div>
												</td>
												<td>12-12-2018</td>
												<td>
													<center>
											    		<div class="btn-group">
											    			<button type="button" class="btn btn-warning btn-lg alamraya-btn-aksi" title="lihat" data-toggle="modal" data-target="#detailpayman"><label class="fa fa-info-circle"></label></button>
											    			<button type="button" class="btn btn-danger btn-lg alamraya-btn-aksi" title="hapus" onclick="hapus()">
											    				<label class="fa fa-trash"></label>
											    			</button>
											    		</div>
										    		</center>
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
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

<script type="text/javascript">

	function hapus(){
	// function hapus(parm){
    // var par   = $(parm).parents('tr');
    // var id    = $(par).find('.d_id').text();

    iziToast.show({
            overlay: true,
            close: false,
            timeout: 20000,
            color: 'dark',
            icon: 'fas fa-question-circle',
            title: 'Important!',
            message: 'Apakah Anda Yakin ?',
            position: 'center',
            progressBarColor: 'rgb(240, 0, 0)',
            buttons: [
              [
                '<button style="background: rgb(190, 0, 0); color: white;" onclick="success()">Delete</button>',
                function (instance, toast) {

                  // $.ajax({
                  //  type: "get",
                  //    url: baseUrl + '/hrd/data_lembur/hapus_data_lembur',
                  //    data: {id},
                  //    success: function(data){
                  //     console.log(data);
                  //     var table = $('#table-data-lembur').DataTable();
                  //     table.ajax.reload();


                  //    },
                  //    error: function(){
                  //     iziToast.warning({
                  //       icon: 'fa fa-times',
                  //       message: 'Terjadi Kesalahan!',
                  //     });
                  //    },
                  //    async: false
                  //  });

                }
              ],
              [
                '<button class="btn btn-info">Cancel</button>',
                function (instance, toast) {
                  instance.hide({
                    transitionOut: 'fadeOutUp'
                  }, toast);
                }
              ]
            ]
          });


  }

  function success(){

  	iziToast.success({
	    title: 'OK',
	    message: 'Successfully deleted record!',
	});

  }

</script>

@endsection
