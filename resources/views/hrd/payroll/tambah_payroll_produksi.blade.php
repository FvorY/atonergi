<!-- Modal -->
<div id="tambahproduksi" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary">
        <h4 class="modal-title">Tambah Payroll Produksi</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="row">
          
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Nama Tunjangan</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Jabatan</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <select class="form-control form-control-sm" id="filter">
                  <option disabled selected>--Pilih--</option>
                  <option value="ldr">Leader</option>
                  <option value="stf">Staff</option>
                  <option value="all" >Semua</option>
                </select>
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Gaji</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control currency" placeholder="RP. 0,00" data-thousands="." data-decimal="," data-prefix="RP. ">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Lembur</label>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="number" class="form-control" min="0">
              </div>
            </div>
            <div class="col-md-3 col-sm-12 col-xs-12">
              <label>Jam</label>
            </div>
          

         </div> <!-- End div row -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
        <button class="btn btn-primary" type="button">Simpan</button>
      </div>
    </div>

  </div>
</div>
