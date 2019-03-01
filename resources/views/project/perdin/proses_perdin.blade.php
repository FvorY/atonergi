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
          <li class="breadcrumb-item"><a href="{{route('perdin')}}">LPJ Perdin</a></li>
          <li class="breadcrumb-item active" aria-current="page">Process LPJ Perdin</li>
        </ol>
      </nav>
    </div>

  	<div class="col-lg-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Process LPJ Perdin</h4>
            

            <div class="row">

              <div class="col-md-3 col-sm-4 col-12">
                <label>Perdin Code</label>
              </div>

              <div class="col-md-9 col-sm-8 col-12">
                <div class="form-group">
                  <input type="text" class="form-control form-control-sm" readonly="" value="" name="">
                </div>
              </div>
              
              <div class="col-md-3 col-sm-4 col-12">
                <label>Perdin Date</label>
              </div>

              <div class="col-md-9 col-sm-8 col-12">
                <div class="form-group">
                  <input type="text" class="form-control form-control-sm" readonly="" value="{{date('d-m-Y')}}" name="">
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-12">
                <label>Customer</label>
              </div>

              <div class="col-md-9 col-sm-8 col-12">
                <div class="form-group">
                  <input type="text" class="form-control form-control-sm" readonly="" name="">
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-12">
                <label>Project</label>
              </div>

              <div class="col-md-9 col-sm-8 col-12">
                <div class="form-group">
                  <input type="text" class="form-control form-control-sm" readonly="" name="">
                </div>
              </div>

            </div>

            <hr>


            <div class="table-responsive">
              <table class="table table-bordered table-striped table-hover" id="table_perdin">
                <thead class="bg-gradient-info">
                  <tr>
                    <th rowspan="2" valign="middle">Tanggal</th>
                    <th rowspan="2" valign="middle">Keterangan</th>
                    <th colspan="2">Estimasi Budget</th>
                    <th rowspan="2" valign="middle">Real Budget</th>
                    <th rowspan="2" valign="middle">Total Price</th>
                    <th rowspan="2" valign="middle">Sisa Perdin</th>
                    <th rowspan="2" valign="middle">
                      <button class="btn btn-success btn-sm" type="button" id="button-tambahmantan"><i class="fa fa-plus"></i></button>
                    </th>
                  </tr>
                  <tr>
                    <th width="1%">Pax/Days/Unit</th>
                    <th width="15%">Price</th>
                  </tr>
                </thead>

                <tbody>
                  
                </tbody>
              </table>
            </div>
          
        </div>
        <div class="card-footer text-right">
          <button class="btn btn-info" type="button" id="btn-submit">Simpan</button>
          <a href="{{route('perdin')}}" class="btn btn-secondary">Back</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script type="text/javascript">
  
  $(document).ready(function(){

    $('.datepicker').datepicker({
        format:'dd-mm-yyyy'
      });

    var table = $('#table_perdin').DataTable({
      "columnDefs": [
        {
          "targets": 7 
          , 
           "align": "center"
        }
      ]
    });
    var counter_strike__battlefield = 0;

    $('#button-tambahmantan').click(function(){
      table.row.add([
        '<input class="form-control form-control-sm datepicker" value="{{date('d-m-Y')}}" type="text" name="">',
        '<input class="form-control form-control-sm" type="text" name="">',
        '<input class="form-control form-control-sm" type="number" min="0" name="">',
        '<input class="form-control form-control-sm text-right format_money" type="text" name="">',
        '<input class="form-control form-control-sm text-right format_money" type="text" name="">',
        '<input class="form-control form-control-sm text-right format_money" type="text" name="">',
        '<input class="form-control form-control-sm text-right format_money" type="text" name="">',
        '<button class="btn btn-danger btn-sm btn-hapusmantan" type="button"><i class="fa fa-trash-o"></i></button>'
        ]).draw(false);

      counter_strike__battlefield++;

     $('.datepicker').datepicker({
        format:'dd-mm-yyyy'
      });

    });

    $('#table_perdin tbody').on('click', '.btn-hapusmantan', function(){
      table.row($(this).parents('tr')).remove().draw();
    });

  });

</script>
@endsection
