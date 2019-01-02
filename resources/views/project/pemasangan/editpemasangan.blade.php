<!-- Modal -->
<div id="edit" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Pemasangan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form id="editdata">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <label>NO WO</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input class="form-control form-control-sm" id="i_wo" readonly type="text" name="i_wo" style="cursor: pointer;">
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <label>Report Date</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input class="form-control form-control-sm datepicker" id="i_report_date" readonly name="i_report_date" type="text" style="cursor: pointer;">
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <label>Notes</label>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="form-group">
              <input class="form-control form-control-sm" type="text" name="i_notes" style="cursor: pointer;">
            </div>
          </div>
      </div>
    </div>
    </form>
      <div class="modal-footer">
        <button type="button" onclick="setting()" class="btn btn-info">Proses</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

</script>
