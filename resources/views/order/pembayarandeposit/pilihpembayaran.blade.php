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
            </div>
          </div>

          @if ($percent == null)

          @else
            <div class="col-md-3 col-sm-6 col-xs-12">
              <label>Minimal DP</label>
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
              @if (count($paydeposit) == 0)
                <input type="text" class="form-control-sm form-control" id="amount" name="amount" onblur="amountup()">
                <input type="hidden" name="batasamount" id="batasamount">
              @else
                <input type="text" class="form-control-sm form-control" id="amount" value="{{$paydeposit->p_amount}}" name="amount" onblur="amountup()">
                <input type="hidden" name="batasamount" id="batasamount">
              @endif
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Date</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if (count($paydeposit) == 0)
              <input type="text" class="form-control-sm form-control" id="" readonly="" value="{{date('d-m-Y')}}" name="date">
              @else
              <input type="text" class="form-control-sm form-control" id="" readonly="" value="{{Carbon\Carbon::parse($paydeposit->p_date)->format('d-m-Y')}}" name="date">
              @endif
            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Payment Method</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if (count($paydeposit) == 0)
                <select class="form-control form-control-sm pay_method" name="pay_method">
                  <option value="tunai">Tunai</option>
                  <option value="transfer">Transfer</option>
                </select>
              @else
                <select class="form-control form-control-sm pay_method" name="pay_method">
                  <option value="tunai" @if ($paydeposit->p_method == 'tunai')
                    selected
                  @endif>Tunai</option>
                  <option value="transfer" @if ($paydeposit->method == 'transfer')
                    selected
                  @endif>Transfer</option>
                </select>
              @endif

            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Pilih Akun Keuangan</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">

              @if ($paydeposit == 0)
              <div id="akunKas">
                <select class="form-control form-control-sm pay_method" name="pay_akun" id="akunKas">
                    @foreach($akunKas as $key => $akun)
                      <option value="{{ $akun->id }}">{{ $akun->text }}</option>
                    @endforeach
                </select>
              </div>

              <div style="display: none;" id="akunBank">
                <select class="form-control form-control-sm pay_method" name="pay_akun">
                    @foreach($akunBank as $key => $akun)
                      <option value="{{ $akun->id }}">{{ $akun->text }}</option>
                    @endforeach
                </select>
              </div>
              @else
                <div id="akunKas">
                  <select class="form-control form-control-sm pay_method" name="pay_akun" id="akunKas">
                      @foreach($akunKas as $key => $akun)
                        <option value="{{ $akun->id }}" @if ($akun->id == $paydeposit->p_account)
                          selected
                        @endif>{{ $akun->text }}</option>
                      @endforeach
                  </select>
                </div>

                <div style="display: none;" id="akunBank">
                  <select class="form-control form-control-sm pay_method" name="pay_akun">
                      @foreach($akunBank as $key => $akun)
                        <option value="{{ $akun->id }}" @if ($akun->id == $paydeposit->p_account)
                          selected
                        @endif>{{ $akun->text }}</option>
                      @endforeach
                  </select>
                </div>
              @endif

            </div>
          </div>

          <div class="col-md-3 col-sm-6 col-xs-12">
            <label>Notes</label>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="form-group">
              @if ($paydeposit == 0)
                <input type="text" class="form-control-sm form-control" name="nota1">
              @else
                <input type="text" class="form-control-sm form-control" value="{{$paydeposit->p_note}}" name="nota1">
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

<script type="text/javascript">

  function methodChange(e){
    if(e == 'Transfer'){
      document.getElementById('akunKas').style.display = 'none';
      document.getElementById('akunBank').style.display = 'inline';
    }else{
      document.getElementById('akunKas').style.display = 'inline';
      document.getElementById('akunBank').style.display = 'none';
    }
  }
</script>
