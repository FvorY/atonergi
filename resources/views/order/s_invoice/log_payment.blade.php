<!-- Modal -->
<div id="logpayment" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Log Payment</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="row">
              <div class="col-md-6 col-sm-12 col-xs-12">
                  <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <label>Payment Type</label>
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-12">
                      <div class="input-group mb-3">
                        <input type="text" class="form-control form-control-sm" value="Payment" disabled>
                      </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <label>Ammount</label>
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-12">
                      <div class="form-group">
                        <input type="text" class="form-control currency" placeholder="0" data-thousands="." data-decimal="," data-prefix="RP. ">
                        <!-- <input class="form-control form-control-sm" data-inputmask="'alias': 'currency'"> -->
                      </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <label>Payment Method</label>
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-12">
                      <div class="form-group">
                        <select class="form-control form-control-sm" id="filter">
                          <option disabled >--Pilih--</option>
                          <option value="tun" selected>Tunai</option>
                          <option value="kre">Kredit</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <label>Notes</label>
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-12">
                      <div class="form-group">
                        <textarea rows="3" name="" class="form-control" placeholder=""></textarea>
                      </div>
                    </div>
                  </div>
              </div>
              <div class="col-md-6 col-sm-12 col-xs-12" >
                <div class="row">
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <label>Paid to Account</label>
                  </div>
                  <div class="col-md-8 col-sm-6 col-xs-12">
                    <div class="form-group">
                      <select class="form-control form-control-sm" id="filter">
                        <option disabled >--Pilih--</option>
                        <option value="csh" selected>Cash</option>
                        <option value="crd">Credit</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <label>Date</label>
                  </div>
                  <div class="col-md-8 col-sm-6 col-xs-12">
                    <div class="form-group">
                      <div id="datepicker-popup" class="input-group date datepicker">
                        <input type="text" class="form-control" value="12-12-2018">
                        <div class="input-group-addon alamraya-input-group-addon">
                          <span class="mdi mdi-calendar"></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 col-sm-6 col-xs-12">
                    <label>Reference</label>
                  </div>
                  <div class="col-md-8 col-sm-6 col-xs-12">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-sm" name="" value="BCA">
                    </div>
                  </div>
                </div>
              </div>
        </div><!-- End div row -->
              
          
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button">Save Detail</button>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

@section('extra_script')

@endsection