@extends('main')

@section('content')
<!-- partial -->
<form id="widgetdata">
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
          <div class="row" id="showwidget">
              @foreach($widget as $value)
              @if($value->widget == 'qo')
              <div class="col-lg-6" style="margin-top:1em;" id="qoparent">
                    <div class="card px-2" style="background-color:#6c5ce7;">
                    <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="qoclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-format-quote-close" style="font-size:4em; color:white;"></i>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="qobulan">0</span> QO</h1>
                                <p class="text-right"><span id="qotahun">0</span> QO</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:1px;"><b><span id="qorelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-1px;"><b><span id="qowon">0</span> Won</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-20px;"><b><span id="qoprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
               @endif
               @if($value->widget == 'so')
                <div class="col-lg-6" style="  margin-top:1em;" id="soparent">
                    <div class="card px-2" style="background-color:#ff7675;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="soclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-cart" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="sobulan">0</span> SO</h1>
                                <p class="text-right"><span id="sotahun">0</span> SO</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:5px;"><b><span id="sorelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-10px;"><b><span id="soprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'wo')
                <div class="col-lg-6" style=" margin-top:1em;" id="woparent">
                    <div class="card px-2" style="background-color:#00b894">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="woclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-cart" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="wobulan">0</span> WO</h1>
                                <p class="text-right"><span id="wotahun">0</span> WO</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:5px;"><b><span id="worelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-10px;"><b><span id="woprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'pay')
                <div class="col-lg-6" style=" margin-top:1em;" id="payparent">
                    <div class="card px-2" style="background-color:#fdcb6e;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="payclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-cart" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="paybulan">0</span> PAY</h1>
                                <p class="text-right"><span id="paytahun">0</span> PAY</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:5px;"><b><span id="payrelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-10px;"><b><span id="payprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'ro')
                <div class="col-lg-6" style=" margin-top:1em;" id="roparent">
                    <div class="card px-2" style="background-color:#00cec9;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="roclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-credit-card" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="robulan">0</span> RO</h1>
                                <p class="text-right"><span id="rotahun">0</span> RO</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'po')
                <div class="col-lg-6" style=" margin-top:1em;" id="poparent">
                    <div class="card px-2" style="background-color:#e84393;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="poclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-credit-card" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="pobulan">0</span> PO</h1>
                                <p class="text-right"><span id="potahun">0</span> PO</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'stok')
                <div class="col-lg-6" style=" margin-top:1em;" id="stokparent">
                    <div class="card px-2" style="background-color:#ef6c57;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="stokclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-arrow-up-bold-box-outline menu-icon" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white; cursor:pointer;" onclick="showstok()">
                                <h1 class="text-right"><span id="stokbulan">0</span> STOK</h1>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'hutang')
                <div class="col-lg-6" style=" margin-top:1em;" id="hutangparent">
                    <div class="card px-2" style="background-color:#f79f24;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="hutangclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="hutangbulan">0</span> HUTANG</h1>
                                <p class="text-right"><span id="hutangtahun">0</span> HUTANG</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:1px;"><b><span id="hutangrelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-1px;"><b><span id="hutangwon">0</span> Won</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-20px;"><b><span id="hutangprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'piutang')
                <div class="col-lg-6" style=" margin-top:1em;" id="piutangparent">
                    <div class="card px-2" style="background-color:#ffe98a;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="piutangclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="piutangbulan">0</span> PIUTANG</h1>
                                <p class="text-right"><span id="piutangtahun">0</span> PIUTANG</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:1px;"><b><span id="piutangrelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-1px;"><b><span id="piutangwon">0</span> Won</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-20px;"><b><span id="piutangprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                @if($value->widget == 'omset')
                <div class="col-lg-6" style=" margin-top:1em;" id="omsetparent">
                    <div class="card px-2" style="background-color:#d195f9;">
                      <i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="omsetclose()" class="fa fa-times"></span></i>
                        <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-3 pl-0">
                                  <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                              </div>
                              <div class="col-lg-9" style="color:white;">
                                <h1 class="text-right"><span id="omsetbulan">0</span> OMSET</h1>
                                <p class="text-right"><span id="omsettahun">0</span> OMSET</p>
                              </div>
                            </div>
                            <hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">
                            <div class="col-lg-5" style="color:white;">
                                <p style="padding:0px 0px 0px; margin-bottom:1px;"><b><span id="omsetrelease">0</span> Release</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-1px;"><b><span id="omsetwon">0</span> Won</b></p>
                                <p style="padding:0px 0px 0px; margin-bottom:-20px;"><b><span id="omsetprinted">0</span> Printed</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
              @endforeach
          </div>
          <hr style="background:#5c848e; border:0px; height:2px; margin-bottom: 5px;">
          <div class="row">
              <div class="col-lg-2 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#6c5ce7;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="qo()" style="cursor:pointer;" id="qoico" @if($qo > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="qo" id="qo" @if($qo > 0) value="Y" @else value="N" @endif>
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
              <div class="col-lg-2 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#ff7675;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="so()" style="cursor:pointer;" id="soico" @if($so > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="so" id="so" @if($so > 0) value="Y" @else value="N" @endif>
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
              <div class="col-lg-2 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#00b894;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="wo()" style="cursor:pointer;" id="woico" @if($wo > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="wo" id="wo" @if($wo > 0) value="Y" @else value="N" @endif value="N">
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
              <div class="col-lg-3 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#fdcb6e;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="pay()" style="cursor:pointer;" id="payico" @if($pay > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="pay" id="pay" @if($pay > 0) value="Y" @else value="N" @endif>
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;" onclick="window.location.href='{{route('payment_order')}}'">Payment</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#00cec9;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="ro()" style="cursor:pointer;" id="roico" @if($ro > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="ro" id="ro" @if($ro > 0) value="Y" @else value="N" @endif>
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
              <div class="col-lg-2 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#e84393;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="po()" style="cursor:pointer;" id="poico" @if($po > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="po" id="po" @if($po > 0) value="Y" @else value="N" @endif>
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
              <div class="col-lg-2 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#ef6c57;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="stok()" style="cursor:pointer;" id="stokico" @if($stok > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="stok" id="stok" @if($stok > 0) value="Y" @else value="N" @endif>
                      <div class="card-body bintang7">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-arrow-up-bold-box-outline menu-icon" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; font-size:18pt" onclick="window.location.href='{{route('stockgudang')}}'">Stok</h1>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#f79f24;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="hutang()" style="cursor:pointer;" id="hutangico" @if($hutang > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="hutang" id="hutang" @if($hutang > 0) value="Y" @else value="N" @endif>
                      <div class="card-body">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 pl-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-chart-areaspline" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;">Hutang</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#ffe98a">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="piutang()" style="cursor:pointer;" id="piutangico" @if($piutang > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="piutang" id="piutang" @if($piutang > 0) value="Y" @else value="N" @endif>
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 lp-2 click" style="margin-top:8px;">
                                <span class="mdi mdi-chart-areaspline" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;">Piutang</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-5" style=" margin-top:1em;">
                  <div class="card px-2" style="background-color:#d195f9;">
                    <i class="d-flex justify-content-end light" aria-hidden="true" style="margin-bottom:-30px;  margin-top:5px; color:white; font-size:20px; margin-right:-3px;"><span onclick="omset()" style="cursor:pointer;" id="omsetico" @if($omset > 0) class="fa fa-star" @else class="fa fa-star-o" @endif></span></i>
                    <input type="hidden" name="omset" id="omset" @if($omset > 0) value="Y" @else value="N" @endif>
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 lp-2 click" style="margin-top:8px;">
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
    </form>
        <!-- content-wrapper ends -->

        <div id="modalstok" class="modal fade" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header bg-gradient-info">
                  <h4 class="modal-title">Data Stock</h4>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                  <div class="row">


                    <div class="table-responsive" style="margin-bottom: 15px;">
                      <table class="table table-bordered table-hover data-table" cellspacing="0" id="tablestok">
                        <thead class="bg-gradient-info">
                          <tr>
                           <th>No</th>
                            <th>Item</th>
                            <th>Qty</th>
                          </tr>
                        </thead>
                        <tbody>
                        </tbody>
                      </table>
                    </div>


                   </div> <!-- End div row -->
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                </div>
              </div>

            </div>
          </div>

