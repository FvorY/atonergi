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
          <li class="breadcrumb-item"><a href="#">Master Data Ekspedisi</a></li>
          <li class="breadcrumb-item active" aria-current="page">Tambah Master Data Ekspedisi</li>
        </ol>
      </nav>
    </div>
  	<div class="col-lg-12 grid-margin stretch-card">

        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Tambah Master Data Ekspedisi</h4>

            <div class="row">

              <div class="col-md-3 col-sm-4 col-12">
                <label>Expedition Name</label>
              </div>

              <div class="col-md-9 col-sm-8 col-12 ">
                <div class="form-group">
                  <input type="text" class="form-control form-control-sm" name="">
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-12">
                <label>Expedition Address</label>
              </div>

              <div class="col-md-9 col-sm-8 col-12 ">
                <div class="form-group">
                  <textarea class="form-control" name=""></textarea>
                </div>
              </div>
            </div>
            
            <div class="w-100 text-right">
              <button class="btn btn-primary" type="button">Simpan</button>
              <a href="#" class="btn btn-secondary">Kembali</a>
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
  
});
</script>
@endsection
