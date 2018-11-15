<!-- Modal -->
<div id="editmanagement" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary">
        <h4 class="modal-title">Edit Manajemen Payroll</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form id="data_editm">
        <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Nama Gaji</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" name="nm_gaji" class="form-control" id="nm_gaji">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Jabatan</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <select class="form-control form-control-sm select2" name="c_jabatan" id="c_jabatanedit">
                  <option value="">--Pilih--</option>
                  @foreach ($jabatan as $key => $value)
                    <option value="{{$value->c_id}}">{{$value->c_posisi}}</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Jumlah Gaji</label>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="jumlah">    -->
                <input type="text" class="form-control currency" name="jumlahgaji" id="jumlahgaji" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="jumlah">
              </div>
            </div>
            <div class="col-md-3 col-sm-12 alamraya-no-padding">
              <span class="input-group-append">
                <button type="button" class="btn btn-primary btn-sm icon-btn ml-2" onclick="samakan()">
                  Samakan
                </button>
              </span>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>SD</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="sd">    -->
                <input type="text" class="form-control currency" name="c_sd" id="c_sd" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="sd">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>SMP</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="smp">    -->
                <input type="text" class="form-control currency" name="c_smp" id="c_smp" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="smp">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>SMA</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="sma">    -->
                <input type="text" class="form-control currency" name="c_sma" id="c_sma" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="sma">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>SMK</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="sma">    -->
                <input type="text" class="form-control currency" name="c_smk" id="c_smk" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="smk">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>D1</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="d1">    -->
                <input type="text" class="form-control currency" name="c_d1" id="c_d1" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="d1">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>D2</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="d2">    -->
                <input type="text" class="form-control currency" name="c_d2" id="c_d2" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="d2">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>D3</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="d3">    -->
                <input type="text" class="form-control currency" name="c_d3" id="c_d3" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="d3">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>S1</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <!-- <input type="number" class="form-control" min="0" id="s1">    -->
                <input type="text" class="form-control currency" name="c_s1" id="c_s1" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " id="s1">
              </div>
            </div>

         </div> <!-- End div row -->
         </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
        <button class="btn btn-primary" type="button" id="updatem" onclick="updatem()">Simpan</button>
      </div>
    </div>

  </div>
</div>
