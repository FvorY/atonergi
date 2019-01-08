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
        <form class="row log">

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Payment Type</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input class="form-control form-control-sm" value="Down Payment" readonly="" name="payment_type">
              </select>
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Paid to Account</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if ($so != null or $wo != null)
                <select class="form-control form-control-sm" name="akun">
                    @if ($so!=null)
                      <option @if ($so->so_type == 'Cash')
                        selected=""
                      @endif value="Cash">Cash</option>
                      <option @if ($so->so_type == 'Deposit')
                        selected=""
                      @endif value="Deposit">Deposit</option>
                    @else
                      <option @if ($wo->wo_type == 'Cash')
                        selected=""
                      @endif>Cash</option>
                      <option @if ($wo->wo_type == 'Deposit')
                        selected=""
                      @endif>Deposit</option>
                    @endif
                </select>
              @else
                <select class="form-control form-control-sm" name="akun">
                  <option>Cash</option>
                  <option>Deposit</option>
                </select>
              @endif
            </div>
          </div>

          @if ($percent == null)

          @else
            <div class="col-md-3 col-sm-6 col-xs-12">
              <label>Percent</label>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="form-group">
                <input class="form-control form-control-sm" value="{{$percent->p_percent}} %" readonly="" name="percent">
                </select>
              </div>
            </div>
          @endif


          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Amount</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control-sm form-control" id="amount" name="amount">
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Date</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control-sm form-control" id="" readonly="" value="{{date('d-m-Y')}}" name="date">
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Payment Method</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if ($so != null or $wo != null)
                <select class="form-control form-control-sm" name="pay_method">
                    @if ($so!=null)
                      <option @if ($so->so_type == 'tunai')
                        selected=""
                      @endif value="tunai">tunai</option>
                      <option @if ($so->so_type == 'Transfer')
                        selected=""
                      @endif value="Transfer">Transfer</option>
                    @else
                      <option @if ($wo->wo_type == 'tunai')
                        selected=""
                      @endif>tunai</option>
                      <option @if ($wo->wo_type == 'Transfer')
                        selected=""
                      @endif>Transfer</option>
                    @endif
                </select>
              @else
                <select class="form-control form-control-sm" name="pay_method">
                  <option value="tunai">Tunai</option>
                  <option value="transfer">Transfer</option>
                </select>
              @endif

            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Reference</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if ($so != null or $wo != null)
                @if ($so!=null)
                  <input value="{{ $so->so_note2 }}" type="text" class="form-control-sm form-control" name="nota2">
                @else
                  <input value="{{ $wo->wo_note2 }}" type="text" class="form-control-sm form-control" name="nota2">
                @endif
              @else
                <input type="text" class="form-control-sm form-control" name="nota2">
              @endif
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Notes</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if ($so != null or $wo != null)
                @if ($so!=null)
                  <input value="{{ $so->so_note }}" type="text" class="form-control-sm form-control" name="nota1">
                @else
                  <input value="{{ $wo->wo_note }}" type="text" class="form-control-sm form-control" name="nota1">
                @endif
              @else
                <input type="text" class="form-control-sm form-control" name="nota1">
              @endif
            </div>
          </div>
         </div>
      </form>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button" id="save_detail" onclick="save_detail()" >Save Detail</button>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
