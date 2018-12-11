@extends('main')
@section('content')

@include('hrd/payroll/tambah_payroll_manajemen')
@include('hrd/payroll/edit_payroll_manajemen')
@include('hrd/payroll/tambah_payroll_tunjangan')
@include('hrd/payroll/edit_payroll_tunjangan')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Payroll</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12 alamraya-row-nav">
			<ul class="nav nav-tabs tab-solid tab-solid-primary alamraya-navtab" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#absmanajemen" role="tab" aria-controls="absmanajemen" aria-selected="true"><i class="mdi mdi-folder-account"></i>Manajemen</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link " id="tab-6-2" data-toggle="tab" href="#abstunjangan" role="tab" aria-controls="abstunjangan" aria-selected="true"><i class="mdi mdi-coin"></i>Tunjangan</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

	            <div class="tab-pane fade show active" id="absmanajemen" role="tabpanel" aria-labelledby="tab-6-1">
					<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
				      	<div class="card">
					        <div class="card-body">
					          <h4 class="card-title">Manajemen Payroll</h4>
					          	<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12 alamraya-btn-add-row" align="right">
										<button class="btn btn-info" data-toggle="modal" data-target="#tambahmanajemen"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
									</div>
									<div class="table-responsive">
										<table class="table table-hover" cellspacing="0" id="gaji1">
										  <thead class="bg-gradient-info">
										    <tr>
										      <th>Nama</th>
										      <th>SMA</th>
										      <th>D3</th>
										      <th>S1</th>
										      <th>Pangkat</th>
										      <th>Aksi</th>
										    </tr>
										  </thead>
										  <tbody class="center">

										  </tbody>
										</table>
									</div>

					        	</div>
					      	</div>
				    	</div>
					</div>
				</div>

				<div class="tab-pane fade " id="abstunjangan" role="tabpanel" aria-labelledby="tab-6-2">

				@include('hrd/payroll/include/tunjangan')

				</div>

			</div>
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

{{-- @include('hrd/payroll/commander/commander')
@include('hrd/payroll/commander/form_commander') --}}
<script type="text/javascript">

