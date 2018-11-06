@extends('main')
@section('content')


<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">Inventory</li>
					<li class="breadcrumb-item active" aria-current="page">Barang Keluar</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Barang Keluar</h4>
		          	<div class="row">

						<div class="table-responsive">
							<table class="table table-hover table-striped table-bordered data-table" cellspacing="0">
							  <thead class="bg-gradient-info">
							    <tr>
							    	<th width="1%">No</th>
							    	<th>Item Code</th>
							    	<th>Item Name</th>
							    	<th>Unit</th>
							    	<th>Category</th>
							    	<th>Description</th>
							    	<th>Action</th>
							    </tr>
							  </thead>
							  <tbody>
							    <tr>
							    	<td align="center">1</td>
							    	<td>BRG/0001</td>
							    	<td>Pompa Air</td>
							    	<td>Ls</td>
							    	<td>ACC</td>
							    	<td>-</td>
							    	<td>
							    		<div class="btn-group btn-group-sm">
							    			<a href="{{url('inventory/barangkeluar/kartu_stok')}}" title="Kartu Stok" class="btn btn-primary"><i class="fa fa-external-link-square-alt"></i></a>
							    		</div>
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
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@endsection