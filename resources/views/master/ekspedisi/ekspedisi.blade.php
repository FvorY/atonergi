@extends('main')
@section('content')

<!-- partial -->
<div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb bg-info">
          <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
          <li class="breadcrumb-item">Master</li>
          <li class="breadcrumb-item active" aria-current="page">Master Data Ekspedisi</li>
        </ol>
      </nav>
    </div>
  	<div class="col-lg-12 grid-margin stretch-card">

        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Master Data Ekspedisi</h4>
            <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
            	<a href="{{route('tambah_ekspedisi')}}" class="btn btn-info btn_modal"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</a>
            </div>
            <div class="table-responsive">
  			        <table id="table_data" class="table table-striped table-hover" cellspacing="0">
                    <thead class="bg-gradient-info">
                      <tr>
                        <th style="width: 10%">No</th>
                        <th style="width: 30%">Nama Ekspedisi</th>
                        <th style="width: 30%">Alamat Ekspedisi</th>
                        <th style="width: 30%">No. Telepon</th>
                        <th style="width: 10%">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach ($data as $key => $value)
                        <tr>
                          <td>{{$key + 1}}</td>
                          <td>{{$value->e_name}}</td>
                          <td>{{$value->e_address}}</td>
                          <td>{{$value->e_telp}}</td>
                          <td align="center">
                            <div class="btn-group">
                              <button type="button" onclick="edit({{$value->e_id}})" class="btn btn-info btn-lg" title="edit"><label class="fa fa-pencil-alt"></label></button>
                              <button type="button" onclick="hapus({{$value->e_id}})" class="btn btn-danger btn-lg" title="hapus"><label class="fa fa-trash"></label></button>
                            </div>
                          </td>
                        </tr>
                      @endforeach
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
});
</script>
@endsection
