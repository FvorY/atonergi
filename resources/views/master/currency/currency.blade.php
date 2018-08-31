@extends('main')

@section('extra_style')
<style type="text/css">
  
  .float-left{
    float:left;
  }
  .float-right{
    float:right;
  }

</style>
@endsection

@section('content')

@include('master.currency.tambah')


<!-- partial -->
<div class="content-wrapper">
  <div class="row">
  	<div class="col-lg-12">	
  		<nav aria-label="breadcrumb" role="navigation">
  			<ol class="breadcrumb bg-info">
  				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
  				<li class="breadcrumb-item">Master</li>
  				<li class="breadcrumb-item active" aria-current="page">Master Currency</li>
  			</ol>
  		</nav>
  	</div>

  	<div class="col-lg-12 grid-margin stretch-card">
      <div class="card">
          <div class="card-body">
            <h4 class="card-title">Master Currency</h4>
              <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
                	<button type="button" class="btn btn-info" id="tombol_modal_tambah" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
              </div>
            <div class="table-responsive">
              <table id="t55" class="table table-hover table-bordered" cellspacing="0">
                <thead class="bg-gradient-info">
                    <tr>
                      <th class="wd-15p" width="5%">No</th>
                      <th class="wd-15p">Code</th>
                      <th>Symbol</th>
                      <th>Country</th>
                      <th class="wd-15p">Value</th>
                      <th width="15%">Action</th>
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
<script>

$('#t55').DataTable();

$('.currency').change(function(){
  var id = $(this).val();
  $.ajax({
    url: {{ url('master/currency/auto_complete') }},
    data: {id},
    type:'get',
    dataType:'json',
    success:function(data){
      $('.symbol').val(data.data.cu_symbol);
      $('.country').val(data.data.cu_name);
    },
    error:function(){
      iziToast.warning({
        icon: 'fa fa-times',
        message: 'Terjadi Kesalahan!',
      });
    }
  })
})

</script>
@endsection