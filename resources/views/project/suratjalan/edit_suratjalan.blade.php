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
                    <form id="formdata">
                      <input type="hidden" readonly name="s_id" value="{{ $data->s_id }}">
                    <div class="row">
                      <div class="col-md-3 col-sm-4 col-xs-12">
                        <label>No. SO</label>
                      </div>

                      <div class="col-md-4 col-sm-8 col-xs-12">
                        <div class="form-group">
                          <input type="text" class="form-control form-control-small" name="nodo" readonly value="{{ $data->s_so }}">
                        </div>
                      </div>
                    </div>

                    <hr>

                    <div class="row" id="div-so">
                      <div class="col-md-6 col-sm-12">
                        <div class="row">

                          <div class="col-md-6 col-sm-12">
                            <label>No Surat Jalan</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <input type="text" class="form-control" name="nodo" readonly value="{{ $data->s_code }}">
                            </div>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <label>Expedition</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <select class="form-control form-control-sm select2" name="ekspedisi" id="ekspedisi" onchange="eksup()">
                                <option value="" disabled="" selected="">--Pilih--</option>
                                @foreach ($ekspedisi as $key => $value)
                                  <?php $selected = ($value->e_id == $data->s_ekspedisi) ? 'selected' : '' ?>
                                  <option value="{{$value->e_id}}" {{ $selected }}>{{$value->e_name}}</option>
                                @endforeach
                              </select>
                            </div>
                          </div>

                          @foreach ($ekspedisi as $key => $value)
                            <input type="hidden" name="eksaddress" id="eksaddress{{$value->e_id}}" value="{{$value->e_address}}">
                          @endforeach

                          <div class="col-md-6 col-sm-12">
                            <label>Expedition Address</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <textarea class="form-control" rows="5" readonly="" name="eksaddress">{{ $data->e_address }}</textarea>
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
                              <input type="text" class="form-control form-control-sm" readonly="" name="customer" value="{{ $data->c_name }}">
                            </div>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <label>Customer Address</label>
                          </div>

                          <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                              <textarea class="form-control" readonly="" name="cusaddress">{{ $data->c_address }}</textarea>
                            </div>
                          </div>

                        </div>

                      </div>


                      <div class="table-responsive" style="margin-top: 30px;">
                        <table class="table table-bordered table-striped table-hover" cellspacing="0" id="table_barang">
                          <thead class="bg-gradient-info">
                            <tr>
                              <th width="60%">Item Name</th>
                              <th width="20%">Qty</th>
                              <th width="20%">Unit</th>
                            </tr>
                          </thead>
                          <tbody>
                            @foreach($quotation as $key => $quote)
                              <tr>
                                <td><input type="text" class="form-control form-control-sm" readonly="" value="{{ $quote->i_name }}"></td>
                                <td><input type="text" class="form-control form-control-sm" readonly="" value="{{ $quote->qd_qty }}"></td>
                                <td><input type="text" class="form-control form-control-sm" readonly="" value="{{ $quote->u_unit }}"></td>
                              </tr>
                            @endforeach
                          </tbody>
                        </table>
                      </div>

                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <label>Banyaknya</label>
                        </div>
                        <div class="col-md-3 col-sm-12 col-xs-12">
                          <div class="form-group item_div">
                            <input type="text" class="form-control" name="banyaknya" id="banyaknya" value="">
                          </div>
                        </div>
                        <div class="col-md-2 col-sm-6 col-xs-12">
                          <label>Nama Barang</label>
                        </div>
                        <div class="col-md-3 col-sm-8 col-xs-12">
                          <div class="form-group">
                            <input type="text" class="form-control form-control-sm" name="itemname" id="itemname">
                          </div>
                        </div>

                      <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover" cellspacing="0" id="tableinput">
                          <thead class="bg-gradient-info">
                            <tr>
                              <th width="10%">Banyaknya</th>
                              <th width="85%">Nama Barang</th>
                              <th width="5%">Action</th>
                            </tr>
                          </thead>

                          <tbody>
                            @foreach($dt as $key => $detail)
                              <tr>
                                <td><input type="text" readonly name="itemin[]" class="form-control input-sm min-width" value="{{ $detail->sd_banyaknya }}"></td>
                                <td><input type="text" readonly name="banyakin[]" class="form-control input-sm min-width" value="{{ $detail->sd_barang }}"></td>
                                <td><center><button type="button" class="delete btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i></button></center></td>
                              </tr>
                            @endforeach
                          </tbody>
                        </table>
                      </div>

                    </div>

                  </form>
                    <hr>
                    <div class="text-right w-100">
                      <button class="btn btn-primary" type="button" onclick="simpan()">Simpan</button>
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
var table, counter_strike__battlefield, tableinput;
$(document).ready(function(){

  table = $('#table_barang').DataTable();
  tableinput = $('#tableinput').DataTable();
  counter_strike__battlefield   = 0;

  $('#select-so').change(function(){
    var ini, divso;

    ini   = $(this);
    divso = $('#div-so');
    table.clear().draw();

    if (ini.val() !== '') {
      divso.removeClass('d-none');

      $.ajax({
        type: 'get',
        data: {so:ini.val()},
        dataType: 'json',
        url: baseUrl + '/project/suratjalan/getso',
        success : function(response){
                for (var i = 0; i < response.length; i++) {
                  table.row.add([
                    '<input type="text" class="form-control form-control-sm" readonly="" value="'+response[i].i_name+'">',
                    '<input type="text" class="form-control form-control-sm" readonly="" value="'+response[i].qd_qty+'">',
                    '<input type="text" class="form-control form-control-sm" readonly="" value="'+response[i].u_unit+'">'
                    ]).draw();
                }

              $('input[name=customer]').val(response[0].c_name);
              $('textarea[name=cusaddress]').val(response[0].c_address);
        }
      })

      counter_strike__battlefield++;
    } else {
      table.clear().draw();
      divso.addClass('d-none');
    }
  });
});

