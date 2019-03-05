@extends('main')
@section('content')


<!-- partial -->
<div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb bg-info">
          <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
          <li class="breadcrumb-item">After Order</li>
          <li class="breadcrumb-item active" aria-current="page">LPJ Perdin</li>
        </ol>
      </nav>
    </div>

  	<div class="col-lg-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">LPJ Perdin</h4>


          <div class="table-responsive">
			        <table class="table table-hover table-striped table-bordered" id="table_perdin" cellspacing="0">
                  <thead class="bg-gradient-info">
                    <tr>
                      <th width="1%">No</th>
                      <th>Estimation Date</th>
                      <th>Estimation Code</th>
                      <th>Estimation Budget</th>
                      <th>Perdin</th>
                      <th>Status</th>
                      <th>Action</th>
                      <th width="1%">Printout</th>
                      <th width="1%">Approval</th>
                    </tr>
                  </thead>

                  <tbody>
                    @foreach ($data as $key => $value)
                      <tr>
                        <td align="center">{{$key + 1}}</td>
                        <td>{{Carbon\Carbon::parse($value->p_tanggung_jawab)->format('d-m-Y')}}</td>
                        <td>{{$value->lp_code}}</td>
                        <td align="right">{{number_format($value->p_total,2,',','.')}}</td>
                        <td align="center">{{$value->p_code}}</td>
                        @if ($value->lp_status == null)
                          <td align="center"><span class="badge badge-pill badge-secondary text-dark">Waiting</span></td>
                        @else
                          <td align="center"><span class="badge badge-pill badge-secondary text-dark">{{$value->lp_status}}</span></td>
                        @endif
                        <td align="center" valign="middle">
                          <div class="btn-group btn-group-sm">
                            <a class="btn btn-primary btn-sm" href="{{route('proses_perdin')}}?id={{encrypt($value->p_id)}}">Process</a>
                            <a class="btn btn-warning btn-sm" href="#" title="Edit"><i class="fa fa-edit"></i></a>
                            <button class="btn btn-info" type="button" title="Detail"><i class="fa fa-list"></i></button>
                          </div>
                        </td>
                        <td align="center">
                            <a class="btn btn-info" href="{{route('print_perdin')}}" target="_blank" title="Print"><i class="fa fa-print"></i></a>
                        </td>
                        <td align="center">
                          <button class="btn btn-success btn-sm" type="button" title="Approve"><i class="fa fa-check-square"></i></button>

                        </td>

                      </tr>
                    @endforeach
                  </tbody>
              </table>
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

    var table = $('#table_perdin').DataTable();
No});

</script>
@endsection
