@extends('main')

@section('extra_style')
<style type="text/css">
  #settings-trigger{
    box-shadow: none;
  }
</style>

<style type="text/css">
  .wizard {
      margin: 20px auto;
      background: transparent;
  }

  .wizard .nav-tabs {
      position: relative;
      margin: 40px auto;
      margin-bottom: 0;
      border-bottom-color: #e0e0e0;
      display: -webkit-box;
      display: -moz-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-flex-flow: row wrap;
      justify-content: space-around;
      -webkit-justify-content: space-around;
      flex-wrap: nowrap;
      -webkit-flex-wrap: nowrap;
  }

  .wizard > div.wizard-inner {
      position: relative;
  }

  .nav-tabs .nav-link.disabled{
    cursor: not-allowed;
  }
  .nav.nav-tabs .nav-item .nav-link, .nav.nav-pills .nav-item .nav-link{
    border:none;
  }
  .nav-tabs > li .disabled span.round-tab {
      background-color: #e0e0e0ff;
  }

  .connecting-line {
      height: 2px;
      background: #e0e0e0;
      position: absolute;
      width: 60%;
      margin: 0 auto;
      left: 0;
      right: 0;
      top: 70%;
      z-index: 0;
  }

  .wizard .nav-tabs > li.active > a,
  .wizard .nav-tabs > li.active > a:hover,
  .wizard .nav-tabs > li.active > a:focus {
      color: #555555;
      cursor: default;
      border: 0;
      border-bottom-color: transparent;
  }

  span.round-tab {
      width: 70px;
      height: 70px;
      line-height: 70px;
      display: inline-block;
      border-radius: 100px;
      background: #fff;
      border: 2px solid #e0e0e0;
      z-index: 2;
      position: absolute;
      left: 0;
      text-align: center;
      font-size: 25px;
  }

  span.round-tab i {
      color: #555555;
  }

  .wizard li a.active span.round-tab {
      background: #fff;
      border: 2px solid #5bc0de;

  }

  .wizard li a.active span.round-tab i {
      color: #5bc0de;
  }

  span.round-tab:hover {
      color: #333;
      border: 2px solid #333;
  }



  .wizard li a:after {
      content: " ";
      position: relative;
      left: 46%;
      top: -20px;
      opacity: 0;
      margin: 0 auto;
      bottom: 0px;
      border: 5px solid transparent;
      border-bottom-color: #5bc0de;
      transition: 0.1s ease-in-out;
  }

  .wizard li.active.nav-item:after {
      content: " ";
      position: relative;
      left: 46%;
      top: -20px;
      opacity: 1;
      margin: 0 auto;
      bottom: 0px;
      border: 10px solid transparent;
      border-bottom-color: #5bc0de;
  }

  .wizard .nav-tabs > li a {
      width: 70px;
      height: 70px;
      margin: 20px auto;
      border-radius: 100%;
      padding: 0;
      position: relative;
  }

  .wizard .nav-tabs > li a:hover {
      background: transparent;
  }

  .wizard .tab-pane {
      position: relative;
  }

  .wizard h3 {
      margin-top: 0;
  }

  @media( max-width: 585px) {

      .wizard {
          width: 90%;
          height: auto !important;
      }

      span.round-tab {
          font-size: 16px;
          width: 50px;
          height: 50px;
          line-height: 50px;
      }

      .wizard .nav-tabs > li a {
          width: 50px;
          height: 50px;
          line-height: 50px;
      }

      .wizard li.active:after {
          content: " ";
          position: absolute;
          left: 35%;
      }
  }
  .tab-content{
    padding: 0;
    border:none;
    border-radius: none;
  }

  .form-check label .input-helper::before, .form-check label .input-helper::after {
    /*text-align: center;*/
    /*left: 50%;*/
  }
</style>
@endsection

@section('content')

