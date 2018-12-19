@extends('main')
@section('content')

@include('hrd/data_kpi/tambah_data_kpi')
@include('hrd/data_kpi/edit_data_kpi')
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">	
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Data KPI</li>
				</ol>
			</nav>
		</div>
		<div class="col-lg-12 grid-margin stretch-card">
	      	<div class="card">
		        <div class="card-body">
		          <h4 class="card-title">Data KPI</h4>
		          	<div class="row">
	                	<div class="col-md-2 col-sm-3 col-xs-12">
		                	<label>Periode</label>
		                </div>
	                	<div class="col-md-7 col-sm-9 col-xs-12">

		                	
		                		<div class="form-group">
		                			<div class="input-group input-group-sm input-daterange">
		                				<input type="text" class="form-control form-control-sm" name="">
		                				<span class="input-group-addon">-</span>
		                				<input type="text" class="form-control form-control-sm" name="">
		                				<div class="input-group-btn">
											<button class="btn btn-info"><i class="fa fa-search"></i></button>
											<button class="btn btn-secondary"><i class="fa fa-refresh"></i></button>
										</div>
		                			</div>
		                		</div>
							
						</div>
						<div class="col-md-3 col-sm-12 col-xs-12 text-right">
							<button class="btn btn-info" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
						</div>
	                </div>

		          	<div class="row">
		          		
						<!-- <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
							<button class="btn btn-info" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
						</div> -->
						<div class="table-responsive">
							<table class="table table-hover data-table" cellspacing="0">
							  <thead class="bg-gradient-info">
							    <tr>
							      <th>No</th>
							      <th>Date</th>
							      <th>Code</th>
							      <th>Employee</th>
							      <th>Date Confirm</th>
							      <th>Action</th>
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
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

<script type="text/javascript">
	
	function hapus(){
	// function hapus(parm){
    // var par   = $(parm).parents('tr');
    // var id    = $(par).find('.d_id').text();

    iziToast.show({
            overlay: true,
            close: false,
            timeout: 20000, 
            color: 'dark',
            icon: 'fas fa-question-circle',
            title: 'Important!',
            message: 'Apakah Anda Yakin ?',
            position: 'center',
            progressBarColor: 'rgb(240, 0, 0)',
            buttons: [
              [
                '<button style="background: rgb(190, 0, 0); color: white;" onclick="success()">Delete</button>',
                function (instance, toast) {

                  // $.ajax({
                  //  type: "get",
                  //    url: baseUrl + '/hrd/data_lembur/hapus_data_lembur',
                  //    data: {id},
                  //    success: function(data){
                  //     console.log(data);
                  //     var table = $('#table-data-lembur').DataTable();
                  //     table.ajax.reload();
                      
                     
                  //    },
                  //    error: function(){
                  //     iziToast.warning({
                  //       icon: 'fa fa-times',
                  //       message: 'Terjadi Kesalahan!',
                  //     });
                  //    },
                  //    async: false
                  //  });
                 
                }
              ],
              [
                '<button class="btn btn-info">Cancel</button>',
                function (instance, toast) {
                  instance.hide({
                    transitionOut: 'fadeOutUp'
                  }, toast);
                }
              ]
            ]
          });


  }

  function success(){

  	iziToast.success({
	    title: 'OK',
	    message: 'Successfully deleted record!',
	});

  }

</script>

@endsection