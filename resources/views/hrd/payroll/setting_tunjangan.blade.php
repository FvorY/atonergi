@extends('main')
@section('content')


@include('hrd/payroll/edit_setting_tunjangan')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item">Payroll</li>
					<li class="breadcrumb-item active" aria-current="page">Setting Tunjangan Pegawai</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12 alamraya-row-nav">
			<ul class="nav nav-tabs tab-solid tab-solid-primary alamraya-navtab" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1-1" data-toggle="tab" href="#abssettunjangan" role="tab" aria-controls="abssettunjangan" aria-selected="true"><i class="fa fa-cog"></i>Setting Tunjangan Pegawai</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

	            <div class="tab-pane fade show active" id="abssettunjangan" role="tabpanel" aria-labelledby="tab-6-1-1">
					<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
				      	<div class="card">
					        <div class="card-body">
					          <h4 class="card-title">Setting Tunjangan Pegawai</h4>
					          	<div class="row">

									<div class="col-md-12 col-sm-12 col-xs-12 alamraya-btn-add-row" align="right">
										<a class="btn btn-info" href="{{url('hrd/payroll/payroll')}}"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;Kembali</a>
									</div>
									<div class="table-responsive">
										<table class="table table-hover" cellspacing="0" id="ferdytable">
										  <thead class="bg-gradient-info">
										    <tr>
										      <th>Nama</th>
										      <th>NIK</th>
										      <th>Divisi</th>
										      <th>Jabatan</th>
										      <th>Tunjangan</th>
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

			</div>
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

<script type="text/javascript">
var table = $('#ferdytable').DataTable({
			 processing: true,
			 responsive:true,
			 serverSide: true,
			 ajax: {
					 url: '{{route('datatable_tunjangan')}}',
			 },
			 "columns": [
			 { "data": "mp_name" },
			 { "data": "mp_nik" },
			 { "data": "c_divisi" },
			 { "data": "c_posisi" },
			 { "data": "tunjangan" },
			 { "data": "aksi" },
			 ]
 });

	$('.btn-check-all').click(function() {
	  $('.ceklis_tunjangan').iCheck('check');
	  // alert('checked');
	});

	$('.btn-uncheck-all').click(function() {
	  $('.ceklis_tunjangan').iCheck('uncheck');
	  // alert('checked');
	});

	function edit(id){
		var htmltunjangan = '';
		var checked = '';
		$.ajax({
			type: 'get',
			data: {id:id},
			dataType: 'json',
			url: '{{route('finddata')}}',
			success : function(response){
				$('#nama').val(response.data[0].mp_name);
				$('#divisi').val(response.data[0].c_divisi);
				$('#jabatan').val(response.data[0].c_posisi);

				for (var i = 0; i < response.tunjangan.length; i++) {
					if (response.data[0].tman_id == response.tunjangan[i].tman_id) {
						checked = 'checked';
					}

						htmltunjangan += '<div class="form-check form-check-flat">'+
															'<label class="">'+
															'<input type="checkbox" class="ceklis_tunjangan" name="tunjangan[]" value="'+response.tunjangan[i].tman_id+'" '+checked+'>'+
															' ' + response.tunjangan[i].tman_nama+
															'</label>'+
															'</div>';
				}
				$('#showtunjangan').html(htmltunjangan);
				$('#btnsimpan').attr('onclick', 'simpan('+id+')');
				$('#editsettunjangan').modal('show');
			}
		});
	}

	function simpan(id){
		$.ajax({
			type: 'get',
			data: $('#datasetting').serialize()+'&pegawai='+id,
			dataType: 'json',
			url: '{{route('simpansetting')}}',
			success : function(response){
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

</script>

@endsection
