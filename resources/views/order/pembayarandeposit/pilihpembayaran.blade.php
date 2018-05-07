<!-- Modal -->
<div id="pilihpembayaran" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Log Payment</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Payment Type</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <select class="form-control form-control-sm">
                <option>DP</option>
                <option>Payment</option>
              </select>
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Paid to Account</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <select class="form-control form-control-sm">
                <option>Cash</option>
                <option>Deposit</option>
              </select>
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Amount</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control-sm form-control" id="amount" name="">
            </div>
          </div>
          
          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Date</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control-sm form-control" id="" readonly="" value="{{date('d-m-Y')}}" name="">
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Payment Method</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <select class="form-control form-control-sm">
                <option>--Select Payment--</option>
              </select>
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Reference</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control-sm form-control" name="">
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Notes</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control-sm form-control" name="">
            </div>
          </div>

         </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button" id="save_detail" onclick="save_detail()" data-dismiss="modal">Save Detail</button>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>