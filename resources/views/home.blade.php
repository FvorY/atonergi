@extends('main')

@section('content')
<!-- partial -->
        <div class="content-wrapper">

          <!-- <div class="row">
            <div class="col-md-12 stretch-card grid-margin">
              <div class="card bg-gradient-info text-white">
                <div class="card-body">
                  <h4 class="font-weight-normal mb-3">Visitor/User Online</h4>
                  <h2 class="font-weight-normal mb-5" id="online"></h2>
                  <p class="card-text">{{date('F Y')}}</p>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12 stretch-card grid-margin">
              <div class="card bg-gradient-warning text-white">
                <div class="card-body">
                  <h4 class="font-weight-normal mb-3">Visitor/User Offline</h4>
                  <h2 class="font-weight-normal mb-5" id="offline"></h2>
                  <p class="card-text">{{date('F Y')}}</p>
                </div>
              </div>
            </div>
          </div> -->
          <div class="row">
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="qoparent">
                  <div class="card px-2" style="background-color:#6c5ce7;">
                  <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="qoclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-format-quote-close" style="font-size:4em; color:white;"></i>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">3 QO</h1>
                              <p class="text-right">107 QO</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>2 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">1 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="soparent">
                  <div class="card px-2" style="background-color:#ff7675;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="soclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-cart" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">4 SO</h1>
                              <p class="text-right">13 SO</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>2 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">2 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="woparent">
                  <div class="card px-2" style="background-color:#00b894">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="woclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-cart" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">3 WO</h1>
                              <p class="text-right">0 WO</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>2 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">1 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="payparent">
                  <div class="card px-2" style="background-color:#fdcb6e;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="payclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-cart" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">0 PAY</h1>
                              <p class="text-right">0 PAY</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>0 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">0 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="roparent">
                  <div class="card px-2" style="background-color:#00cec9;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="roclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-credit-card" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">2 RO</h1>
                              <p class="text-right">9 RO</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>1 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">1 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="poparent">
                  <div class="card px-2" style="background-color:#e84393;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="poclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-credit-card" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">3 PO</h1>
                              <p class="text-right">107 PO</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>2 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">1 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="stokparent">
                  <div class="card px-2" style="background-color:#ef6c57;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="stokclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-arrow-up-bold-box-outline menu-icon" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">2 Stok</h1>
                              <p class="text-right">2 Stok</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>1 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">1 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="hutangparent">
                  <div class="card px-2" style="background-color:#f79f24;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="hutangclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">0 Hutang</h1>
                              <p class="text-right">0 Hutang</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>0 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">0 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="piutangparent">
                  <div class="card px-2" style="background-color:#ffe98a;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="piutang()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">0 Piutang</h1>
                              <p class="text-right">0 Piutang</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>0 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">0 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;" id="omsetparent">
                  <div class="card px-2" style="background-color:#d195f9;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="omsetclose()" class="fa fa-times"></span></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">0 Omset</h1>
                              <p class="text-right">0 Omset</p>
                            </div>
                          </div>
                          <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                          <div class="col-lg-5" style="color:white;">
                              <p style="padding:0px 0px 0px; margin-bottom:5px;"><b>0 Released</b></p>
                              <p style="padding:0px 0px 0px; margin-bottom:-20px;">0 WON</p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <hr style="background:#5c848e; border:0px; height:2px; margin-bottom: 5px;">
          <div class="row">
              <div class="col-lg-2 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#6c5ce7;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="qo()" style="cursor:pointer;" id="qoico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="qo" id="qo" value="N"> 
                      <div class="card-body bintang1">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-format-quote-close" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;"  onclick="window.location.href='{{route('q_quotation')}}'">QO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-3" style="background-color:#ff7675;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="so()" style="cursor:pointer;" id="soico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="so" id="so" value="N"> 
                      <div class="card-body bintang2">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;" onclick="window.location.href='{{route('s_order')}}'">SO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#00b894;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="wo()" style="cursor:pointer;" id="woico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="wo" id="wo" value="N"> 
                      <div class="card-body bintang3">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;" onclick="window.location.href='{{route('w_order')}}'">WO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-4" style="background-color:#fdcb6e;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="pay()" style="cursor:pointer;" id="payico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="pay" id="pay" value="N"> 
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 click" style="margin-top:8px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;" onclick="window.location.href='{{route('payment_order')}}'">Payment</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#00cec9;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="ro()" style="cursor:pointer;" id="roico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="ro" id="ro" value="N"> 
                      <div class="card-body bintang5">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-credit-card" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;" onclick="window.location.href='{{route('rencanapembelian')}}'">RO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#e84393;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="po()" style="cursor:pointer;" id="poico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="po" id="po" value="N"> 
                      <div class="card-body bintang6">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-credit-card" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;" onclick="window.location.href='{{route('purchaseorder')}}'">PO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-1" style="background-color:#ef6c57;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="stok()" style="cursor:pointer;" id="stokico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="stok" id="stok" value="N"> 
                      <div class="card-body bintang7">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-arrow-up-bold-box-outline menu-icon" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;" onclick="window.location.href='{{route('stockgudang')}}'">Stok</h1>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-4" style="background-color:#f79f24;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="hutang()" style="cursor:pointer;" id="hutangico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="hutang" id="hutang" value="N"> 
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 click" style="margin-top:8px;">
                                <span class="mdi mdi-chart-areaspline" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;">Hutang</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-4" style="background-color:#ffe98a">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="piutang()" style="cursor:pointer;" id="piutangico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="piutang" id="piutang" value="N"> 
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 click" style="margin-top:8px;">
                                <span class="mdi mdi-chart-areaspline" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;">Piutang</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-4" style="background-color:#d195f9;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="omset()" style="cursor:pointer;" id="omsetico" class="fa fa-star-o"></span></i>
                    <input type="hidden" name="omset" id="omset" value="N"> 
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 click" style="margin-top:8px;">
                                <span class="mdi mdi-chart-areaspline" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;">Omset</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
