<!-- Modal -->
<div id="tambah" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Form Master Data Pegawai</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <label>ID Employee</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control" name="mp_id">
            </div>
          </div>
           <div class="col-md-6 col-sm-6 col-xs-12">
            <label>NIK</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control" name="mp_nik">
            </div>
          </div>
           <div class="col-md-6 col-sm-6 col-xs-12">
            <label>Employee Name</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control" name="mp_name">
            </div>
          </div>
           
           
           <div class="col-md-6 col-sm-6 col-xs-12">
            <label>E-mail</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="email" class="form-control" name="mp_email">
            </div>
          </div>
           <div class="col-md-6 col-sm-6 col-xs-12">
            <label>Address</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <textarea class="form-control" name="mp_address"></textarea>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <label>Position</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12" name="mp_position">
            <div class="form-group">
              <select class="form-control">
                <option>Manager</option>
                <option>Pegawai</option>
                <option>Magang</option>
                <option></option>
              </select>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <label>Employee Status</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <select class="form-control" name="mp_status">
                <option>Lajang</option>
                <option>Sudah Menikah</option>
              </select>
            </div>
          </div>
          
         </div>
      </div>
      <div class="modal-footer">
        <div id="change_function">
          <button class="btn btn-primary" type="button" id="save_data">Save Data</button>
        </div>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>