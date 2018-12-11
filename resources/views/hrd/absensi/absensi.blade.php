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

		<div class="col-lg-12 alamraya-row-nav">
			<ul class="nav nav-tabs tab-solid tab-solid-primary alamraya-navtab" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#absmanajemen" role="tab" aria-controls="absmanajemen" aria-selected="true"><i class="mdi mdi-home-outline"></i>Absensi Manajemen</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

	            <div class="tab-pane fade show active" id="absmanajemen" role="tabpanel" aria-labelledby="tab-6-1">
	            	@include('hrd/absensi/include/absmanajemen')
				</div>

	            <div class="tab-pane fade" id="absproduksi" role="tabpanel" aria-labelledby="tab-6-2">
	            	@include('hrd/absensi/include/absproduksi')
				</div>

			</div>
		</div>

	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@include('hrd/absensi/js/commander')

@endsection