<!-- partial -->
<div class="content-wrapper">
  <div class="btn-scrolltop">
    <i class="fa fa-angle-up"></i>
  </div>
  <div class="btn-scrollbottom">
    <i class="fa fa-angle-down"></i>
  </div>
  <div class="row">
    <div class="col-lg-12">
        <nav aria-label="breadcrumb" role="navigation">
          <ol class="breadcrumb bg-info">
            <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
            <li class="breadcrumb-item">Project Manajemen Pompa | SHS</li>
            <li class="breadcrumb-item"><a href="{{url('project/jadwalujicoba/jadwalujicoba')}}">Schedule Jadwal Uji Coba Dan Dokumentasi</a></li>
            <li class="breadcrumb-item active" aria-current="page">Form Schedule Jadwal Uji Coba dan Dokumentasi</li>
          </ol>
        </nav>
    </div>
  </div>
  <form method="POST" class="form-horizontal form" action="{{ url('project/jadwalujicoba/simpan_jadwal') }}" accept-charset="UTF-8" id="form" enctype="multipart/form-data">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <input type="hidden" name="jumlahimage">
    <input type="hidden" name="jumlahtab">
    <div class="wizard">
      <!-- Nav tab-->
      <div class="row">
        <div class="col-lg-12 grid-margin stretch-card">
          <div class="card alamraya-wizard-section">
            <div class="card-body ">
              <h4 class="card-title">Form Schedule Jadwal Uji Coba dan Dokumentasi</h4>

                <div class="wizard-inner">
                    <div class="connecting-line"></div>
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="nav-item">
                            <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Report" class="nav-link active" data-placement="bottom">
                                <span class="round-tab">
                                    &nbsp;&nbsp;<i class="fa fa-file-image-o"></i>
                                </span>
                                <div class="alamraya-wizard-title">
                                  &nbsp;&nbsp;&nbsp;Report
                                </div>
                            </a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Installation Factsheet" class="nav-link disabled" data-placement="bottom">
                                <span class="round-tab">
                                    &nbsp;&nbsp;<i class="fa fa-info"></i>
                                </span>
                                <div class="alamraya-wizard-title">
                                  Installation Factsheet
                                </div>
                            </a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Verification" class="nav-link disabled" data-placement="bottom">
                                <span class="round-tab">
                                    &nbsp;&nbsp;<i class="fa fa-check"></i>
                                </span>
                                <div class="alamraya-wizard-title">
                                  Verification
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Nav Tab -->
      <div class="tab-content">
        <!-- Step 1 -->
        <div class="tab-pane active" role="tabpanel" id="step1">
          <!-- Start Row -->
          <div class="row" id="form-dokumentasi">


            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">


                    <div class="row">

                      <div class="col-md-3 col-sm-4 col-xs-12">
                        <label>Report Title</label>
                      </div>

                      <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="form-group form-group-sm">
                          <textarea rows="3" name="judul_laporan" class="form-control"></textarea>
                        </div>
                      </div>

                      <div class="col-md-3 col-sm-4 col-xs-12">
                        <label>Report Description</label>
                      </div>
                      <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="form-group form-group-sm">
                          <textarea rows="3" name="deskripsi_laporan" class="form-control"></textarea>
                        </div>
                      </div>


                    </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">

                <div class="card-body">

                  <div class="row" id="form-gambar-1">

                    <div class="col-md-3 col-sm-4 col-xs-12">
                      <label>Title</label>
                    </div>

                    <div class="col-md-9 col-sm-8 col-xs-12">
                      <div class="form-group form-group-sm">
                        <input type="text" class="form-control jumlahjudul judul0" onkeyup="judul(0)" name="judul[]">
                      </div>
                    </div>

                    <div class="col-md-6 col-sm-6 col-xs-12 text-center image-file">
                      <div class="form-group">
                        <img src="{{asset('assets/images/add-image-icon.png')}}" class="preview-image">
                      </div>
                      <div class="row">

                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="file" class="form-control form-control-sm uploadimage" name="image1" accept="image/*">
                            <input type="hidden" class="title0" name="title[]">
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <button type="button" class="btn btn-primary btn-block btn-tambah-gambar"><i class="fa fa-plus"></i> Add More Image</button>
                    </div>
                  </div>


                </div>

              </div>
            </div>

            <div class="col-lg-12 grid-margin text-center">
              <button type="button" class="btn btn-success btn-tambah"><i class="fa fa-plus"></i> Add</button>
            </div>

          </div>
          <!-- End row -->

          <!-- Button Next Prev Step 1-->
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">

                <div class="card-body">


                    <div class="row">
                      <div class="col-lg-12">
                        <button class="btn btn-info btn-sm m-2 btn-block btn-simpan next-step" type="button">Next</button>
                      </div>

                    </div>




                </div>

              </div>
            </div>
          </div>
          <!-- End Button Next Prev Step 1 -->
        </div>
        <!-- End Step 1 -->

        <!-- Step 2 -->
        <div class="tab-pane" id="step2">
          <div class="row">

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Customer / Partner</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>End Customer</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_end_customer" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Installer</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_installer" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Contact Data of Installer</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_contact_data_of_installer" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Installation Location</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Country</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <select class="form-control form-control-sm select2" name="si_country">
                                  <option disabled selected>--Pilih--</option>
                                  <option value="Indonesia">Indonesia</option>
                                </select>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Province, State</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <select class="form-control form-control-sm select2" id="city" onchange="filtercity()" name="provinces">
                                  <option disabled selected>--Pilih--</option>
                                  @foreach ($provinces as $key => $value)
                                    <option id="{{$value->id}}" value="{{$value->id}}">{{$value->name}}</option>
                                  @endforeach
                                </select>
                                <input type="hidden" name="si_province">
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>City, Village, Town</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <select class="form-control form-control-sm select2" id="showcity" name="si_city">
                                  <option disabled selected>--Pilih--</option>
                                </select>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Longitude</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="text" name="si_longitude" class="form-control" placeholder="type something...">
                                  <span class="input-group-addon bg-primary border-primary text-white">East</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Latitude</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="text" name="si_latitude" class="form-control" placeholder="type something...">
                                  <span class="input-group-addon bg-primary border-primary text-white">South</span>
                                </div>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Installation Date</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Date</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div id="datepicker-popup" class="input-group date datepicker">
                                    <input type="text" class="form-control .datepicker" name="si_installation_date" placeholder="dd-mm-yyyy">
                                    <div class="input-group-addon alamraya-input-group-addon">
                                      <span class="mdi mdi-calendar"></span>
                                    </div>
                                </div>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Application Type</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Application</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_application" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Other Applications</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="2" name="si_other_application" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>


                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">For Drinking Water Projects</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>How many people are supplied from the system?</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_many_people" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">people</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>How many animals are supplied by the system?</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_many_animal" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">animals</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>What type of animals does the system supply?</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_type_animal" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">For Irrigation Projects</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>What crop is grown?</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_crop_grown" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>What area of land is irrigated?</label>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_area" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>
                            <div class="col-md-5 col-sm-4 col-xs-12 alamraya-no-padding">

                              <div class="alamraya-form-radio-group">
                                <label>
                                    <input type="radio" class="form_check_input" name="si_satuan_area" value="M2" checked />&nbsp;m<sup>2</sup>&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_satuan_area" value="HA"/>&nbsp;ha&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_satuan_area" value="AC"/>&nbsp;ac&nbsp;&nbsp;
                                </label>
                              </div>

                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">For Swimming Pool Filtration Projects</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pool size</label>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_pool_size" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>
                            <div class="col-md-5 col-sm-4 col-xs-12 alamraya-no-padding">

                              <div class="alamraya-form-radio-group">
                                <label>
                                    <input type="radio" class="form_check_input" name="si_satuan_pool" value="M3" checked/>&nbsp;m<sup>3</sup>&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_satuan_pool" value="LITERS"/>&nbsp;liters&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_satuan_pool" value="USG"/>&nbsp;USG&nbsp;&nbsp;
                                </label>
                              </div>

                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pool type</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_pool_type" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Additional Information</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="3" name="si_additional_information" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Pump System</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pump System(s) Type</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_pump_type" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pump System(s) Pump</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_pump_pump" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pump System(s) Controller</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_pump_controller" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Controller Serial Number</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_controller_serial_number" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Motor / EC Drive Serial Number</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_motor_serial_number" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pump End Serial Number</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_pump_end_serial_number" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Installation Details</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Total dynamic head</label>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_total_dynamic_head" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>
                            <div class="col-md-5 col-sm-4 col-xs-12 alamraya-no-padding">

                              <div class="alamraya-form-radio-group">
                                <label>
                                    <input type="radio" class="form_check_input" name="si_total_dinamyc_satuan" value="M" checked/>&nbsp;m&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_total_dinamyc_satuan" value="FT"/>&nbsp;ft&nbsp;&nbsp;
                                </label>
                              </div>

                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Static head</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_static_head" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">m</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Daily flow rate</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_daily_flow_rate" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">m<sup>3</sup></span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Water source</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_water_source" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pipe length</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_pipe_lenght" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">m</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Pipe diameter</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_pipe_diameter" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">mm</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Cable length</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_cable_lenght" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">m</span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Type of water storage</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_type_of_water_storage" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Size of water storage</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <div class="input-group">
                                  <input type="number" name="si_size_of_water_storage" class="form-control" min="0" placeholder="0">
                                  <span class="input-group-addon bg-primary border-primary text-white">m<sup>3</sup></span>
                                </div>
                              </div>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12 alamraya-no-padding">
                              <div class="pull-left">
                                <h6 class="text-muted alamraya-small-text">Below only for surface pumps</h6>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Suction head</label>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_suction_head" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>
                            <div class="col-md-5 col-sm-4 col-xs-12 alamraya-no-padding">

                              <div class="alamraya-form-radio-group">
                                <label>
                                    <input type="radio" class="form_check_input" name="si_suction_head_satuan" value="M" checked/>&nbsp;m&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_suction_head_satuan" value="FT"/>&nbsp;ft&nbsp;&nbsp;
                                </label>
                              </div>

                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12 alamraya-no-padding">
                              <label>Inlet pipe size</label>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 alamraya-no-padding">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_itlet_pipe_size" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>
                            <div class="col-md-5 col-sm-4 col-xs-12 alamraya-no-padding">

                              <div class="alamraya-form-radio-group">
                                <label>
                                    <input type="radio" class="form_check_input" name="si_itlet_pipe_size_satuan" value="mm" checked/>&nbsp;mm&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" class="form_check_input" name="si_itlet_pipe_size_satuan" value="inch"/>&nbsp;inch&nbsp;&nbsp;
                                </label>
                              </div>

                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">PV Generator</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>PV module manufacturer</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_pv_module_manufacturer" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Model</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_model_generator" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Type</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_type_generator" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Quantity</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_quantity_generator" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Power (each)</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_power_each" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Power (total)</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_power_total" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Battery System</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Quantity</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_quantity_battery" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Capacity</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_capacity_battery" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Voltage</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_voltage_battery" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">CHECKLIST PARTS OF LORENTZ SYSTEM</h6>
                  <div class="row">
                    <div class="col-md-12 justify-content-center">

                      <div class="form-group form-group-sm">
                        <select class="form-control form-control-sm select2" id="quotation" onchange="tampil()" name="si_quotation">
                          <option disabled selected>--Pilih--</option>
                          @foreach ($quotation as $key => $value)
                            <option value="{{$value->q_id}}">{{$value->q_nota}}</option>
                          @endforeach
                        </select>
                      </div>

                    </div>
                  </div>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="table-responsive">
                              <table class="table table-hover" cellspacing="0">
                                <thead class="bg-gradient-info">
                                  <tr>
                                  <th>No</th>
                                  <th>Description</th>
                                  <th>Quantity</th>
                                  <th>Check ( ✔ / ✘ )</th>
                                  <th>Remarks</th>
                                  </tr>
                                </thead>
                                <tbody id="showquotation">

                                </tbody>
                              </table>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">PV Mounting System</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Manufaktur</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                 <textarea rows="1" name="si_manufaktur_system" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Type</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                 <textarea rows="1" name="si_type_system" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Model</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_model_system" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Quantity</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <input type="number" name="si_quantity_system" class="form-control" placeholder="0" min="0">
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Usage of Data and Illustrations</h6>

                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">

                          <div class="row">

                            <div class="col-md-12 col-sm-12 col-xs-12">
                              <div class="form-check form-check-flat">
                                <label class="form-check-label">
                                  <input type="checkbox" name="si_check1" value="Y" class="form-check-input checklist_agreement">
                                  I declare that I am the owner of the installation described or have been granted permission by the owner to make use of the data of the installation. I am the owner of all rights of use of the attached photographs of the installation or have been granted permission by the owner to make use of the photographs.
                                </label>
                              </div>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12">
                              <div class="form-check form-check-flat">
                                <label class="form-check-label">
                                  <input type="checkbox" name="si_check2" value="Y" class="form-check-input checklist_agreement">
                                  I grant Bernt Lorentz GmbH & Co. KG the right to publish the installation data on its website or in other forms and use the photographs for illustration alongside the description of installation or in other places or to allow other customers of LORENTZ to use the data and photographs to promote LORENTZ products.
                                </label>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Your Name</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_your_name" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Signature</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <select class="form-control form-control-sm select2" name="si_signature">
                                  <option disabled selected>--Pilih--</option>
                                  @foreach ($signature as $key => $value)
                                    <option value="{{$value->s_id}}">{{$value->s_name}}</option>
                                  @endforeach
                                </select>
                              </div>
                            </div>

                            <div class="col-md-3 col-sm-4 col-xs-12">
                              <label>Email Address</label>
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12">
                              <div class="form-group form-group-sm">
                                <textarea rows="1" name="si_email_address" class="form-control" placeholder="type something..."></textarea>
                              </div>
                            </div>

                          </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>

          </div>

          <!-- Button Next Prev Step 2-->
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">

                <div class="card-body">


                    <div class="row">
                      <div class="col-lg-12">
                        <button class="btn btn-info btn-sm m-2 btn-block btn-simpan next-step" type="button">Next</button>
                        <button class="btn btn-secondary btn-sm m-2 btn-block btn-simpan prev-step" type="button">Prev</button>
                      </div>

                    </div>




                </div>

              </div>
            </div>
          </div>
          <!-- End Button Next Prev Step 2 -->

        </div>
        <!-- End Step 2  -->

        <!-- Step 3  -->
        <div class="tab-pane" id="step3">
          <div class="row">

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h3>Complete</h3>
                  <p>You have successfully completed all steps.</p>

                </div>
              </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">

                  <div class="row">
                    <div class="col-lg-12">
                      <button class="btn btn-info btn-sm m-2 btn-block btn-simpan" onclick="submit()" type="button">Save</button>
                      <button class="btn btn-secondary btn-sm m-2 btn-block btn-simpan prev-step" type="button">Prev</button>
                    </div>

                  </div>


                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- End Step 3 -->
      </div>
    </div>
  </form>


