@extends('main')
@section('content')

@include('hrd/payroll/tambah_payroll_manajemen')
@include('hrd/payroll/edit_payroll_manajemen')
@include('hrd/payroll/tambah_payroll_tunjangan')
@include('hrd/payroll/edit_payroll_tunjangan')
@include('hrd/payroll/tambah_payroll_produksi')
@include('hrd/payroll/edit_payroll_produksi')
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
					<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
				      	<div class="card">
					        <div class="card-body">
					          <h4 class="card-title">Payroll Tunjangan</h4>
					          	<div class="row">

									<div class="col-md-12 col-sm-12 col-xs-12 alamraya-btn-add-row" align="right">
										<a class="btn btn-warning " href="{{url('hrd/payroll/setting_tunjangan')}}"><i class="fa fa-cog"></i>&nbsp;&nbsp;Setting Tunjangan Pegawai</a>
										<button class="btn btn-info" data-toggle="modal" data-target="#tambahtunjangan"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
									</div>
									<div class="table-responsive">
										<table class="table table-hover data-table" cellspacing="0">
										  <thead class="bg-gradient-info">
										    <tr>
										      <th>Nama</th>
										      <th>Periode</th>
										      <th>Nilai</th>
										      <th>Aksi</th>
										    </tr>
										  </thead>
										  <tbody class="center">
										    <tr>
										    	<td>Kehadiran (Leader)</td>
										    	<td>Hari</td>
										    	<td>
										    		<div class="pull-left">Rp.</div>
										    		<div class="pull-right">40.000,00</div>
										    	</td>
										    	<td>
										    		<center>
											    		<div class="btn-group">
											    			<button type="button" class="btn btn-primary btn-lg alamraya-btn-aksi" title="edit" data-toggle="modal" data-target="#edittunjangan"><label class="fa fa-pencil-alt"></label></button>
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

var table;
$(document).ready(function(){
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
										} else {
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
