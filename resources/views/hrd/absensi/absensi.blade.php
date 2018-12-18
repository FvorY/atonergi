@extends('main')
@section('content')

@include('hrd/absensi/tambah_absensi')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Absensi</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12">
			<ul class="nav nav-tabs tab-solid tab-solid-primary mb-0" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#abskartushift" role="tab" aria-controls="abskartushift" aria-selected="true"><i class="mdi mdi-home-outline"></i>Absensi Kartu Shift</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" id="tab-6-2" data-toggle="tab" href="#absbulan" role="tab" aria-controls="absbulan" aria-selected="false"><i class="mdi mdi-account-outline"></i>Absensi Berdasarkan Bulan</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" id="tab-6-3" data-toggle="tab" href="#absrekap" role="tab" aria-controls="absrekap" aria-selected="false"><i class="mdi mdi-account-outline"></i>Absensi Rekap Periode</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" id="tab-6-4" data-toggle="tab" href="#abstahun" role="tab" aria-controls="abstahun" aria-selected="false"><i class="mdi mdi-account-outline"></i>Absensi Rincian Tahunan</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

	            @include('hrd.absensi.tab_absensikartushift')

	            @include('hrd.absensi.tab_absensiberdasarkanbulan')
	            
	            
	            @include('hrd.absensi.tab_absensirekap')

	            @include('hrd.absensi.tab_absensitahun')
	            

			</div>
		</div>

	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@include('hrd/absensi/js/commander')

@endsection
