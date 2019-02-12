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
          <li class="breadcrumb-item"><a href="{{route('suratjalan')}}">Surat Jalan</a></li>
          <li class="breadcrumb-item active" aria-current="page">Tambah Surat Jalan</li>
        </ol>
      </nav>
    </div>
  	<div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Tambah Surat Jalan</h4>
                    <div class="row">
                      <div class="col-md-3 col-sm-4 col-xs-12">
                        <label>Pilih No. SO</label>
                      </div>

                      <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="form-group">
                          <select class="form-control input-sm select2" id="select-so">
                            <option value="" selected="" disabled="">--Pilih--</option>
                            <option value="1">ini-nomor-so-123</option>
                          </select>
                        </div>
                      </div>
                    </div>

                    <hr>

                    <div class="row d-none" id="div-so">
                      <div class="col-md-6 col-sm-12">
                        <div class="row">

                          <div class="col-md-6 col-sm-12">
                            <label>Expedition</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <select class="form-control form-control-sm select2">
                                <option value="" disabled="" selected="">--Pilih--</option>
                              </select>
                            </div>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <label>Expedition Address</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <textarea class="form-control" rows="5" readonly="" name=""></textarea>
                            </div>
                          </div>

                        </div>

                      </div>

                      <div class="col-md-6 col-sm-12">
                        <div class="row">

                          <div class="col-md-6 col-sm-12">
                            <label>Customer</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <input type="text" class="form-control form-control-sm" readonly="" name="">
                            </div>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <label>Order By</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <input type="text" class="form-control form-control-sm" readonly="" name="">
                            </div>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <label>Customer Address</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <textarea class="form-control" readonly="" name=""></textarea>
                            </div>
                          </div>

                        </div>

                      </div>


                      <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover" cellspacing="0" id="table_barang">
                          <thead class="bg-gradient-info">
                            <tr>
                              <th width="80%">Item Name</th>
                              <th width="20%">Qty</th>
                              <th width="20%">Unit</th>
                            </tr>
                          </thead>
                          <tbody>
                            
                          </tbody>
                        </table>
                      </div>
                      
                    </div>


                    <hr>
                    <div class="text-right w-100">
                      <button class="btn btn-primary" type="button" id="btn-simpnanse">Simpan</button>
                      <a href="{{route('suratjalan')}}" class="btn btn-secondary">Kembali</a>
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
  var table, counter_strike__battlefield;

  table = $('#table_barang').DataTable();
  counter_strike__battlefield   = 0;

  $('#select-so').change(function(){
    var ini, divso;

    ini   = $(this);
    divso = $('#div-so');
    table.clear().draw();

    if (ini.val() !== '') {
      divso.removeClass('d-none');

      table.row.add([
        '<input type="text" class="form-control form-control-sm" readonly="" value="Pompa Air" value="">',
        '<input type="text" class="form-control form-control-sm" readonly="" value="10" value="">',
        '<input type="text" class="form-control form-control-sm" readonly="" value="Pcs" value="">'
        ]).draw();
      table.row.add([
        '<input type="text" class="form-control form-control-sm" readonly="" value="Pompa Pasir" value="">',
        '<input type="text" class="form-control form-control-sm" readonly="" value="10" value="">',
        '<input type="text" class="form-control form-control-sm" readonly="" value="Pcs" value="">'
        ]).draw();
      table.row.add([
        '<input type="text" class="form-control form-control-sm" readonly="" value="Pompa Api" value="">',
        '<input type="text" class="form-control form-control-sm" readonly="" value="10" value="">',
        '<input type="text" class="form-control form-control-sm" readonly="" value="Pcs" value="">'
        ]).draw();

      counter_strike__battlefield++;
    } else {
      table.clear().draw();
      divso.addClass('d-none');
    }
  });
});
</script>
@endsection
