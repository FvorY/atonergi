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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
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
              <div class="col-lg-5" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                  <i class="fa fa-times d-flex justify-content-end" aria-hidden="true" style="margin-top:5px; color:white;"></i>
                      <div class="card-body">
                          <div class="container-fluid d-flex justify-content-between">
                            <div class="col-lg-3 pl-0">
                                <span class="mdi mdi-chart-areaspline" style="font-size:4em; color:white;"></span>
                            </div>
                            <div class="col-lg-9" style="color:white;">
                              <h1 class="text-right">0 H-P</h1>
                              <p class="text-right">0 H-P</p>
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
          <!-- <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                <div class="card px-2" style="background-color:#0033c7;">
                    <div class="card-body">
                        <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-0 click">
                            <span class="fa fa-star-o" style="color:white;"></span>
                              <div class="ring"></div>
                              <div class="ring2"></div>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h1 style="margin-top:15px;">QO</h1>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div> -->
          <div class="row">
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                      <div class="card-body bintang1">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-format-quote-close" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">QO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                      <div class="card-body bintang2">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">SO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                      <div class="card-body bintang3">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">WO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                      <div class="card-body bintang4">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-cart" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">PAY</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                      <div class="card-body bintang5">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-credit-card" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">RO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-2" style="background-color:#1976d2;">
                      <div class="card-body bintang6">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-credit-card" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">PO</h3>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-2 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-1" style="background-color:#1976d2;">
                      <div class="card-body bintang7">
                          <div class="d-flex justify-content-center">
                          <div class="col-lg-4 pl-2 click" style="margin-top:10px;">
                                <span class="mdi mdi-arrow-up-bold-box-outline menu-icon" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px;">Stok</h1>
                            </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-3 col-sm-4" style="margin-left:3em; margin-top:1em;">
                  <div class="card px-4" style="background-color:#1976d2;">
                      <div class="card-body bintang8">
                          <div class="d-flex justify-content-center">
                            <div class="col-lg-4 click" style="margin-top:20px;">
                                <span class="mdi mdi-chart-areaspline" style="color:white; font-size:30px;"></span>
                            </div>
                            <div class="col-lg-12" style="color:white;">
                              <h3 style="margin-top:15px; width:100%;">Hutang-Piutang</h3>
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

  $(document).ready(function(){

    setInterval(function () {
      realtime();
    }, 1000);

  });

  function realtime(){
    $.ajax({
      type: 'get',
      dataType: 'json',
      url: baseUrl + '/realtime',
      success : function(response){
        $('#offline').text(response.countoff);
        $('#online').text(response.counton);
      }
    })
  }
</script>
@endsection
