<!-- Modal -->
<form id="form-save">
<div id="tambah" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Form Nilai Penawaran</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-2 col-sm-6 col-xs-12">
            <label><ST class="bintang_merah">* </ST>Marketing Name</label>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <select class="form-control form-control-sm" name="d_marketing" id="d_marketname"> 
                  <option selected="" value="">- Pilih -</option>
                  @foreach ($marketing as $a)
                    <option value="{{ $a->mk_code }}">{{ $a->mk_code }} - {{ $a->mk_name }}</option>
                  @endforeach
              </select>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <label>Kode</label>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
              <input type="text" class="form-control form-control-sm " readonly="" name="kode_old" id="kode_old">
          </div>
        </div>
        <div class="row" style="margin-top: 15px;border-top: 1px solid #98c3d1;padding-top:15px;border-bottom: 1px solid #98c3d1; margin-bottom: 15px;">
          <div class="col-md-2 col-sm-2 col-xs-12">
            <label><ST class="bintang_merah">* </ST>Item Name</label>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12"">
            <div class="form-group">
              <select class="form-control form-control-sm" name="d_itemname" id="d_itemname"> 
                  <option selected="" value="">- Pilih -</option>
                  @foreach ($item as $e)
                    <option value="{{ $e->i_code }}" data-harga="{{ $e->i_price }}" data-name="{{ $e->i_name }}">{{ $e->i_code }} - {{ $e->i_name }}</option>
                  @endforeach
              </select>
            </div>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <label>Item Price</label>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control form-control-sm right" readonly="" name="d_price" id="d_price">
            </div>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <label title="Harga Batas Bawah">Lower Limit Price</label>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <div class="form-group">
              <input type="text" class="form-control form-control-sm format_money right" name="d_lowerprice" id="d_lowerprice">
            </div>
          </div>
          
         </div>
         <div class="table-responsive hilangin">
           <table class="table table-hover data-table" cellspacing="0" id="object_906">
             <thead class="bg-gradient-info">
               <tr>
                 <th>Item Kode</th>
                 <th>Item Name</th>
                 <th>Item Price</th>
                 <th>Lower Limit Price</th>
                 <th width="1%">Action</th>
               </tr>
             </thead>
           </table>
         </div>
         
      </div>
      <div class="modal-footer">
        <div id="change_function">
          <button class="btn btn-primary" type="button" id="save_data">Save Data</button>
        </div>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
</form>