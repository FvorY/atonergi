@extends('main')

@section('content')
<!-- partial -->
        <div class="content-wrapper">

          <div class="row">
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
          </div>

        </div>
        <!-- content-wrapper ends -->
@endsection

@section('extra_script')
<script type="text/javascript">

  $(document).ready(function(){
    realtime();

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
