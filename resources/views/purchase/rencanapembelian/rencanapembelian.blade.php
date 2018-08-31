@extends('main')
@section('content')

@include('purchase.rencanapembelian.tambah')
@include('purchase.rencanapembelian.detail')

<style type="text/css">
 
</style>
<!-- partial -->
<div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb bg-info">
          <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
          <li class="breadcrumb-item">Purchase</li>
          <li class="breadcrumb-item active" aria-current="page">Request Order</li>
        </ol>
      </nav>
    </div>

    <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">

                    <div class="card-title">
                      <ul class="nav nav-tabs tab-solid  tab-solid-primary" role="tablist">
                        <li class="nav-item">
                          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#daftar" role="tab" aria-controls="daftar" aria-selected="true"><i class="fa fa-list"></i>List Request Order</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="tab-6-2" data-toggle="tab" href="#history" role="tab" aria-controls="history" aria-selected="false"><i class="mdi mdi-history"></i>History Request Order</a>
                        </li>
                        <!-- <li class="nav-item">
                          <a class="nav-link" id="tab-6-3" data-toggle="tab" href="#tab-ke-3" role="tab" aria-controls="tab-ke-3" aria-selected="false"><i class="mdi mdi-message-text-outline"></i>Contact</a>
                        </li> -->
                      </ul>
                    </div>

                        <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
                          <button type="button" class="btn btn-info" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
                        </div>

                    <div class="tab-content tab-content-solid">
                      <div class="tab-pane fade show active" id="daftar" role="tabpanel" aria-labelledby="tab-6-1">

                        <div class="table-responsive">
                          <table class="table table-hover table-bordered" id="table_datatable_rencana" cellspacing="0">
                            <thead class="bg-gradient-info">
                                <tr>
                                  <th class="wd-15p">Kode</th>
                                  <th class="wd-20p">Vendor</th>
                                  <th class="wd-15p">Amount Requested</th>
                                  <th class="wd-10p">Amount Approved</th>
                                  <th class="wd-10p">Detail</th>
                                  <th class="wd-15p">Action</th>
                                </tr>
                              </thead>
                              <tbody>

                                  
                              </tbody>
                                         
                            </table> 
                        </div>

                      </div> <!-- end div daftar -->

                      <div class="tab-pane fade" id="history" role="tabpanel" aria-labelledby="tab-6-2">
                        <div class="table-responsive">
                          <table class="table table-hover table-bordered " id="table_datatable_histori" style="width: 100%;" cellspacing="0">
                            <thead class="bg-gradient-info">
                              <tr>
                                <th class="wd-15p">Id</th>
                                <th class="wd-15p">Kode</th>
                                <th class="wd-15p">Item</th>
                                <th class="wd-15p">Amount Requested</th>
                                <th class="wd-10p">Amount Approved</th>
                                <th class="wd-10p">Status</th>
                              </tr>
                            </thead>

                            <tbody>
                            </tbody>
                          
                          </table> 
                        </div>
                      </div>
                      <div class="tab-pane fade" id="tab-ke-3" role="tabpanel" aria-labelledby="tab-6-3">
                        <!-- content -->
                      </div>
                      

                    </div> <!-- end div tab-content -->

                  </div><!-- end div card --> 
                </div>
    </div>
  </div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script type="text/javascript">
  $(document).ready(function(){

     $('#table_datatable_rencana').DataTable({
            processing: true,
            // responsive:true,
            serverSide: true,
            ajax: {
                url:'{{ route('datatable_rencanapembelian') }}',
            },
             columnDefs: [

                  {
                     targets: 0 ,
                     className: 'd_id center'
                  }, 
                  {
                     targets: 2 ,
                     className: 'right format_money'
                  },
                  {
                     targets: 5 ,
                     className: 'center format_money'
                  },
                  
                ],
            "columns": [
            { "data": "ro_code" },
            { "data": "s_company" },
            { "data": "ro_qty" },
            { "data": "ro_qty_approved" },
            { "data": "detail" },
            { "data": "aksi" },
            ]
      });

     $('#table_datatable_histori').DataTable({
            processing: true,
            // responsive:true,
            serverSide: true,
            ajax: {
                url:'{{ route('datatable_historypembelian') }}',
            },
             columnDefs: [

                  {
                     targets: 0 ,
                     className: 'left'
                  }, 
                  {
                     targets: 1 ,
                     className: 'right format_money'
                  },
                  {
                     targets: 3 ,
                     className: 'right format_money'
                  },
                  {
                     targets: 4 ,
                     className: 'right format_money'
                  },
                  {
                     targets: 5 ,
                     className: 'center'
                  },
                  
                ],
            "columns": [
            { "data": "rodt_code" },
            { "data": "rodt_id" },
            { "data": "i_name" },
            { "data": "rodt_qty" },
            { "data": "rodt_qty_approved" },
            { "data": "status" },
            ]
      });


    var table           = $("#t72a").DataTable();
    var rp_qty         = $("#rp_qty");
    var rp_item          = $("#rp_item");
    var rp_kodeitem       = $("#rp_kodeitem");

    var x = 1;
 
    $('#rp_qty').attr('disabled',true); 
    $('#rp_kodeitem').change(function(){
      var this_val = $(this).find(':selected').data('price');   
          if($(this).val() != '') {
            $('#rp_qty').attr('disabled',false);
          }else{
            $('#rp_qty').attr('disabled',true);          
          }    
      var price = $('#rp_item').val(accounting.formatMoney(this_val,"",0,'.',','));
    });


    rp_qty.keypress(function(e) {
      if(e.which == 13 || e.keyCode == 13){
        var qty = rp_qty.val();
        var harga_1 = rp_item.val();

        qty = qty.replace(/[^0-9\-]+/g,"");
        harga_1 = harga_1.replace(/[^0-9\-]+/g,"");

        var total = parseInt(harga_1)*parseInt(qty);
        table.row.add( [
            '<input type="text" id="item_kode[]"   name="ro_item_seq[]"    class="form-control input-sm min-width readonly" readonly value="'+ rp_kodeitem.val() +'">',
            '<input type="text" id="item_name[]"      class="form-control input-sm min-width readonly" value="'+ rp_kodeitem.find(':selected').data('name') +'">',
            '<input type="text" id="item_harga[]"   name="ro_unit_price_seq[]"    class="form-control input-sm min-width right readonly " value="'+ accounting.formatMoney(rp_kodeitem.find(':selected').data('price'),"",0,'.',',') +'">',
            '<input type="text" id="item_harga[]"   name="ro_price_seq[]"    class="form-control input-sm min-width right readonly total_price " value="'+ accounting.formatMoney(total,"",0,'.',',') +'">',
            '<input type="number" id="jumlah[]"   name="ro_qty_seq[]"    class="form-control input-sm min-width right readonly total_qty " value="'+ accounting.formatMoney(rp_qty.val(),"",0,'.',',') +'">',

            '<input type="text" id="unit_price[]"   name=""    class="form-control input-sm min-width right readonly" readonly  value="'+ rp_kodeitem.find(':selected').data('qty') +'">',
            '<button type="button" class="delete btn btn-outline-danger btn-sm"><i class="fa fa-trash-o"></i></button>',
        ] ).draw( false );
      
        x++;

        var total_price = 0;
        $('.total_price').each(function(){
          var total = $(this).val();
          total = total.replace(/[^0-9\-]+/g,"");
          total_price += parseInt(total);
        });
        $("input[name='ro_total_header']").val(accounting.formatMoney(total_price,"",0,'.',','));

        var total_qty = 0;
        $('.total_qty').each(function(){
          var total = $(this).val();
          total = total.replace(/[^0-9\-]+/g,"");
          total_qty += parseInt(total);
        });
        $("input[name='ro_qty_header']").val(accounting.formatMoney(total_qty,"",0,'.',','));

        rp_item.focus();
        rp_item.val('');
        rp_kodeitem.val('').trigger('change');
        rp_qty.val('');
      }
    } );
 
    

    $('#t72a tbody').on( 'click', '.delete', function () {
        table
            .row($(this).parents('tr'))
            .remove()
            .draw();

        var parents = $(this).parents('tr');
        var total_price_seq = $(parents).find('.total_price').val();
        var total_qty_seq = $(parents).find('.total_qty').val();
        var total_price_header = $("input[name='ro_total_header']").val();
        var total_qty_header = $("input[name='ro_qty_header']").val();

        total_price_header = total_price_header.replace(/[^0-9\-]+/g,"");
        total_qty_header = total_qty_header.replace(/[^0-9\-]+/g,"");
        total_price_seq = total_price_seq.replace(/[^0-9\-]+/g,"");
        total_qty_seq = total_qty_seq.replace(/[^0-9\-]+/g,"");

        var kurang_total = parseInt(total_price_header)-parseInt(total_price_seq);
        var kurang_qty = parseInt(total_qty_header)-parseInt(total_qty_seq);
        $("input[name='ro_total_header']").val(accounting.formatMoney(kurang_total,"",0,'.',','));
        $("input[name='ro_qty_header']").val(accounting.formatMoney(kurang_qty,"",0,'.',','));

    });

  $('#change_function').on("click", "#save_data",function(){
    $.ajax({
         type: "get",
         url: '{{ route('simpan_rencanapembelian') }}',
         data: $('#form-save').serialize(),
         success: function(data){
            var table_history = $('#table_datatable_histori').DataTable();
            var table_rencana = $('#table_datatable_rencana').DataTable();
            table_history.ajax.reload();
            table_rencana.ajax.reload();
            iziToast.success({
              icon: 'fas fa-check-circle',
              message: 'Data Telah Tersimpan!',
            });
            $('#tambah').modal('hide');
         },
         error: function(){
          iziToast.warning({
            icon: 'fa fa-times',
            message: 'Terjadi Kesalahan!',
          });
         },
         async: false
       });
  })

  // $('#ro_vendor_header').change(function(){
  //   var this_val = $(this).val();
  //     $.ajax({
  //        type: "get",
  //        url: '{{ route('kode_rencanapembelian') }}',
  //        data: {vendor:this_val},
  //        success: function(data){
  //           $('#ro_code').val(data);
  //        }
  //      });
  // })

  


  });
