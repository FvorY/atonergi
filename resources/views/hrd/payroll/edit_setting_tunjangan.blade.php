<!-- Modal -->
<div id="editsettunjangan" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Edit Setting Tunjangan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form id="datasetting">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <label>Nama Pegawai</label>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control" value="" disabled id="nama">
            </div>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <label>Divisi</label>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control" value="" disabled id="divisi">
            </div>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <label>Jabatan</label>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control" value="" disabled id="jabatan">
            </div>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <label>Daftar Tunjangan (Ceklist pada tunjangan terpilih)</label>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <button type="button" class="btn btn-success btn-sm btn-check-all" >Check all</button>
            <button type="button" class="btn btn-default btn-sm btn-uncheck-all">Uncheck all</button>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12" id="showtunjangan">
          </div>
       </div> <!-- End div row -->
        </form>
        <div class="row">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
        <button class="btn btn-primary" onclick="simpan()" id="btnsimpan" type="button">Simpan</button>
      </div>
    </div>

  </div>
</div>
