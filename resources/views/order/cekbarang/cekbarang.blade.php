@extends('main')
@section('content')


<!-- partial -->
<div class="content-wrapper">
	<div class="col-lg-12">	
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb bg-info">
				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item">Order</li>
				<li class="breadcrumb-item active" aria-current="page">Check Stock</li>
			</ol>
		</nav>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
      	<div class="card">
	        <div class="card-body">
	          <h4 class="card-title">Check Stock</h4>
	          	<div class="row">
	          		
					<div class="table-responsive">
						<table class="table table-hover data-table" cellspacing="0">
						  <thead class="bg-gradient-info">
						    <tr>
						      <th>Item Code</th>
						      <th>Item Name</th>
						      <th>Order</th>
						      <th>Stock</th>
						      <th title="Kekurangan">Deficieny</th>
						    </tr>
						  </thead>
						  <tbody>
						    
						  </tbody>
						</table>
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