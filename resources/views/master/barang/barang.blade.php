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

@include('master.barang.tambah')


<!-- partial -->
<div class="content-wrapper">
	<div class="col-lg-12">	
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb bg-info">
				<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item">Master</li>
				<li class="breadcrumb-item active" aria-current="page">Master Data Barang</li>
			</ol>
		</nav>
	</div>

	<div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
	                <h4 class="card-title">Master Data Barang</h4>
		                <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
		                  	<button type="button" class="btn btn-info" id="tombol_modal_tambah" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Data</button>
		                </div>
                  <div class="table-responsive">
                          <table id="t55" class="table table-hover table-bordered" cellspacing="0">
                            <thead class="bg-gradient-info">
                                <tr>
                                  <th class="wd-15p" width="5%">Item Code</th>
                                  <th class="wd-15p">Item Name</th>
                                  <th>Item Price</th>
                                  <th class="wd-15p" width="5%">Unit</th>
                                  <th class="wd-15p">Description Item</th>
                                  <th>Image</th>
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
<!-- content-wrapper ends -->
@endsection


@section('extra_script')
<script>

$(document).ready(function(){

  $('input[name="price"]').maskMoney({
    precision : 0,
    thousands:',',
  });

    $('#t55').DataTable({
            processing: true,
            // responsive:true,
            serverSide: true,
            ajax: {
                url:'{{ route("datatable_barang") }}',
            },
            columnDefs: [

                  {
                     targets: 0 ,
                     className: 'center i_id'
                  },
                  {
                     targets: 1,
                     className: 'i_nama'
                  },
                  {
                     targets: 2,
                     className: 'i_price'
                  },
                  {
                     targets: 4,
                     className: 'center'
                  },
                  {
                    targets: 5,
                    className: 'center'
                  }
                ],
            "columns": [
            { "data": "i_code" },
            { "data": "i_name" },
            { "data": "harga"},
            { "data": "i_unit" },
            { "data": "i_description" },
            { "data": "gambar"},
            { "data": "aksi" },
            
            ]
      });
  });

function change_image()
{
  if($('#cbcheck:checkbox:checked').length > 0)
  {
    $('.122mm').removeClass('d-none');
  } else {
    $('.122mm').addClass('d-none');

  }
}

$('#tombol_modal_tambah').click(function(){

    $('.122mm').removeClass('d-none');
    $('input[name="item_name"]').val('');
    $('#chooseFile').val('');
    $('#noFile').text('Choose Image...');
    $(".file-upload").removeClass('active');
    $('.preview_td').html('<img style="width: 100px;height: 100px;border:1px solid pink" id="output" >');
    $('select[name="type_barang"]').val('').trigger('change');
    $('input[name="unit"]').val('');
    $('input[name="price"]').val('');
    $('input[name="weight"]').val('');
    $('input[name="min_stock"]').val('');
    $('textarea[name="description"]').val('');
    $('input[name="item_codex"]').val('');

    $('input[name="item_name"]').removeClass('border-danger');
    $('#chooseFile');
    $('select[name="type_barang"]').removeClass('border-danger');
    $('input[name="unit"]').removeClass('border-danger');
    $('input[name="price"]').removeClass('border-danger');
    $('input[name="weight"]').removeClass('border-danger');
    $('input[name="min_stock"]').removeClass('border-danger');
    $('textarea[name="description"]');

    $('#ganti_tombol').html('<button class="btn btn-primary" type="button" onclick="simpan()">Save Data</button>');

    $("#check_change_image").html('');

  });

$('#chooseFile').bind('change', function () {
  var filename = $("#chooseFile").val();
  var fsize = $('#chooseFile')[0].files[0].size;
  if(fsize>2048576) //do something if file size more than 1 mb (1048576)
  {
      return false;
  }
  if (/^\s*$/.test(filename)) {
    $(".file-upload").removeClass('active');
    $("#noFile").text("No file chosen..."); 
  }
  else {
    $(".file-upload").addClass('active');
    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
  }
});