@endsection

@section('extra_script')
<script type="text/javascript">

    function qo(){
        var qo = $('#qo').val();

        if(qo == 'N'){
            $('#qo').val('Y');
            $('#qoico').attr('class', 'fa fa-star');
        } else if(qo == 'Y'){
            $('#qo').val('N');
            $('#qoico').attr('class', 'fa fa-star-o');
        }
    }

    function so(){
        var so = $('#so').val();

        if(so == 'N'){
            $('#so').val('Y');
            $('#soico').attr('class', 'fa fa-star');
        } else if(so == 'Y'){
            $('#so').val('N');
            $('#soico').attr('class', 'fa fa-star-o');
        }
    }

    function wo(){
        var wo = $('#wo').val();

        if(wo == 'N'){
            $('#wo').val('Y');
            $('#woico').attr('class', 'fa fa-star');
        } else if(wo == 'Y'){
            $('#wo').val('N');
            $('#woico').attr('class', 'fa fa-star-o');
        }
    }

    function pay(){
        var pay = $('#pay').val();

        if(pay == 'N'){
            $('#pay').val('Y');
            $('#payico').attr('class', 'fa fa-star');
        } else if(pay == 'Y'){
            $('#pay').val('N');
            $('#payico').attr('class', 'fa fa-star-o');
        }
    }

    function ro(){
        var ro = $('#ro').val();

        if(ro == 'N'){
            $('#ro').val('Y');
            $('#roico').attr('class', 'fa fa-star');
        } else if(ro == 'Y'){
            $('#ro').val('N');
            $('#roico').attr('class', 'fa fa-star-o');
        }
    }

    function po(){
        var po = $('#po').val();

        if(po == 'N'){
            $('#po').val('Y');
            $('#poico').attr('class', 'fa fa-star');
        } else if(po == 'Y'){
            $('#po').val('N');
            $('#poico').attr('class', 'fa fa-star-o');
        }
    }

    function stok(){
        var stok = $('#stok').val();

        if(stok == 'N'){
            $('#stok').val('Y');
            $('#stokico').attr('class', 'fa fa-star');
        } else if(stok == 'Y'){
            $('#stok').val('N');
            $('#stokico').attr('class', 'fa fa-star-o');
        }
    }

    function hutang(){
        var hutang = $('#hutang').val();

        if(hutang == 'N'){
            $('#hutang').val('Y');
            $('#hutangico').attr('class', 'fa fa-star');
        } else if(hutang == 'Y'){
            $('#hutang').val('N');
            $('#hutangico').attr('class', 'fa fa-star-o');
        }
    }

    function piutang(){
        var piutang = $('#piutang').val();

        if(piutang == 'N'){
            $('#piutang').val('Y');
            $('#piutangico').attr('class', 'fa fa-star');
        } else if(piutang == 'Y'){
            $('#piutang').val('N');
            $('#piutangico').attr('class', 'fa fa-star-o');
        }
    }

    function omset(){
        var omset = $('#omset').val();

        if(omset == 'N'){
            $('#omset').val('Y');
            $('#omsetico').attr('class', 'fa fa-star');
        } else if(omset == 'Y'){
            $('#omset').val('N');
            $('#omsetico').attr('class', 'fa fa-star-o');
        }
    }

    function qoclose(){
        $('#qoparent').remove();

        $('#qo').val('N');
        $('#qoico').attr('class', 'fa fa-star-o');
    }

    function soclose(){
        $('#soparent').remove();

        $('#so').val('N');
        $('#soico').attr('class', 'fa fa-star-o');
    }

    function woclose(){
        $('#woparent').remove();

        $('#wo').val('N');
        $('#woico').attr('class', 'fa fa-star-o');
    }

    function payclose(){
        $('#payparent').remove();

        $('#pay').val('N');
        $('#payico').attr('class', 'fa fa-star-o');
    }

    function roclose(){
        $('#roparent').remove();

        $('#ro').val('N');
        $('#roico').attr('class', 'fa fa-star-o');
    }

    function poclose(){
        $('#poparent').remove();

        $('#po').val('N');
        $('#poico').attr('class', 'fa fa-star-o');
    }

    function stokclose(){
        $('#stokclose').remove();

        $('#stok').val('N');
        $('#stokico').attr('class', 'fa fa-star-o');
    }

    function hutangclose(){
        $('#hutangparent').remove();

        $('#hutang').val('N');
        $('#hutangico').attr('class', 'fa fa-star-o');
    }

    function piutangclose(){
        $('#piutangparent').remove();

        $('#piutang').val('N');
        $('#piutangico').attr('class', 'fa fa-star-o');
    }

    function omsetclose(){
        $('#omsetparent').remove();

        $('#omset').val('N');
        $('#omsetico').attr('class', 'fa fa-star-o');
    }

</script>
@endsection