function detail(parm) {
    var par   = $(parm).parents('tr');
    var id    = $(par).find('.d_id').text();
    $('#detail_modal').modal('show');
    $.ajax({
       type: "get",
         url: '{{ route('detail_rencanapembelian') }}',
         data: {id:id},
         success: function(data){
          console.log(data);
          var array_nama='';
          $.each(data, function(i, item) {
              array_nama += '<tr>';
                array_nama += '<td><input type="hidden" class="form-control right" value="'+data[i].rodt_id+'" name="kode_detail[]">'+data[i].rodt_barang+' - '+data[i].i_name+'</td>';
                array_nama += '<td align="right"><input type="hidden" class="form-control right" value="'+data[i].rodt_code+'" name="kode[]">'+accounting.formatMoney(data[i].rodt_price,"",0,'.',',')+'</td>';
                array_nama += '<td align="right" class="qty">'+data[i].rodt_qty+'</td>';
                if (data[i].rodt_qty_approved != 0) { 
                    array_nama += '<td align="right"><input type="text"  name="approved[]" onkeyup="qty(this)" readonly value="'+data[i].rodt_qty_approved+'" class="form-control right qty_approved_value hanya_angka"></td>';
                }else{
                    array_nama += '<td align="right"><input type="text"  name="approved[]"  onkeyup="qty(this)" value="'+0+'" class="form-control right qty_approved_value hanya_angka"></td>';
                }
                
              array_nama += '</tr>';
          })
          $('#detail_rep').html(array_nama);  


         },
         error: function(){
          iziToast.warning({
            icon: 'fa fa-times',
            message: 'Terjadi Kesalahan!',
          });
         },
         async: false
       });
  }
  function qty(a){
      //HITUNG QTY PADA TABLE
      var parents_qty = $(a).parents('tr');    
      var qty_value = $(parents_qty).find('.qty').text();
      var qty_approved_value = $(parents_qty).find('.qty_approved_value').val();
      //regex
      //PERINGATAN MELEBIHI BATAS QTY
      if (parseInt(qty_approved_value) > parseInt(qty_value)) {
        iziToast.warning({
            icon: 'fa fa-times',
            message: 'Qty Melebihi Batas MAX!',
        });

        $(parents_qty).find('.qty_approved_value').val(0);

      }
    }