</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script type="text/javascript">
var int = 1;
var counter = 1;
var countertab = 1;

$(document).ready(function(){
  $('.select2').select2();

  judul(countertab);
  $('input[name=jumlahimage]').val(counter);
  $('input[name=jumlahtab]').val(countertab);
});

$('.form-control.select2-hidden-accessible').select2({
  width: '100%'
});

$('div[id*=form-gambar-]').each(function(){


  $(document).on('click','.btn-tambah-gambar', function(){
  var i = $(this).parents('.card-body').find('input[type="file"]').length;
  counter = $('.uploadimage').length;
  counter += 1;
  // console.log(i);
    if (i < 4) {
      $(this).parents('.card-body').find('div[id*="form-gambar-"]')
      .append(
        '<div class="col-md-6 col-sm-6 col-xs-12 text-center image-file">'+
          '<div class="form-group">'+
            '<img src="{{asset('assets/images/add-image-icon.png')}}" class="preview-image">'+
          '</div>'+
          '<div class="row">'+

            '<div class="col-md-12">'+
              '<div class="form-group">'+
                '<div class="input-group">'+
                  '<div class="input-group-addon">'+
                    '<button class="btn btn-danger btn-hapus-gambar btn-xs" type="button">'+
                      '<i class="fa fa-trash"></i>'+
                    '</button>'+
                  '</div>'+
                  '<input type="file" class="form-control form-control-sm uploadimage" name="image'+counter+'" accept="image/*">'+
                  '<input type="hidden" class="title'+countertab+'" name="title[]">'+
                '</div>'+
              '</div>'+
            '</div>'+

          '</div>'+
        '</div>'
              );
        judul(countertab);
        $('input[name=jumlahimage]').val(counter);
        $('input[name=jumlahtab]').val(countertab);
    } else {
      iziToast.error({
        message:"Maximum only 4!"
      });
    }
  });

  $(document).on('click', '.btn-hapus-gambar', function(){
    $(this).parents('.image-file').remove();
  });
});