function eksup(){
  var eks = $('#ekspedisi');

  var val = eks.val();

  var address = $('#eksaddress'+val).val();

  $('textarea[name=eksaddress]').val(address);
}

function simpan(){
  $.ajax({
    type: 'get',
    data: $('#formdata').serialize(),
    dataType: 'json',
    url: baseUrl + '/project/suratjalan/updatesj',
    success : function(response){
      if (response.status == 'berhasil') {
        iziToast.success({
            icon: 'fa fa-trash',
            message: 'Berhasil Disimpan!',
        });
        setTimeout(function () {
          window.location.href = "{{route('suratjalan')}}";
        }, 100);
      } else if (true) {
        iziToast.warning({
          icon: 'fa fa-info',
          message: 'No DO sudah digunakan!',
        });
      } else {
        iziToast.warning({
            icon: 'fa fa-info',
            message: 'Periksa kembali data anda!',
        });
      }
    }
  });
}

$('#itemname').keypress(function(e){
  if(e.which == 13 || e.keyCode == 13){
    var itemname = $('#itemname').val();
    var banyaknya = $('#banyaknya').val();

    if (banyaknya != "" || itemname != "") {
        tableinput.row.add([
          '<input type="text" readonly name="itemin[]" class="form-control input-sm min-width" value="'+ banyaknya +'">',
          '<input type="text" readonly name="banyakin[]" class="form-control input-sm min-width" value="'+ itemname +'">',
          '<center><button type="button" class="delete btn btn-outline-danger btn-sm"><i class="fa fa-trash"></i></button></center>',
        ]).draw(false);
    }
    $('#itemname').val('');
    $('#banyaknya').val('');
  }
});

$('#tableinput tbody').on( 'click', '.delete', function () {
  var tableacc       = $("#tableinput").DataTable();

    tableacc
        .row( $(this).parents('tr') )
        .remove()
        .draw();
});
</script>
@endsection
