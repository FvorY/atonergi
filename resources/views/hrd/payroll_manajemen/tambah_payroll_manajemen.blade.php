<!-- Modal -->
<div id="tambahpayman" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-primary">
        <h4 class="modal-title">Tambah Payroll Manajemen</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form id="formtambah">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Periode (Mulai - Selesai)</label>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="form-group">
                <div id="datepicker-popup" class="input-group date datepicker">
                    <input type="text" class="form-control input" name="start" placeholder="dd-mm-yyyy">
                    <div class="input-group-addon alamraya-input-group-addon">
                      <span class="mdi mdi-calendar"></span>
                    </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="form-group">
                <div id="datepicker-popup" class="input-group date datepicker">
                    <input type="text" class="form-control input" name="end" placeholder="dd-mm-yyyy">
                    <div class="input-group-addon alamraya-input-group-addon">
                      <span class="mdi mdi-calendar"></span>
                    </div>
                </div>
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Divisi</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <select class="form-control form-control-sm input select" id="divisi" name="divisi" onchange="getdivisi()">
                  <option value="">--Pilih--</option>
                  @foreach ($divisi as $key => $value)
                    <option value="{{$value->c_id}}">{{$value->c_divisi}}</option>
                  @endforeach
                </select>
              </div>
            </div>
             <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Jabatan</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <select class="form-control form-control-sm select" id="jabatan" name="jabatan" disabled onchange="getjabatan()">
                  <option value="">--Pilih--</option>
                </select>
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Nama Pegawai</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <select class="form-control form-control-sm select" id="pegawai" name="pegawai" disabled>
                  <option value="">--Pilih--</option>
                </select>
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <button type="button" class="btn btn-info btn-block" onclick="proses()">Proses Data</button>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <br>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Gaji Pokok</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control rp input" name="gaji" onkeyup="autogaji()">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Total Tunjangan</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control rp input" name="tunjangan" onkeyup="autotunjangan()">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Total Potongan</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control rp input" name="potongan" onkeyup="autopotongan()">
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <label>Total Gaji</label>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="form-group">
                <input type="text" class="form-control rp input" name="total">
              </div>
            </div>
         </div> <!-- End div row -->
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
        <button class="btn btn-primary" onclick="simpan()" type="button">Submit</button>
      </div>
    </div>

  </div>
</div>