$('.btn-tambah').on('click', function(){
counter = $('.uploadimage').length;
countertab = $('.jumlahjudul').length;
countertab += 1;
counter += 1;
  $('#form-dokumentasi')
                  .append(
      '<div class="col-lg-12 m4">'+
        '<div class="row">'+
          '<div class="col-lg-12 grid-margin stretch-card">'+
            '<div class="card">'+

              '<div class="card-body">'+

                '<div class="row" id="form-gambar-'+int+'">'+

                  '<div class="col-md-3 col-sm-4 col-xs-12">'+
                    '<label>Title</label>'+
                  '</div>'+

                  '<div class="col-md-9 col-sm-8 col-xs-12">'+
                    '<div class="form-group form-group-sm">'+
                      '<input type="text" class="form-control jumlahjudul judul'+countertab+'" onkeyup="judul('+countertab+')" name="judul[]">'+
                    '</div>'+
                  '</div>'+

                  '<div class="col-md-6 col-sm-6 col-xs-12 text-center image-file">'+
                    '<div class="form-group">'+
                      '<img src="{{asset('assets/images/add-image-icon.png')}}" class="preview-image">'+
                    '</div>'+
                    '<div class="row">'+

                      '<div class="col-md-12">'+
                        '<div class="form-group">'+
                          '<input type="file" class="form-control form-control-sm uploadimage" name="image'+counter+'" accept="image/*">'+
                          '<input type="hidden" class="title'+countertab+'" name="title[]">'+
                        '</div>'+
                      '</div>'+

                    '</div>'+
                  '</div>'+

                '</div>'+
                '<div class="row">'+
                  '<div class="col-md-12">'+
                    '<button type="button" class="btn btn-primary btn-block btn-tambah-gambar"><i class="fa fa-plus"></i> Add More Image</button>'+
                  '</div>'+
                '</div>'+


              '</div>'+

            '</div>'+
          '</div>'+

          '<div class="col-lg-12 text-center grid-margin">'+
            '<button type="button" class="btn btn-danger btn-hapus">'+
              '<i class="fa fa-trash"></i> Delete'+
            '</button>'+
          '</div>'+
        '</div>'+
      '</div>'
                  );
                  judul(countertab);
                  $('input[name=jumlahimage]').val(counter);
                  $('input[name=jumlahtab]').val(countertab);
  var get_scroll = $('#form-gambar-'+int).offset();

  var scroll = get_scroll.top - 100;

  $('html, body').animate({scrollTop:scroll}, 'slow');

  int++;
});

