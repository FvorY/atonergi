@extends('main')
@section('content')

<!-- partial -->
<form id="form-save">
<div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12"> 
      <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb bg-info">
          <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
          <li class="breadcrumb-item">Inventory</li>
          <li class="breadcrumb-item active" aria-current="page">Stock Mutation</li>
        </ol>
      </nav>
    </div>
    <div class="col-lg-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Menampilkan <b style="color:red;">Stock Mutasi</b> Dengan Nama item <b style="color:red;">"{{ $header_nama->i_name }}  /  {{ $header_nama->i_code }}"</b></h4>
   
             <div class="table-responsive" style="margin-bottom: 15px;">
               <table class="table table-bordered table-hover" cellspacing="0" id="datatable">
                 <thead class="bg-gradient-info">
                   <tr>
                     <th>Item Code</th>
                     <th>Item Name</th>
                     <th>Refenrence</th>
                     <th>Item Hpp</th>
                     <th>Qty Approved</th>
                     <th>Qty Use</th>
                     <th>Qty Remains</th>
                     <th>Description</th>
                   </tr>
                 </thead>
                 <tbody>
                    @foreach ($data as $e)
                      <tr>
                        <td>{{ $e->sm_item }}</td>
                        <td>{{ $e->i_name }}</td>
                        <td>{{ $e->sm_ref }}</td>
                        <td align="right">{{ number_format($e->sm_hpp,0,'.','.') }}</td>
                        <td align="right">{{ number_format($e->sm_qty,0,'.','.') }}</td>
                        <td align="right">{{ number_format($e->sm_use,0,'.','.') }}</td>
                        <td align="right">{{ number_format($e->sm_sisa,0,'.','.') }}</td>
                        <td>{{ $e->sm_description }}</td>
                      </tr>
                    @endforeach
                 </tbody>
               </table>
             </div>

             
            
            <div align="right" style="margin-top: 15px;">
              <div id="change_function">
                <a href="{{ route('stockgudang') }}" class="btn btn-secondary btn-sm">Back</a>
              </div>
            </div>
            </div>
        </div>
    </div>
  </div>
</div>
</form>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script type="text/javascript">
  var table = $('#datatable').DataTable({});

</script>
@endsection




