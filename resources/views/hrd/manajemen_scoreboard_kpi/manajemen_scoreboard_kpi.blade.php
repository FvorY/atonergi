@extends('main')
@section('content')

@include('hrd/manajemen_scoreboard_kpi/modal_detailscore')
@include('hrd/manajemen_scoreboard_kpi/modal_konfirm_pki')
@include('hrd/manajemen_scoreboard_kpi/modal_detail_pki')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Manajemen Scoreboard & KPI</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12">

			<ul class="nav nav-tabs tab-solid  tab-solid-primary" role="tablist">
	            <li class="nav-item">
	              <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#konfirmas_kpi_tab" role="tab" aria-controls="konfirmas_kpi_tab" aria-selected="true"><i class="mdi mdi-home-outline"></i>Konfirmasi KPI</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" id="tab-6-2" data-toggle="tab" href="#scoreboard_tab" role="tab" aria-controls="scoreboard_tab" aria-selected="false"><i class="mdi mdi-account-outline"></i>Data Scoreboard</a>
	            </li>
	        </ul>

	    </div>
		<div class="col-lg-12 grid-margin stretch-card">

	      	<div class="card">
	      		<div class="tab-content tab-content-solid">

	      			@include('hrd.manajemen_scoreboard_kpi.tab_pki')

	      			@include('hrd.manajemen_scoreboard_kpi.tab_scoreboard')

		      	</div>
	    	</div>
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@endsection