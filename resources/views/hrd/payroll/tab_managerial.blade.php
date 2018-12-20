<div class="tab-pane fade show active" id="pmanagerial" role="tabpanel" aria-labelledby="tab-6-1">
	<div class="col-lg-12 grid-margin stretch-card alamraya-no-padding">
      	<div class="card">
	        <div class="card-body">
	          <h4 class="card-title">Managerial</h4>
						@if(Session::has('sukses'))
								<div class="alert alert-fill-primary" role="alert">
									<i class="mdi mdi-alert-circle"></i>
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
																aria-hidden="true">&times;</span></button>
										<strong>{{ Session::get('sukses') }}</strong>
								</div>
						@elseif(Session::has('gagal'))
							<div class="alert alert-fill-danger" role="alert">
								<i class="mdi mdi-alert-circle"></i>
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
															aria-hidden="true">&times;</span></button>
									<strong>{{ Session::get('gagal') }}</strong>
							</div>
						@endif
						<a href="javascript:void(0);" onclick="javascipt:window.open('{{url('/public/assets/berkas/absenbulan/absenbulan.xlsx')}}');"><button class="btn btn-success">Download Contoh Excel</button></a>
						<br>
						<br>
						<form action="{{url('/hrd/absensi/importbulan')}}" class="form-horizontal" method="POST" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row ">
								<div class="col-md-12 ">
									<label class="col-lg-12 col-form-label alamraya-no-padding">Upload File Absensi (Maks. 5mb)</label>
									<input type="file" class="dropify" name="managerial" data-height="100" data-max-file-size="5000kb"/>
								</div>
								</div>
								<div class="row mt-3 mb-3">
								<div class="col-lg-12 text-right">
									<button class="btn btn-info" type="button">Proses Data</button>
								</div>
							</div>
							</form>

					<div class="table-responsive">
						<table class="table table-striped table-hover data-table" cellspacing="0" id="managerialtable">
						  <thead class="bg-gradient-info">
						    <tr>
								<th>Gaji Pokok</th>
								<th>Uang Makan</th>
								<th>Uang Transport</th>
								<th>Uang Operasioal</th>
								<th>Tunjungan Istri</th>
								<th>Tunjungan Anak</th>
								<th>Komisi Sales</th>
								<th>Thr</th>
								<th>Insentif Performa</th>
								<th>Bonus Kpi</th>
								<th>Bonus Performa Perusahaan</th>
								<th>Bonus Loyalitas</th>
								<th>Bpjs Kes</th>
								<th>Bpjs Tk</th>
								<th>Terlambat</th>
								<th>Potongan Disiplin Kerja</th>
								<th>Kasbon</th>
						    </tr>
						  </thead>
						  <tbody class="center">

						  </tbody>
						</table>
					</div>

					<div class="col-lg-12 text-right mt-3">
						<a href="{{route('print_payroll')}}" class="btn btn-primary" target="_blank"><i class="fa fa-print"></i> Print</a>
					</div>

	        	</div>
	      	</div>
    	</div>
	</div>
</div>
