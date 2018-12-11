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
										<table class="table table-hover data-table" cellspacing="0">
										  <thead class="bg-gradient-info">
										    <tr>
										      <th>ID</th>
										      <th>Nama</th>
										      <th>NIP</th>
										      <th>Divisi</th>
										      <th>Jabatan</th>
										      <th>Tunjangan</th>
										      <th>Aksi</th>
										    </tr>
										  </thead>
										  <tbody class="center">
										    <tr>
										    	<td>1</td>
										    	<td>
										    		Nasikhatul Insaniyah
										    	</td>
										    	<td>
										    		170101005
										    	</td>
										    	<td>
										    		HRD dan General Affair
										    	</td>
										    	<td>Kepala HRD</td>
										    	<td>
										    		<ul class="left">
										    			<li>Kehadiran (Leader)</li>
										    			<li>Uang Makan</li>
										    			<li>Transportasi</li>
										    		</ul>
										    	</td>
										    	<td>
										    		<center>
											    		<div class="btn-group">
											    			<button type="button" class="btn btn-primary btn-lg alamraya-btn-aksi" title="edit" data-toggle="modal" data-target="#editsettunjangan"><label class="fa fa-pencil-alt"></label></button>
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

	$('.btn-check-all').click(function() {
	  $('.ceklis_tunjangan').iCheck('check');
	  // alert('checked');
	});

	$('.btn-uncheck-all').click(function() {
	  $('.ceklis_tunjangan').iCheck('uncheck');
	  // alert('checked');
	});

</script>

@endsection