$(document).on('click', '.btn-hapus', function(){
  $(this).parents('.m4').remove();

  var get_tambah_posisi = $('.btn-tambah').offset();
  var tambah_posisi = get_tambah_posisi.top - 100;
  $('html, body').animate({scrollTop:tambah_posisi}, 'slow');

  int--;
});
// image preview
function readURL(input) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $(input).parents('.image-file').find('.preview-image').attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
  }
}
// end image preview
$(document).on('change', "input[type='file']",function() {
  readURL(this);
});

$(document).on('click', '.preview-image', function(){
  $(this).parents('.image-file').find('input[type="file"]').click();
});
$('.btn-scrolltop').on('click', function(){
  $('html, body').animate({scrollTop:0}, 'slow');
});
$(document).on('click', '.btn-scrollbottom', function(){
  var footer = $('.footer').offset();
  // console.log(footer);
  $('html, body').animate({scrollTop:footer.top}, 'slow');
});
</script>
<script type="text/javascript">
   //Initialize tooltips
   $('.nav-tabs > li a[title]').tooltip();

   //Wizard
   $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

       var $target = $(e.target);

       if ($target.hasClass('disabled')) {
           return false;
       }
   });

   $(".next-step").click(function (e) {
       var $active = $('.wizard .nav-tabs .nav-item .active');
       var $activeli = $active.parent("li");

       $($activeli).next().find('a[data-toggle="tab"]').removeClass("disabled");
       $($activeli).next().find('a[data-toggle="tab"]').click();
       $('html, body').animate({scrollTop:0}, 'slow');
   });


   $(".prev-step").click(function (e) {

       var $active = $('.wizard .nav-tabs .nav-item .active');
       var $activeli = $active.parent("li");

       $($activeli).prev().find('a[data-toggle="tab"]').removeClass("disabled");
       $($activeli).prev().find('a[data-toggle="tab"]').click();
       $('html, body').animate({scrollTop:0}, 'slow');

   });
   function judul(id){
     var hasil = $('.judul'+id).val();
     $('.title'+id).val(hasil);
   }
   function submit(){
     $('#form').submit();
   }

   function tampil(){
     var quotation = $('#quotation').val();
     var html = '';
     $.ajax({
       type: 'get',
       data: {quotation:quotation},
       dataType: 'json',
       url: baseUrl + '/project/jadwalujicoba/quotation',
       success : function(result){
         for (var i = 0; i < result.length; i++) {
           html += '<tr>'+
                    '<td>'+(i + 1)+'</td>'+
                    '<td>'+result[i].i_name+'</td>'+
                    '<input type="text" name="sc_item[]" class="form-control value="'+result[i].i_name+'"">'+
                    '<td>'+
                    '<input type="number" name="sc_quantity[]" class="form-control" placeholder="0" min="0">'+
                    '</td>'+
                    '<td class="center">'+
                      '<input type="checkbox" class="checkbox" name="sc_check[]" value="Y">'+
                    '</td>'+
                    '</td>'+
                    '<td>'+
                    '<textarea rows="1" name="sc_remarks[]" class="form-control" placeholder="type something..."></textarea>'+
                    '</td>'+
                    '</tr>';
         }
         $('#showquotation').html(html);
       }
     });
   }

   function filtercity(){
     var hasil = $('#city').val();
     var text = $('#'+hasil).text();
     $('input[name=si_province]').val(text);
     var html = '<option disabled selected>--Pilih--</option>';
     $.ajax({
       type: 'get',
       data: {hasil:hasil},
       dataType : 'json',
       url: baseUrl + '/project/jadwalujicoba/city',
        success : function(result){
          for (var i = 0; i < result.length; i++) {
            html += '<option value="'+result[i].name+'">'+result[i].name+'</option>';
          }
          $('#showcity').html(html);
        }
     });
   }
</script>
@endsection