var table;
$(document).ready(function(){
	function hapus_tunj(id){
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

								$.ajax({
									 type: "post",
									 url: '{{route('hapus_tunjangan')}}',
									 data: '_token={{ csrf_token() }}&tman_id=' + id,
									 success: function(data){
											if (data.status == 1) {
													iziToast.success({
															title: 'OK',
															message: 'Successfully deleted record!',
													});
													tbl_tunj.ajax.reload();
											}
											else {
													iziToast.warning({
															title: 'Info',
															message: 'Failed deleted record!',
													});
											}
									 },
									 error: function(){
											 iziToast.warning({
													icon: 'fa fa-times',
													message: 'Terjadi Kesalahan!',
											 });
									 },
									 async: false
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

	 function reset_insert_form() {
					var form = $('#form_insert_tunj');

					form.find('[name="tman_id"]').val('');
					form.find('[name="tman_nama"]').val('');
					form.find('[name="tman_levelpeg"]').val('').trigger('change');
					form.find('[name="tman_periode"]').val('').trigger('change');
					form.find('[name="tman_value"]').val('');
			}

	function edit_tunj(obj) {
			var parent = $(obj).parents('tr')[0];
			var data = tbl_tunj.row( parent ).data();
			var form = $('#form_update_tunj');

			form.find('[name="tman_id"]').val( data.tman_id );
			form.find('[name="tman_nama"]').val( data.tman_nama );
			form.find('[name="tman_levelpeg"]').val( data.tman_levelpeg ).trigger('change');
			form.find('[name="tman_periode"]').val( data.tman_periode ).trigger('change');
			form.find('[name="tman_value"]').val( data.tman_value );
	}
	$(document).ready(function(){



			// Sesi Tunjangan
			var tunj_url = "{{ url('/hrd/payroll/find-tunjangan') }}";

			tbl_tunj = $('#tbl_tunjangan').DataTable( {
					ajax: tunj_url,
					columns: [

							{ data: "tman_nama" },
							{
									data: null,
									render : function(res) {
											var result = '';
											switch(res.tman_periode) {
													case 'JM' :
															result = 'Jam';
													break;
													case 'HR' :
															result = 'Hari';
													break;
													case 'MG' :
															result = 'Minggu';
													break;
													case 'TH' :
															result = 'Tahun';
													break;
													case 'ST' :
															result = 'Statis';
													break;
											}

											return result;
									}
							},
							{ data: "tman_value" },
							{
									data: null,
									render : function(r) {
											var btn = '<center><div class="btn-group"><button type="button" class="alamraya-btn-aksi btn btn-primary btn-lg " title="edit" data-toggle="modal" data-target="#edittunjangan" onclick="edit_tunj(this)"><label class="fa fa-pencil-alt"></label></button><button type="button" class="btn btn-danger btn-lg alamraya-btn-aksi" title="hapus" onclick="hapus_tunj(' + r.tman_id + ')"><label class="fa fa-trash"></label></button></div></center>';

											return btn;
									}
							},

					]
			} );

			// ======================================================
	});

	$('#tunj_insert_btn').click(function(){
		var data = $('#form_insert_tunj').serialize();
		$.ajax({
					url  : '{{ url("/hrd/payroll/insert-tunjangan") }}',
					type : 'POST',
					data : data,
					success : function(raw_resp) {
						 if(raw_resp.status == 1) {
							 iziToast.success({
												title: 'OK',
												message: 'Berhasil menyimpan data'
										});
							 tbl_tunj.ajax.reload();
						 }
						 else {
								 iziToast.warning({
												title: 'Info',
												message: 'Gagal menyimpan data!'
										});
						 }

						 $('#tambahtunjangan').modal('hide');
					}
			});
	});
	// =====================================================

	// Function untuk meng-update data tunjangan
	$('#tunj_update_btn').click(function(){
		var data = $('#form_update_tunj').serialize();
		$.ajax({
					url  : '{{ url("/hrd/payroll/update-tunjangan") }}',
					type : 'POST',
					data : data,
					success : function(raw_resp) {
						 // Mereset form
						 if(raw_resp.status == 1) {
							 iziToast.success({
												title: 'OK',
												message: 'Berhasil meng-update data'
										});
							 tbl_tunj.ajax.reload();

						 }
						 else {
								 iziToast.warning({
												title: 'Info',
												message: 'Gagal meng-update data data!'
										});
						 }

						 $('#edittunjangan').modal('hide');
					}
			});
	});

   table = $('#gaji1').DataTable({
          processing: true,
          responsive:true,
          serverSide: true,
          ajax: {
              url: '{{route('datatable_payroll')}}',
          },
          "columns": [
          { "data": "nm_gaji" },
          { "data": "sma" },
          { "data": "d3" },
					{ "data": "s1" },
					{ "data": "pangkat" },
          { "data": "aksi" },
          ]
    });

});

function simpanm(){
	$.ajax({
		type: 'get',
		data: $('#data_tambahm').serialize(),
		dataType: 'json',
		url: '{{route('simpan_payroll')}}',
		success: function (response){
			if (response.status == 'berhasil') {
				iziToast.success({
			    title: 'OK',
			    message: 'Successfully!',
				});
				table.ajax.reload();
			} else {
				iziToast.warning({
			    title: 'info',
			    message: 'Failed!',
			});
			}
		}
	});
}

	function hapus(id){
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

                  $.ajax({
                     type: "get",
                     url: '{{route('hapus_payroll')}}',
                     data: {id},
                     success: function(data){
						if (data.status == 'berhasil') {
							iziToast.success({
							    title: 'OK',
							    message: 'Successfully deleted record!',
							});
							table.ajax.reload();
						}
						else {
							iziToast.warning({
							    title: 'Info',
							    message: 'Failed deleted record!',
							});
						}
                     },
                     error: function(){
                      iziToast.warning({
                        icon: 'fa fa-times',
                        message: 'Terjadi Kesalahan!',
                      });
                     },
                     async: false
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

	function edit(id){
		$.ajax({
			type: 'get',
			data: {id:id},
			dataType: 'json',
			url: '{{route('edit_payroll')}}',
			success : function(response){
				$('#nm_gaji').val(response[0].nm_gaji);
				$('#c_jabatanedit').val(response[0].c_jabatan);
				$('#c_jabatanedit').find('option[value="'+response[0].c_jabatan+'"]').attr('selected','selected');
	      var text = $('#c_jabatanedit').find('option[value="'+response[0].c_jabatan+'"]').text();
				$('#select2-c_jabatanedit-container').text(text);
				$('#c_sd').val(accounting.formatMoney(response[0].c_sd,"",2,'.',','));
				$('#c_smp').val(accounting.formatMoney(response[0].c_smp,"",2,'.',','));
				$('#c_sma').val(accounting.formatMoney(response[0].c_sma,"",2,'.',','));
				$('#c_smk').val(accounting.formatMoney(response[0].c_smk,"",2,'.',','));
				$('#c_d1').val(accounting.formatMoney(response[0].c_d1,"",2,'.',','));
				$('#c_d2').val(accounting.formatMoney(response[0].c_d2,"",2,'.',','));
				$('#c_d3').val(accounting.formatMoney(response[0].c_d3,"",2,'.',','));
				$('#c_s1').val(accounting.formatMoney(response[0].c_s1,"",2,'.',','));

				$('#updatem').attr('onclick', 'updatem('+id+')');

				$('#editmanagement').modal('show');
			}
		});
	}

	function updatem(id){
		$.ajax({
			type: 'get',
			data: $('#data_editm').serialize()+'&id='+id,
			dataType: 'json',
			url: '{{route('update_payroll')}}',
			success : function(response){
				if (response.status == 'berhasil') {
					iziToast.success({
						title: 'OK',
						message: 'Successfully deleted record!',
				});
				table.ajax.reload();
			} else {
				iziToast.warning({
					title: 'Info',
					message: 'Failed deleted record!',
			});
			}
			}
		});
	}

  // function success(){
	//
  // 	iziToast.success({
	//     title: 'OK',
	//     message: 'Successfully deleted record!',
	// });
	//
  // }

</script>

<script type="text/javascript">

	function samakan() {
	  var jum = $('#jumlah').val();
	  $('#sd').val(jum);
	  $('#smp').val(jum);
	  $('#sma').val(jum);
	  $('#smk').val(jum);
	  $('#d1').val(jum);
	  $('#d2').val(jum);
	  $('#d3').val(jum);
	  $('#s1').val(jum);
	}


</script>

<script type="text/javascript">

  $(function() {
    $('.currency').maskMoney(
    	{
    		prefix:'RP. ',
    		allowZero: true,
    		allowNegative: true,
    		thousands:'.',
    		decimal:',',
    		affixesStay: false
    	}
    );
  })

</script>

@endsection