var loadFile = function(event) {
  var fsize = $('#chooseFile')[0].files[0].size;
  if(fsize>1048576) //do something if file size more than 1 mb (1048576)
  {
      iziToast.warning({
        icon: 'fa fa-times',
        message: 'File Is To Big!',
      });
      return false;
  }
  var reader = new FileReader();
  reader.onload = function(){
    var output = document.getElementById('output');
    output.src = reader.result;
  };
  reader.readAsDataURL(event.target.files[0]);
};

function simpan(){

    var item  = $('input[name="item_name"]');
    var img   = $('#chooseFile');
    var type_barang  = $('select[name="type_barang"]');
    var unit = $('input[name="unit"]');
    var price = $('input[name="price"]');
    var weight = $('input[name="weight"]');
    var min_stock = $('input[name="min_stock"]');
    var description = $('textarea[name="description"]');

    if(item.val()=='' || img.val()=='' || type_barang.val()=='' || unit.val()=='' || price.val()=='' || weight.val()=='' || min_stock.val()=='')
    {
      if(item.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Item name cannot be empty!',
            });
        item.addClass('border-danger');
      } else {
        item.removeClass('border-danger');
      }
      if(img.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Image cannot be empty!',
            });
        img.addClass('border-danger');
      } else {
        img.removeClass('border-danger');
      }
      if(type_barang.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Item type cannot be empty!',
            });
        type_barang.addClass('border-danger');
      } else {
        type_barang.removeClass('border-danger');
      }
      if(unit.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Unit# cannot be empty!',
            });
        unit.addClass('border-danger');
      } else {
        unit.removeClass('border-danger');
      }
      if(price.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Item price cannot be empty!',
            });
        price.addClass('border-danger');
      } else {
        price.removeClass('border-danger');
      }
      if(weight.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Weight cannot be empty!',
            });
        weight.addClass('border-danger');
      } else {
        weight.removeClass('border-danger');
      }
      if(min_stock.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Min stock cannot be empty!',
            });
        min_stock.addClass('border-danger');
      } else {
        min_stock.removeClass('border-danger');
      }
      return false;
    }
    var formdata = new FormData();  
    formdata.append( 'files', $('#chooseFile')[0].files[0]);
    $.ajax({
         type: "post",
         url: baseUrl + '/master/barang/barangproses?'+$('#simpan_barang').serialize(),
         data: formdata,
         processData: false, //important
         contentType: false,
         cache: false,
         success: function(data){
            $('#tambah').modal('hide');
            var table = $('#t55').DataTable();
            table.ajax.reload();

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


function edit(m1a2)
{
    $('input[name="item_name"]').removeClass('border-danger');
    $('select[name="type_barang"]').removeClass('border-danger');
    $('input[name="unit"]').removeClass('border-danger');
    $('input[name="price"]').removeClass('border-danger');
    $('input[name="weight"]').removeClass('border-danger');
    $('input[name="min_stock"]').removeClass('border-danger');

    var par   = $(m1a2).parents('tr');
    var id    = $(par).find('.i_id').text();
    $.ajax({
       type: "get",
         url: baseUrl + '/master/barang/barang_edit',
         data: {id},
         success: function(data){
          $('#tambah').modal('show');
          
          console.log(data[0].i_image);
          

            var i_id      = $("input[name='item_codex']").val(data[0].i_id);
            var i_code    = $("input[name='item_name']").val(data[0].i_name);
            var i_unit      = $("input[name='unit']").val(data[0].i_unit);
            var i_weight      = $("input[name='weight']").val(data[0].i_weight);
            var i_price      = $("input[name='price']").val(data[0].i_price);
            var i_minstock      = $("input[name='min_stock']").val(data[0].i_minstock);
            var i_description      = $("textarea[name='description']").val(data[0].i_description);
            var i_type      = $("select[name='type_barang']").val(data[0].i_type).trigger('change');
            var i_unit      = $("input[name='unit']").val(data[0].i_unit);

            if(data[0].i_image!='' || data[0].i_image!=null){
              $('#output').attr("src", '{{ route('barang_thumbnail') }}'+'/'+data[0].i_image);
              $('.file-upload').addClass('active');
              $("#noFile").text(data[0].i_image); 
            } else {
              $('#chooseFile').val('');
              $('#noFile').text('Choose Image...');
              $(".file-upload").removeClass('active');
              $('.preview_td').html('<img style="width: 100px;height: 100px;border:1px solid pink" id="output" >');
            }
            $('.122mm').addClass('d-none');

            $('#ganti_tombol').html('<button class="btn btn-primary" type="button" onclick="update()">Update Data</button>')

            $('#check_change_image').html('<label class="form-check-label">'+
                              '<input class="form-check-input" type="checkbox" name="cbcheck" id="cbcheck" value="centang" onchange="change_image()">'+
                              'Check for change image'+
                          '<i class="input-helper"></i></label>');
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


function update() {

  var item  = $('input[name="item_name"]');
  var img   = $('#chooseFile');
  var type_barang  = $('select[name="type_barang"]');
  var unit = $('input[name="unit"]');
  var price = $('input[name="price"]');
  var weight = $('input[name="weight"]');
  var min_stock = $('input[name="min_stock"]');
  var description = $('textarea[name="description"]');

    if(item.val()=='' || type_barang.val()=='' || unit.val()=='' || price.val()=='' || weight.val()=='' || min_stock.val()=='')
    {
      if(item.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Item name cannot be empty!',
            });
        item.addClass('border-danger');
      } else {
        item.removeClass('border-danger');
      }
      if(type_barang.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Item type cannot be empty!',
            });
        type_barang.addClass('border-danger');
      } else {
        type_barang.removeClass('border-danger');
      }
      if(unit.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Unit# cannot be empty!',
            });
        unit.addClass('border-danger');
      } else {
        unit.removeClass('border-danger');
      }
      if(price.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Item price cannot be empty!',
            });
        price.addClass('border-danger');
      } else {
        price.removeClass('border-danger');
      }
      if(weight.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Weight cannot be empty!',
            });
        weight.addClass('border-danger');
      } else {
        weight.removeClass('border-danger');
      }
      if(min_stock.val()==''){
        iziToast.error({
              icon: 'fa fa-exclamation-circle ',
              message: 'Min stock cannot be empty!',
            });
        min_stock.addClass('border-danger');
      } else {
        min_stock.removeClass('border-danger');
      }
      return false;
    }

    var formdata = new FormData();  
    formdata.append( 'files', $('#chooseFile')[0].files[0]);

      $.ajax({
          processData: false, //important
          contentType: false,
          cache: false,
          type: "post",
          url: baseUrl + '/master/barang/barang_update?'+$('#simpan_barang').serialize(),
          data: formdata,
          success: function(data){
            $('#tambah').modal('hide');
            var table = $('#t55').DataTable();
            table.ajax.reload();

            iziToast.success({
              icon: 'fas fa-check-circle',
              message: 'Data Telah Terupdate!',
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


function hapus(a) {
    var par   = $(a).parents('tr');
    var id    = $(par).find('.i_id').text();
    
    iziToast.show({
            overlay: true,
            close: false,
            timeout: 20000, 
            color: 'dark',
            icon: 'fas fa-question-circle',
            title: 'Important!',
            message: 'Apakah Anda Yakin ?!',
            position: 'center',
            progressBarColor: 'rgb(0, 255, 184)',
            buttons: [
              [
                '<button style="background-color:red;">Delete</button>',
                function (instance, toast) {

                  $.ajax({
                      url: baseUrl +'/master/barang/baranghapus',
                      type:'get',
                      data: {id},
                      dataType:'json',
                      success:function(data){        
                        var table = $('#t55').DataTable();
                        table.ajax.reload();
                        console.log(data);
                        iziToast.success({
                          icon: 'fa fa-check',
                          message: 'Data Berhasil Dihapus!',
                        });
                        
                      },
                      error:function(){
                        iziToast.warning({
                          icon: 'fa fa-times',
                          message: 'Terjadi Kesalahan!',
                        });
                      }
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

</script>
@endsection