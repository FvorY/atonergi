@extends('main')
@section('content')

@include('finance/bookkeeping/tambah_bookkeeping')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">Finance</li>
					<li class="breadcrumb-item active" aria-current="page">Bookkeeping</li>
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
							<a href="{{ url('finance/bookkeeping/transaksi_kas') }}" class="center text-success alamraya-choosing-panel">
								<i class="fa fa-dollar icon-lg text-success"></i>
								<div class="center">
									<label>Transaksi Kas</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a href="{{ url('finance/bookkeeping/transaksi_bank') }}" class="center text-warning alamraya-choosing-panel">
								<i class="fa fa-bank icon-lg text-warning"></i>
								<div class="center">
									<label>Transaksi Bank</label>
								</div>
							</a>
						</div>
						<div class="col-lg-4 grid-margin stretch-card justify-content-center">
							<a href="{{ url('finance/bookkeeping/transaksi_memorial') }}" class="center text-danger alamraya-choosing-panel">
								<i class="fa fa-suitcase icon-lg text-danger"></i>
								<div class="center">
									<label>Transaksi Memorial</label>
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