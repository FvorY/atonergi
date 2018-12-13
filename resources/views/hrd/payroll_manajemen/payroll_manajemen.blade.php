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
					          	<div class="row form-group">
				              	  	<div class="col-lg-6 col-md-12 col-sm-12">
					                	<label class="col-lg-12 col-form-label alamraya-no-padding">Divisi</label>

					                	<div class="col-lg-12 col-md-12 col-sm-12 alamraya-no-padding">
											<div class="form-group">
												<select class="form-control form-control-sm" id="searchdivisi">
													<option value="">Tampilkan Semua</option>
													@foreach ($divisi as $key => $value)
														<option value="{{$value->c_id}}">{{$value->c_divisi}}</option>
													@endforeach
												</select>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-12 col-sm-12">
					                	<label class="col-lg-12 col-form-label alamraya-no-padding">Status</label>

					                	<div class="col-lg-12 col-md-12 col-sm-12 alamraya-no-padding">
											<div class="form-group">
												<select class="form-control form-control-sm" id="searchstatus">
													<option value="">Tampilkan Semua</option>
													<option value="Y">Sudah Dicetak</option>
													<option value="N">Belum Dicetak</option>
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
													<div class="input-group date datepicker">
								                        <input type="text" class="form-control" id="searchstart" placeholder="dd-mm-yyyy">
								                        <div class="input-group-addon">
								                          <span class="mdi mdi-calendar"></span>
								                        </div>
								                    </div>
												</div>
												<span class="alamraya-span-addon">
													-
												</span>
												<div class="col-lg-4 col-md-4 col-sm-12 alamraya-no-padding">
													<div class="input-group date datepicker">
								                        <input type="text" class="form-control" id="searchend" placeholder="dd-mm-yyyy">
								                        <div class="input-group-addon">
								                          <span class="mdi mdi-calendar"></span>
								                        </div>
								                    </div>
												</div>
												<div class="col-lg-3 col-md-3 col-sm-12 alamraya-no-padding alamraya-opt-btn">
													<span class="input-group-append">
														<button type="button" class="btn btn-primary btn-sm icon-btn ml-2" onclick="search()">
							                              <i class="fa fa-search"></i>
							                            </button>
							                            <button type="button" class="btn btn-info btn-sm icon-btn ml-2" onclick="refresh()">
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
										<table class="table table-hover" cellspacing="0" id="table_data">
										  <thead class="bg-gradient-info">
										    <tr>
										      <th>Kode</th>
										      <th>Tanggal</th>
										      <th>Periode</th>
										      <th>Nama Pegawai</th>
										      <th>Total Gaji</th>
													<th>Status</th>
										      <th>Aksi</th>
										    </tr>
										  </thead>
										  <tbody class="center" id="tbodytable">

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
var table = $('#table_data').DataTable();
$('.rp').maskMoney({
          prefix: 'Rp. ',
          decimal: ',',
          thousands: '.',
          precision: 0
      });

	$(document).ready(function (){
		table = $('#table_data').DataTable();

		table_data();
	});

	function table_data(){
		var divisi = $('#searchdivisi').val();
		var status = $('#searchstatus').val();
		var start = $('#searchstart').val();
		var end = $('#searchend').val();
			$.ajax({
				type: 'get',
				dataType: 'json',
				url: baseUrl + '/hrd/payroll/payrollman/datatable?divisi='+divisi+'&status='+status+'&start='+start+'&end='+end,
				success : function(response){
					if (response.length == 0) {
						$('#tbodytable').html('<td valign="top" colspan="7" class="dataTables_empty">No data available in table</td>');
					} else {
						table.clear();
						for (var i = 0; i < response.length; i++) {
							if (response[i].p_status_cetak == 'Y') {
								var status = '<span class="badge badge-primary">Sudah Dicetak</span>';
							} else {
								var status = '<span class="badge badge-warning">Belum Dicetak</span>';
							}
							table.row.add([
								response[i].p_kode,
								response[i].p_date,
								'<div class="pull-left">'+response[i].p_periode_start+'</div><br><div class="center">s/d</div><div class="pull-right">'+response[i].p_periode_end+'</div>',
								response[i].mp_name,
								'Rp. '+accounting.formatMoney(response[i].p_total_gaji,"",0,'.',','),
								status,
								'<center>'+
										'<div class="btn-group">'+
											'<button type="button" class="btn btn-warning btn-lg alamraya-btn-aksi" title="lihat" onclick="detail('+response[i].p_id+')"><label class="fa fa-info-circle"></label></button>'+
											'<button type="button" class="btn btn-danger btn-lg alamraya-btn-aksi" title="hapus" onclick="hapus('+response[i].p_id+')">'+
												'<label class="fa fa-trash"></label>'+
											'</button>'+
										'</div>'+
									'</center>'
							]).draw(false);
						}
					}
				}
			});
	}

	function refresh(){
		$('#searchdivisi').val('').trigger('change');
		$('#searchstatus').val('').trigger('change');
		$('#searchstart').val('');
		$('#searchend').val('');
		table_data();
	}

	function search(){
		table_data();
	}

	function hapus(id){
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

                  $.ajax({
                   	 type: "get",
                     url: baseUrl + '/hrd/payroll/payrollman/hapus',
                     data: {id},
										 dataType: 'json',
                     success: function(data){
											 if (data.status == 'berhasil') {
												 table_data();
												 iziToast.success({
													 title: 'OK',
													 message: 'Successfully!',
												 });
											 } else {
												 iziToast.warning({
													 title: 'info',
													 message: 'Failed!',
											 });
											 }
                     },
                     error: function(){
                      iziToast.warning({
                        icon: 'fa fa-times',
                        message: 'Terjadi Kesalahan!',
                      });
                     },
                   });
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
	// 
  // function success(){
	//
  // 	iziToast.success({
	//     title: 'OK',
	//     message: 'Successfully deleted record!',
	// });
	//
  // }

	function simpan(){
		$.ajax({
			type: 'get',
			data: $('#formtambah').serialize(),
			dataType: 'json',
			url: '{{route('payroll_manajemen_simpan')}}',
			success : function(response){
				if (response.status == 'berhasil') {
					iziToast.success({
						title: 'OK',
						message: 'Successfully!',
					});
					table_data();
						$(".input").val('');
			      $(".select").val('').trigger('change');
						$('#tambahpayman').modal('hide');
				} else {
					iziToast.warning({
						title: 'info',
						message: 'Failed!',
				});
				}
			}
		});
	}

	function getdivisi(){
		var divisi = $('#divisi').val();
		var html = '<option value="">--Pilih--</option>';
		$.ajax({
			type: 'get',
			data: {divisi:divisi},
			dataType: 'json',
			url: baseUrl + '/hrd/payroll/payrollman/getdivisi',
			success : function(response) {
				for (var i = 0; i < response.length; i++) {
					html += '<option value="'+response[i].c_id+'">'+response[i].c_posisi+'</option>';
				}
				$('#jabatan').html(html);
				$('#jabatan').attr('disabled', false);
			}
		});
	}

	function getjabatan(){
		var jabatan = $('#jabatan').val();
		var html = '<option value="">--Pilih--</option>';
		$.ajax({
			type: 'get',
			data: {jabatan:jabatan},
			dataType: 'json',
			url: baseUrl + '/hrd/payroll/payrollman/getjabatan',
			success : function(response) {
				for (var i = 0; i < response.length; i++) {
					html += '<option value="'+response[i].mp_id+'">'+response[i].mp_name+'</option>';
				}
				$('#pegawai').html(html);
				$('#pegawai').attr('disabled', false);
			}
		});
	}

	function proses(){
		var pegawai = $('#pegawai').val();
		$.ajax({
			type: 'get',
			data: {pegawai:pegawai},
			dataType: 'json',
			url: baseUrl + '/hrd/payroll/payrollman/proses',
			success : function(response){
				$('input[name=gaji]').val('Rp. '+accounting.formatMoney(response.gaji,"",0,'.',','));
				$('input[name=tunjangan]').val('Rp. '+accounting.formatMoney(response.tunjangan.tunjangan,"",0,'.',','))
				total();
			}
		});
	}

	function total(){
		var gaji = $('input[name=gaji]').val();
		var tunjangan = $('input[name=tunjangan]').val();
		var potongan = $('input[name=potongan]').val();

		if (gaji == '') {
			gaji = '0';
		} else if (tunjangan == '') {
			tunjangan = '0';
		} else if (potongan == '') {
			potongan = '0';
		}

		gaji = gaji.replace('Rp. ', '');
		tunjangan = tunjangan.replace('Rp. ', '');
		potongan = potongan.replace('Rp. ', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');
		gaji = gaji.replace('.', '');
		tunjangan = tunjangan.replace('.', '');
		potongan = potongan.replace('.', '');

		var total = (parseInt(gaji) + parseInt(tunjangan)) - parseInt(potongan);

		$('input[name=total]').val('Rp. ' + accounting.formatMoney(total,"",0,'.',','));
	}

	function autopotongan(){
		total();
	}

	function autotunjangan(){
		total();
	}

	function autogaji(){
		total();
	}

</script>

@endsection
