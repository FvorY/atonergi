<div class="tab-pane fade active show" id="konfirmas_kpi_tab" role="tabpanel">

	<div class="card-body">
	  <h4 class="card-title">Konfirmasi KPI</h4>
	  	<div class="row">
	  		<div class="col-md-2 col-sm-3 col-xs-12">
	        	<label>Periode</label>
	        </div>
	    	<div class="col-md-7 col-sm-9 col-xs-12">

	        	
	    		<div class="form-group">
	    			<div class="input-group input-daterange">
	    				<input type="text" class="form-control form-control-sm" name="">
	    				<span class="input-group-addon bg-secondary">-</span>
	    				<input type="text" class="form-control form-control-sm" name="">
	    				<div class="input-group-btn">
							<button class="btn btn-sm btn-info"><i class="fa fa-search"></i></button>
							<button class="btn btn-sm btn-secondary"><i class="fa fa-refresh"></i></button>
						</div>
	    			</div>
	    		</div>
				
			</div>
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="form-group">
					<select class="form-control form-control-sm">
						<option value="semua">Semua</option>	
						<option value="belum">Belum dikonfirm</option>	
						<option value="sudah">Sudah dikonfirm</option>	
					</select>
				</div>
			</div>
	    </div>		          
	  	<div class="row">

			<div class="table-responsive">
				<table class="table table-hover data-table" cellspacing="0">
				  <thead class="bg-gradient-info">
				    <tr>
				      <th>No</th>
				      <th>Date</th>
				      <th>Code</th>
				      <th>Employee</th>
				      <th>Status</th>
				      <th>Date Confirm</th>
				      <th>Total Score</th>
				      <th>Action</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				    	<td>1</td>
				    	<td>20 Dec 2018</td>
				    	<td>PKI-2018-001</td>
				    	<td>Alpha</td>
				    	<td style="color: blue;">Sudah Dikonfirmasi</td>
				    	<td>21 Dec 2019</td>
				    	<td>18.00</td>
				    	<td>
				    		<div class="btn-group btn-group-sm">
				    			<button class="btn btn-success" data-toggle="modal" data-target="#detail_kpi" title="Detail" type="button"><i class="fa fa-info"></i></button>
				    			<button class="btn btn-primary disabled" title="Confirm" data-toggle="modal" data-target="#konfirm_kpi" type="button" disabled=""><i class="fa fa-edit"></i></button>
				    			<button class="btn btn-danger" title="Batalkan Konfirmasi" type="button"><i class="fa fa-times"></i></button>
				    		</div>
				    	</td>
				    </tr>
				    <tr>
				    	<td>2</td>
				    	<td>18 Dec 2018</td>
				    	<td>PKI-2018-002</td>
				    	<td>Bravo</td>
				    	<td style="color: red;">Belum Dikonfirmasi</td>
				    	<td></td>
				    	<td>0.00</td>
				    	<td>
				    		<div class="btn-group btn-group-sm">
				    			<button class="btn btn-success" data-toggle="modal" data-target="#detail_kpi" title="Detail" type="button"><i class="fa fa-info"></i></button>
				    			<button class="btn btn-primary" title="Confirm" data-toggle="modal" data-target="#konfirm_kpi" type="button"><i class="fa fa-edit"></i></button>
				    			<button class="btn btn-danger disabled" title="Batalkan Konfirmasi" type="button" disabled=""><i class="fa fa-times"></i></button>
				    		</div>
				    	</td>
				    </tr>
				  </tbody>
				</table>
			</div>
			
		</div>

	</div>

</div>