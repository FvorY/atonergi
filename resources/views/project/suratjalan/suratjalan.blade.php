@extends('main')
@section('content')

<!-- partial -->
<div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb bg-info">
          <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
          <li class="breadcrumb-item">After Order</li>
          <li class="breadcrumb-item active" aria-current="page">Surat Jalan</li>
        </ol>
      </nav>
    </div>
  	<div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Surat Jalan</h4>
                    <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
                    	<a href="{{route('tambah_suratjalan')}}" class="btn btn-info btn_modal"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</a>
                    </div>
                    <div class="table-responsive">
        				        <table id="table_data" class="table table-striped table-hover" cellspacing="0">
                            <thead class="bg-gradient-info">
                              <tr>
                                <th width="1%">No</th>
                                <th width="" title="Surat Jalan">Delivery Order</th>
                                <th width="">SO</th>
                                <th>Customer</th>
                                <th>Customer Address</th>
                                <th width="20%">Aksi</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td>00001</td>
                                <td>ini-nomor-so-456</td>
                                <td>Mike</td>
                                <td>Jl. Mike</td>
                                <td><button class="btn btn-info btn-sm btn-print" type="button" title="Print"><i class="fa fa-print"></i></button></td>
                              </tr>
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
$(document).ready(function(){
  var table   = $('#table_data').DataTable();

  $('#table_data tbody').on('click', '.btn-print', function(){
    window.location.href='{{route('print_suratjalan')}}';
  });
});
</script>
@endsection