function hapus(parm){
    var par   = $(parm).parents('tr');
    var id    = $(par).find('.d_id').text();

    iziToast.show({
            overlay: true,
            close: false,
            timeout: 20000, 
            color: 'dark',
            icon: 'fa-exclamation-circle',
            title: 'Important!',
            message: 'Apakah Anda Yakin ?!',
            position: 'center',
            progressBarColor: 'rgb(0, 255, 184)',
            buttons: [
              [
                '<button style="background-color:red;">Delete</button>',
                function (instance, toast) {

                  $.ajax({
                   type: "get",
                     url: '{{ route('hapus_rencanapembelian') }}',
                     data: {id},
                     success: function(data){
                      console.log(data);
                      $('#tambah').modal('hide');
                      var table = $('#table-bundle').DataTable();
                      table.ajax.reload();

                      iziToast.success({
                        icon: 'fas fa-check-circle',
                        message: 'Data Telah Terhapus!',
                      });
                     
                     },
                     error: function(){
                      iziToast.warning({
                        icon: 'fa fa-times',
                        message: 'Terjadi Kesalahan!',
                      });
                     },
                     async: false
                   });
                 
                }
              ],
              [
                '<button style="background-color:#44d7c9;">Cancel</button>',
                function (instance, toast) {
                  instance.hide({
                    transitionOut: 'fadeOutUp'
                  }, toast);
                }
              ]
            ]
          });
    }


  $('#change_detail').on("click", "#approve_data",function(){
    iziToast.show({
            overlay: true,
            close: false,
            timeout: 20000, 
            color: 'dark',
            icon: 'fas fa-exclamation-circle',
            title: 'Important!',
            message: 'Apakah Anda Yakin ?!',
            position: 'center',
            progressBarColor: 'rgb(0, 255, 184)',
            buttons: [
              [
                '<button style="background-color:red;">Save</button>',
                function (instance, toast) {

                  
                  $.ajax({
                   type: "get",
                   url: '{{ route('approve_rencanapembelian') }}',
                   data: $('#form-detail').serialize(),
                   success: function(data){
                      $('#detail').modal('hide');
                      var table_history = $('#table_datatable_histori').DataTable();
                      var table_rencana = $('#table_datatable_rencana').DataTable();
                      table_history.ajax.reload();
                      table_rencana.ajax.reload();

                      iziToast.success({
                        icon: 'fas fa-check-circle',
                        message: 'Data Telah Tersimpan!',
                      });
                   },
                   error: function(){
                    iziToast.warning({
                      icon: 'fa fa-times',
                      message: 'Terjadi Kesalahan!',
                    });
                   },
                   async: false
                 });

                 
                }
              ],
              [
                '<button style="background-color:#44d7c9;">Cancel</button>',
                function (instance, toast) {
                  instance.hide({
                    transitionOut: 'fadeOutUp'
                  }, toast);
                }
              ]
            ]
          });



    
  })

  $('#ro_vendor_header').change(function(){
    var this_val = $(this).val();
      $.ajax({
         type: "get",
         url: '{{ route('kode_rencanapembelian') }}',
         data: {vendor:this_val},
         success: function(data){
            $('#ro_code').val(data);
         }
       });
  })

</script>
@endsection