@endsection

@section('extra_script')
<script type="text/javascript">
    var tablestok;
    $(document).ready(function(){
        tablestok = $('#tablestok').DataTable();
    })

    realtime();

    setInterval(function(){ realtime(); }, 5000);

    function realtime(){
        $.ajax({
            type: 'get',
            data: $('#widgetdata').serialize(),
            dataType: 'json',
            url: baseUrl + '/realtime',
            success : function(response){
                if(response.qo.length != 0){
                    $('#qobulan').text(response.qo.bulan);
                    $('#qotahun').text(response.qo.tahun);
                    $('#qowon').text(response.qo.won);
                    $('#qorelease').text(response.qo.release);
                    $('#qoprinted').text(response.qo.printed);
                }
                if(response.so.length != 0){
                    $('#sobulan').text(response.so.bulan);
                    $('#sotahun').text(response.so.tahun);
                    $('#sorelease').text(response.so.release);
                    $('#soprinted').text(response.so.printed);
                }
                if(response.wo.length != 0){
                    $('#wobulan').text(response.wo.bulan);
                    $('#wotahun').text(response.wo.tahun);
                    $('#worelease').text(response.wo.release);
                    $('#woprinted').text(response.wo.printed);
                }
                if(response.pay.length != 0){
                    $('#paybulan').text(response.pay.bulan);
                    $('#paytahun').text(response.pay.tahun);
                    $('#payrelease').text(response.pay.release);
                    $('#payprinted').text(response.pay.printed);
                }
                if(response.ro.length != 0){
                    $('#robulan').text(response.ro.bulan);
                    $('#rotahun').text(response.ro.tahun);
                }
                if(response.po.length != 0){
                    $('#pobulan').text(response.po.bulan);
                    $('#potahun').text(response.po.tahun);
                }
                if(response.stok.length != 0){
                    $('#stokbulan').text(response.stok.semua);
                }
            }
        });
    }

    function qo(){
        var qo = $('#qo').val();


        if(qo == 'N'){
            $('#qo').val('Y');
            $('#qoico').attr('class', 'fa fa-star');

            insertwidget(qo, 'qo');
        } else if(qo == 'Y'){
            $('#qo').val('N');
            $('#qoico').attr('class', 'fa fa-star-o');

            removewidget(qo, 'qo');
        }
    }

    function so(){
        var so = $('#so').val();

        if(so == 'N'){
            $('#so').val('Y');
            $('#soico').attr('class', 'fa fa-star');

            insertwidget(so, 'so');
        } else if(so == 'Y'){
            $('#so').val('N');
            $('#soico').attr('class', 'fa fa-star-o');

            removewidget(so, 'so');
        }
    }

    function wo(){
        var wo = $('#wo').val();

        if(wo == 'N'){
            $('#wo').val('Y');
            $('#woico').attr('class', 'fa fa-star');

            insertwidget(wo, 'wo');
        } else if(wo == 'Y'){
            $('#wo').val('N');
            $('#woico').attr('class', 'fa fa-star-o');

            removewidget(wo, 'wo');
        }
    }

    function pay(){
        var pay = $('#pay').val();

        if(pay == 'N'){
            $('#pay').val('Y');
            $('#payico').attr('class', 'fa fa-star');

            insertwidget(pay, 'pay');
        } else if(pay == 'Y'){
            $('#pay').val('N');
            $('#payico').attr('class', 'fa fa-star-o');

            removewidget(pay, 'pay');
        }
    }

    function ro(){
        var ro = $('#ro').val();

        if(ro == 'N'){
            $('#ro').val('Y');
            $('#roico').attr('class', 'fa fa-star');

            insertwidget(ro, 'ro');
        } else if(ro == 'Y'){
            $('#ro').val('N');
            $('#roico').attr('class', 'fa fa-star-o');

            removewidget(ro, 'ro');
        }
    }

    function po(){
        var po = $('#po').val();

        if(po == 'N'){
            $('#po').val('Y');
            $('#poico').attr('class', 'fa fa-star');

            insertwidget(po, 'po');
        } else if(po == 'Y'){
            $('#po').val('N');
            $('#poico').attr('class', 'fa fa-star-o');

            removewidget(po, 'po');
        }
    }

    function stok(){
        var stok = $('#stok').val();

        if(stok == 'N'){
            $('#stok').val('Y');
            $('#stokico').attr('class', 'fa fa-star');

            insertwidget(stok, 'stok');
        } else if(stok == 'Y'){
            $('#stok').val('N');
            $('#stokico').attr('class', 'fa fa-star-o');

            removewidget(stok, 'stok');
        }
    }

    function hutang(){
        var hutang = $('#hutang').val();

        if(hutang == 'N'){
            $('#hutang').val('Y');
            $('#hutangico').attr('class', 'fa fa-star');

            insertwidget(hutang, 'hutang');
        } else if(hutang == 'Y'){
            $('#hutang').val('N');
            $('#hutangico').attr('class', 'fa fa-star-o');

            removewidget(hutang, 'hutang');
        }
    }

    function piutang(){
        var piutang = $('#piutang').val();

        if(piutang == 'N'){
            $('#piutang').val('Y');
            $('#piutangico').attr('class', 'fa fa-star');

            insertwidget(piutang, 'piutang');
        } else if(piutang == 'Y'){
            $('#piutang').val('N');
            $('#piutangico').attr('class', 'fa fa-star-o');

            removewidget(piutang, 'piutang');
        }
    }

    function omset(){
        var omset = $('#omset').val();

        if(omset == 'N'){
            $('#omset').val('Y');
            $('#omsetico').attr('class', 'fa fa-star');

            insertwidget(omset, 'omset');
        } else if(omset == 'Y'){
            $('#omset').val('N');
            $('#omsetico').attr('class', 'fa fa-star-o');

            removewidget(omset, 'omset');
        }
    }

    function qoclose(){
        removewidget('Y', 'qo');

        $('#qo').val('N');
        $('#qoico').attr('class', 'fa fa-star-o');
    }

    function soclose(){
        removewidget('Y', 'so');

        $('#so').val('N');
        $('#soico').attr('class', 'fa fa-star-o');
    }

    function woclose(){
        removewidget('Y', 'wo');

        $('#wo').val('N');
        $('#woico').attr('class', 'fa fa-star-o');
    }

    function payclose(){
        removewidget('Y', 'pay');

        $('#pay').val('N');
        $('#payico').attr('class', 'fa fa-star-o');
    }

    function roclose(){
        removewidget('Y', 'ro');

        $('#ro').val('N');
        $('#roico').attr('class', 'fa fa-star-o');
    }

    function poclose(){
        removewidget('Y', 'po');

        $('#po').val('N');
        $('#poico').attr('class', 'fa fa-star-o');
    }

    function stokclose(){
        removewidget('Y', 'stok');

        $('#stok').val('N');
        $('#stokico').attr('class', 'fa fa-star-o');
    }

    function hutangclose(){
        removewidget('Y', 'hutang');

        $('#hutang').val('N');
        $('#hutangico').attr('class', 'fa fa-star-o');
    }

    function piutangclose(){
        removewidget('Y', 'piutang');

        $('#piutang').val('N');
        $('#piutangico').attr('class', 'fa fa-star-o');
    }

    function omsetclose(){
        removewidget('Y', 'omset');

        $('#omset').val('N');
        $('#omsetico').attr('class', 'fa fa-star-o');
    }

    function insertwidget(status, widget){
        var html = '';
        var component = '<p style="padding:0px 0px 0px; margin-bottom:1px;"><b><span id="'+widget+'release">0</span> Release</b></p>'+
                        '<p style="padding:0px 0px 0px; margin-bottom:-1px;"><b><span id="'+widget+'won">0</span> Won</b></p>'+
                         '<p style="padding:0px 0px 0px; margin-bottom:-20px;"><b><span id="'+widget+'printed">0</span> Printed</b></p>';

        var tambahan = '<p class="text-right"><span id="'+widget+'tahun">0</span> '+widget.toUpperCase()+'</p>';

        var tambahanclass = '';

        var tambahanonclick = '';

        if(widget == 'qo'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="qoparent">'
                +'<div class="card px-2" style="background-color:#6c5ce7;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="qoclose()" class="fa fa-times"></span></i>';

        } else if(widget == 'so'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="soparent">'
                +'<div class="card px-2" style="background-color:#ff7675;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="soclose()" class="fa fa-times"></span></i>';

            var component = '<p style="padding:0px 0px 0px; margin-bottom:5px;"><b><span id="'+widget+'release">0</span> Release</b></p>'+
                             '<p style="padding:0px 0px 0px; margin-bottom:-10px;"><b><span id="'+widget+'printed">0</span> Printed</b></p>';

        } else if(widget == 'wo'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="woparent">'
                +'<div class="card px-2" style="background-color:#00b894">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="woclose()" class="fa fa-times"></span></i>';

            var component = '<p style="padding:0px 0px 0px; margin-bottom:5px;"><b><span id="'+widget+'release">0</span> Release</b></p>'+
                '<p style="padding:0px 0px 0px; margin-bottom:-10px;"><b><span id="'+widget+'printed">0</span> Printed</b></p>';

        } else if(widget == 'pay'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="payparent">'
                +'<div class="card px-2" style="background-color:#fdcb6e;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="payclose()" class="fa fa-times"></span></i>';

            var component = '<p style="padding:0px 0px 0px; margin-bottom:5px;"><b><span id="'+widget+'release">0</span> Release</b></p>'+
                '<p style="padding:0px 0px 0px; margin-bottom:-10px;"><b><span id="'+widget+'printed">0</span> Printed</b></p>';

        } else if(widget == 'ro'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="roparent">'
                +'<div class="card px-2" style="background-color:#00cec9;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="roclose()" class="fa fa-times"></span></i>';

            var component = '';

        } else if(widget == 'po'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="poparent">'
                +'<div class="card px-2" style="background-color:#e84393;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="poclose()" class="fa fa-times"></span></i>';

            var component = '';

        } else if(widget == 'stok'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="stokparent">'
                +'<div class="card px-2" style="background-color:#ef6c57;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="stokclose()" class="fa fa-times"></span></i>';

            var component = '';

            var tambahan = '';

            var tambahanclass = 'cursor:pointer;';

            var tambahanonclick = 'onclick="showstok()"';

        } else if(widget == 'hutang'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="hutangparent">'
                +'<div class="card px-2" style="background-color:#f79f24;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="hutangclose()" class="fa fa-times"></span></i>';

        } else if(widget == 'piutang'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="piutangparent">'
                +'<div class="card px-2" style="background-color:#ffe98a;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="piutangclose()" class="fa fa-times"></span></i>';

        } else if(widget == 'omset'){
            var header = '<div class="col-lg-6" style=" margin-top:1em;" id="omsetparent">'
                +'<div class="card px-2" style="background-color:#d195f9;">'
                +'<i class="d-flex justify-content-end closed" aria-hidden="true" style="margin-top:5px; color:white;"><span style="cursor:pointer;" onclick="omsetclose()" class="fa fa-times"></span></i>';

        }



        html += header
                +'<div class="card-body">'
                    +'<div class="container-fluid d-flex justify-content-between">'
                      +'<div class="col-lg-3 pl-0">'
                          +'<span class="mdi mdi-format-quote-close" style="font-size:4em; color:white;"></i>'
                      +'</div>'
                      +'<div class="col-lg-9" style="color:white; '+tambahanclass+'" '+tambahanonclick+'>'
                        +'<h1 class="text-right"><span id="'+widget+'bulan">0</span> '+widget.toUpperCase()+'</h1>'
                        +tambahan
                      +'</div>'
                    +'</div>'
                    +'<hr style="background:white; border:0px; height:1px; margin-bottom: 5px;">'
                    +'<div class="col-lg-5" style="color:white;">'
                            +component
                    +'</div>'
                +'</div>'
            +'</div>'
        '</div>';

        $.ajax({
            type: 'get',
            data: 'status='+status+'&widget='+widget,
            dataType: 'json',
            url: baseUrl + '/insertwidget',
            success : function(response){
                if(response == 'berhasil'){
                $('#showwidget').append(html);
                }
            }
        });
    }

    function removewidget(status, widget){
        $.ajax({
            type: 'get',
            data: 'status='+status+'&widget='+widget,
            dataType: 'json',
            url: baseUrl + '/insertwidget',
            success : function(response){
                if(response == 'berhasil'){
                    $('#'+widget+'parent').remove();
                }
            }
        });
    }

    function showstok(){
        $.ajax({
            type: 'get',
            dataType: 'json',
            url: baseUrl + '/showstok',
            success : function(response){
                tablestok.clear();
                for (var i = 0; i < response.length; i++) {
                    tablestok.row.add([
                        (i + 1),
                        response[i].i_name,
                        response[i].sg_qty
                    ]).draw(false);
                }
                $('#modalstok').modal('show');
            }
        });
    }

</script>
@endsection
