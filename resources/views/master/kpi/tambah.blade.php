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
  				<li class="breadcrumb-item active" aria-current="page">Form Master KPI</li>
  			</ol>
  		</nav>
  	</div>
  	<div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Master KPI</h4>
                    <form method="POST" id="form-save" name="formSave">
                      {{ csrf_field() }}
                      <div class="col-md-12 col-sm-12 col-xs-12 tamma-bg div-form-area" style="margin-bottom: 20px; padding-bottom:5px;padding-top:15px;padding-left:-10px;padding-right: -10px; ">

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Divisi<span style="color: red">*</span></label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group" id="divSelectDivisi">
                            <select class="form-control input-sm select2" id="divisi" name="divisi" style="width: 100% !important;">
                            </select>
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Jabatan<span style="color: red">*</span></label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group" id="divSelectJabatan">
                            <select class="form-control input-sm select2" id="jabatan" name="jabatan" style="width: 100% !important;" disabled>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Nama Pegawai<span style="color: red">*</span></label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group" id="divSelectPegawai">
                            <select class="form-control input-sm select2" id="pegawai" name="pegawai" style="width: 100% !important;" disabled>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Nama Indikator<span style="color: red">*</span></label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group">
                            <input type="text" id="indikator" name="indikator" class="form-control input-sm" value="">
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Deadline</label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group">
                            <input type="text" id="deadline" name="deadline" class="form-control input-sm datepicker2" value="">
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Bobot KPI<span style="color: red">*</span></label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group">
                            <input type="text" id="bobot" name="bobot" class="form-control input-sm" value="">
                          </div>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-12">
                          <label class="tebal">Target<span style="color: red">*</span></label>
                        </div>

                        <div class="col-md-9 col-sm-8 col-xs-12">
                          <div class="form-group">
                            <input type="text" id="targetkpi" name="targetkpi" class="form-control input-sm" value="">
                          </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                          <label class="tebal" style="color: red; float: left;">Keterangan : * Wajib diisi.</label>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12" align="right" id="change_function">
                          <button type="button" id="btn_simpan" class="btn btn-primary" onclick="simpanData()">Simpan Data</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
      </div>
  </div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
  <script src="{{ asset('assets/validation/jquery.validate.js') }}"></script>
  <script type="text/javascript">

    $( document ).ready(function() {
      //fix to issue select2 on modal when opening in firefox
      $.fn.modal.Constructor.prototype.enforceFocus = function() {};
      var extensions = {
          "sFilterInput": "form-control input-sm",
          "sLengthSelect": "form-control input-sm"
      }
      // Used when bJQueryUI is false
      $.extend($.fn.dataTableExt.oStdClasses, extensions);
      // Used when bJQueryUI is true
      $.extend($.fn.dataTableExt.oJUIClasses, extensions);

      $('.datepicker2').datepicker({
        autoclose: true,
        format:"dd-mm-yyyy"
      }).datepicker("setDate", "0");

      //select2
      $('.select2').select2({
      });

      $("#divisi" ).select2({
        placeholder: "Pilih Divisi...",
        ajax: {
          url: baseUrl + '/master/kpi/lookup-data-divisi',
          dataType: 'json',
          data: function (params) {
            return {
                q: $.trim(params.term)
            };
          },
          processResults: function (data) {
              return {
                  results: data
              };
          },
          cache: true
        },
      });

      $('#divisi').change(function()
      {
        if($(this).val() != ""){
          $('#divSelectDivisi').removeClass('has-error').addClass('has-valid');
          $('#jabatan').empty().attr('disabled', false);
          $('#pegawai').empty().attr('disabled', false);
        }else{
          $('#divSelectDivisi').addClass('has-error').removeClass('has-valid');
          $('#jabatan').empty().attr('disabled', true);
          $('#pegawai').empty().attr('disabled', true);
        }

        var divisi = $('#divisi').val();
        $("#jabatan").select2({
          placeholder: "Pilih Jabatan...",
          ajax: {
            url: baseUrl + '/master/kpi/lookup-data-jabatan',
            dataType: 'json',
            data: function (params) {
              return {
                  q : $.trim(params.term),
                  divisi : divisi
              };
            },
            processResults: function (data) {
                return {
                    results: data
                };
            },
            cache: true
          },
        });
      });

      $('#jabatan').change(function()
      {
        if($(this).val() != ""){
          $('#divSelectJabatan').removeClass('has-error').addClass('has-valid');
          $('#pegawai').empty().attr('disabled', false);
        }else{
          $('#divSelectDivisi').addClass('has-error').removeClass('has-valid');
          $('#pegawai').empty().attr('disabled', true);
        }

        var divisi = $('#divisi').val();
        var jabatan = $('#jabatan').val();
        $("#pegawai").select2({
          placeholder: "Pilih Pegawai...",
          ajax: {
            url: baseUrl + '/master/kpi/lookup-data-pegawai',
            dataType: 'json',
            data: function (params) {
              return {
                  q : $.trim(params.term),
                  divisi : divisi,
                  jabatan : jabatan
              };
            },
            processResults: function (data) {
                return {
                    results: data
                };
            },
            cache: true
          },
        });
      });

      //validasi
      $("#form-save").validate({
        // Specify validation rules
        rules:{
            divisi : "required",
            jabatan : "required",
            pegawai : "required",
            indikator : "required",
            bobot : "required",
            targetkpi : "required",
        },
        errorPlacement: function() {
            return false;
        },
        submitHandler: function(form) {
          form.submit();
        }
      });

      $(document).on('click', '.btn_remove', function(){
        var button_id = $(this).attr('id');
        $('#row'+button_id+'').remove();
      });

    }); //end jquery

    function simpanData() {
      iziToast.question({
        close: false,
        overlay: true,
        displayMode: 'once',
        //zindex: 999,
        title: 'Simpan Data Master KPI',
        message: 'Apakah anda yakin ?',
        position: 'center',
        buttons: [
          ['<button><b>Ya</b></button>', function (instance, toast) {
            var IsValid = $("form[name='formSave']").valid();
            if(IsValid)
            {
              $('.div-form-area input, .div-form-area select').each(
                function(index){
                  var input = $(this);
                  $('#'+input.attr('id')).removeClass('has-error');
                  $('#divSelectDivisi').removeClass('has-error');
                  $('#divSelectJabatan').removeClass('has-error');
                  $('#divSelectPegawai').removeClass('has-error');
                }
              );
              $('#btn_simpan').text('Saving...');
              $('#btn_simpan').attr('disabled',true);
              $.ajax({
                url : baseUrl + "/master/kpi/simpan-kpi",
                type: "POST",
                dataType: "JSON",
                data: $('#form-save').serialize(),
                success: function(response)
                {
                  if(response.status == "sukses")
                  {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                    iziToast.success({
                      position: 'center', //center, bottomRight, bottomLeft, topRight, topLeft, topCenter, bottomCenter
                      title: 'Pemberitahuan',
                      message: response.pesan,
                      onClosing: function(instance, toast, closedBy){
                        $('#btn_simpan').text('Submit'); //change button text
                        $('#btn_simpan').attr('disabled',false); //set button enable
                        window.location.href = baseUrl+"/master/kpi/index";
                      }
                    });
                  }
                  else
                  {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                    iziToast.error({
                      position: 'center', //center, bottomRight, bottomLeft, topRight, topLeft, topCenter, bottomCenter
                      title: 'Pemberitahuan',
                      message: response.pesan,
                      onClosing: function(instance, toast, closedBy){
                        $('#btn_simpan').text('Submit'); //change button text
                        $('#btn_simpan').attr('disabled',false); //set button enable
                        window.location.href = baseUrl+"/master/kpi/index";
                      }
                    });
                  }
                },
                error: function(){
                  instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                  iziToast.warning({
                    icon: 'fa fa-times',
                    message: 'Terjadi Kesalahan!'
                  });
                },
                async: false
              });
            }
            else
            {
              instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
              iziToast.warning({
                position: 'center',
                message: "Mohon Lengkapi data form !",
                onClosing: function(instance, toast, closedBy){
                  $('.div-form-area input, .div-form-area select').each(
                    function(index){
                      var input = $(this);
                      $('#'+input.attr('id')).addClass('has-error');
                      $('#divSelectDivisi').addClass('has-error');
                      $('#divSelectJabatan').addClass('has-error');
                      $('#divSelectPegawai').addClass('has-error');
                    }
                  );
                }
              });
            } //end check valid
          }, true],
          ['<button>Tidak</button>', function (instance, toast) {
            instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
          }],
        ]
      });
    }

    function randString(angka)
    {
      var text = "";
      var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

      for (var i = 0; i < angka; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));

      return text;
    }
  </script>
@endsection
