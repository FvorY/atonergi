@extends('main')
@section('content')

@include('finance/reporting/jurnal_umum')
@include('finance/reporting/buku_besar')
@include('finance/reporting/neraca_saldo')
@include('finance/reporting/neraca')
@include('finance/reporting/laba_rugi')
@include('finance/reporting/arus_kas')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">Finance</li>
					<li class="breadcrumb-item active" aria-current="page">Reporting</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Pilih Transaksi</h4>
		          <br>
		          	<div class="row">
		          		
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a data-toggle="modal" href="#jurnalumum" class="center text-primary alamraya-choosing-panel">
								<i class="fa fa-clipboard icon-lg text-primary"></i>
								<div class="center">
									<label>Jurnal Umum</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a data-toggle="modal" href="#bukubesar" class="center text-warning alamraya-choosing-panel">
								<i class="fa fa-book icon-lg text-warning"></i>
								<div class="center">
									<label>&nbsp;Buku Besar&nbsp;</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a data-toggle="modal" href="#neracasaldo" class="center text-danger alamraya-choosing-panel">
								<i class="fa fa-random icon-lg text-danger"></i>
								<div class="center">
									<label>Neraca Saldo</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a data-toggle="modal" href="#neraca" class="center text-success alamraya-choosing-panel">
								<i class="fa fa-columns icon-lg text-success"></i>
								<div class="center">
									<label>&nbsp;&nbsp;&nbsp;&nbsp; Neraca &nbsp;&nbsp;&nbsp;&nbsp;</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a data-toggle="modal" href="#labarugi" class="center text-muted alamraya-choosing-panel">
								<i class="fa fa-bar-chart-o icon-lg text-muted"></i>
								<div class="center">
									<label>&nbsp; Laba Rugi &nbsp;</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a data-toggle="modal" href="#aruskas" class="center text-info alamraya-choosing-panel">
								<i class="fa fa-refresh icon-lg text-info"></i>
								<div class="center">
									<label>&nbsp;&nbsp;&nbsp; Arus Kas &nbsp;&nbsp;&nbsp;</label>
								</div>
							</a>
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

@endsection