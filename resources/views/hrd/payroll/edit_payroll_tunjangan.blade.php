<!-- Modal -->
<div id="edittunjangan" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary">
        <h4 class="modal-title">Update Payroll Tunjangan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <form id="form_update_tunj">
        <div class="modal-body">
          <div class="row">

              <div class="col-md-12 col-sm-12 col-xs-12">
                <label>Nama Tunjangan</label>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="form-group">
                  {{csrf_field()}}
                  <input type="hidden" name="tman_id">
                  <input type="text" class="form-control" name="tman_nama">
                </div>
              </div>  
              <div class="col-md-12 col-sm-12 col-xs-12">
                <label>Jabatan</label>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="form-group">
                  <select class="form-control form-control-sm" id="filter" name="tman_levelpeg">
                    <option value='' selected>--Pilih--</option>
                    <option value="LD">Leader</option>
                    <option value="ST">Staff</option>
                    <option value="AL" >Semua</option>
                  </select>
                </div>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <label>Periode</label>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="form-group">
                  <select class="form-control form-control-sm" id="filter" name="tman_periode">
                    <option value="" selected>--Pilih--</option>
                    <option value="ST">Statis</option>
                    <option value="JM">Jam</option>
                    <option value="HR">Hari</option>
                    <option value="MG">Minggu</option>
                    <option value="BL">Bulan</option>
                    <option value="TH">Tahun</option>
                  </select>
                </div>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <label>Nilai Tunjangan</label>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="form-group">
                  <input type="text" class="form-control currency" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. " name="tman_value">
                </div>
              </div>
            

           </div> <!-- End div row -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
          <button class="btn btn-primary" type="button" id="tunj_update_btn">Simpan</button>
        </div>
      </form>
    </div>

  </div>
</div>
