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
					<li class="breadcrumb-item active" aria-current="page">Stock Opname</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Stock Opname</h4>
		          	<div class="row">

						<div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
							<button class="btn btn-info" onclick="create()"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
						</div>
						<div class="table-responsive">
							<table class="table table-hover data-table" cellspacing="0">
							  <thead class="bg-gradient-info">
							    <tr>
							      <th>No</th>
							      <th>Code</th>
							      <th>Date</th>
							      <th>Action</th>
							    </tr>
							  </thead>
								<tbody>
									@foreach ($data as $key => $value)
										<tr>
											<td>{{$key + 1}}</td>
											<td>{{$value->so_code}}</td>
											<td>{{Carbon\Carbon::parse($value->so_bulan)->format('d-m-Y')}}</td>
											<td align="center">
												<button type="button" class="btn btn-primary" name="button" onclick="detail({{$value->so_id}})" title="Detail"> <i class="fa fa-folder"></i> </button>
											</td>
										</tr>
									@endforeach
								</tbody>
							  <tbody>

							  </tbody>
							</table>
						</div>

		        	</div>
		      	</div>
	    	</div>
	    </div>
	</div>
</div>

<div class="modal fade" id="modaldetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel-2" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel-2">Detail</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <table class="table table-hover data-table" cellspacing="0">
                          	<thead>
                          		<th>Item</th>
															<th>System</th>
															<th>Real</th>
															<th>Status</th>
                          	</thead>
														<tbody id="showdetail">
														</tbody>
                          </table>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                        </div>
                      </div>
                    </div>
                  </div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

<script type="text/javascript">

	function create(){
		window.location = ('{{ route('create_stockopname') }}')
	}

	function detail(id){
		var html = '';
		$.ajax({
			type: 'get',
			data: {id:id},
			dataType: 'json',
			url : baseUrl + '/inventory/opname/detail',
			success : function(result){
				for (var i = 0; i < result.length; i++) {
					html += '<tr>'+
									'<td>'+result[i].i_name+'</td>'+
									'<td>'+result[i].sodt_system+'</td>'+
									'<td>'+result[i].sodt_real+'</td>'+
									'<td>'+result[i].sodt_status_item+'</td>'+
									'</tr>';
				}
				$('#showdetail').html(html);
				$('#modaldetail').modal('show');
			}
		});
	}

</script>

@endsection
