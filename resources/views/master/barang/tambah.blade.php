<!-- Modal -->
<div id="tambah" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Form Master Data Barang</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
        <div class="modal-body">
          <form id="simpan_barang">
            
            <input type="hidden" value="{{csrf_token()}}" name="_token">
            <div class="row">

                                  
              

              

              <div class="col-md-3 col-sm-4 col-xs-12">
                
                    <label class="tebal">Item Name</label>
               
              </div>
              <div class="col-md-3 col-sm-8 col-xs-12">
                <div class="form-group">
                    <input type="text"  class="form-control form-control-sm" name="item_name">                               
                </div>
              </div>

             

              
                

              <div class="col-md-3 col-sm-4 col-xs-12">
               
                  <label class="tebal">Type</label>
               
              </div>

              <div class="col-md-3 col-sm-8 col-xs-12">
                <div class="form-group">
                    <select class="form-control" name="type_barang">
                      <option value="">--Select Type--</option>
                      @foreach($type_barang as $tipe)
                        <option value="{{$tipe['it_code']}}">{{$tipe['it_code']}} || {{$tipe['it_name']}}</option>
                      @endforeach

                    </select>
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-xs-12">
               
                  <label class="tebal">Unit#</label>
               
              </div>

              <div class="col-md-3 col-sm-8 col-xs-12">
                <div class="form-group">
                    <input type="text" class="form-control" name="unit">
                </div>
              </div>
            
             <div class="col-md-3 col-sm-4 col-xs-12">
                
                    <label class="tebal">Price</label>
               
              </div>
              <div class="col-md-3 col-sm-8 col-xs-12">
                <div class="form-group">
                    <input type="text"  class="form-control form-control-sm" name="price" maxlength="20" required="">                               
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-xs-12">
                
                    <label class="tebal">Weight</label>
               
              </div>
              <div class="col-md-3 col-sm-8 col-xs-12">
                <div class="form-group">
                    <input type="text"  class="form-control form-control-sm" name="weight">                               
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-xs-12">
                
                    <label class="tebal">Min Stock</label>
               
              </div>
              <div class="col-md-3 col-sm-8 col-xs-12">
                <div class="form-group">
                    <input type="text" class="form-control form-control-sm" name="min_stock">                               
                </div>
              </div>      
              <div class="col-md-3 col-sm-4 col-xs-12">
                
                    <label class="tebal">Description</label>
               
              </div>
              <div class="col-md-9 col-sm-8 col-xs-12">
                <div class="form-group">
                    <textarea class="form-control form-control-sm" name="description"></textarea>                               
                </div>
              </div>

              <div class="col-md-3 col-sm-4 col-xs-12 122mm">
                <label>Image</label>
              </div>

              <div class="col-md-3 col-sm-8 col-xs-12 122mm">
                  <div class="file-upload">
                    <div class="file-select">
                      <div class="file-select-button" id="fileName">Image</div>
                      <div class="file-select-name" id="noFile">Choose Image...</div> 
                      <input type="file" name="image" onchange="loadFile(event)" id="chooseFile" accept="image/*">
                    </div>
                  </div>

              </div>
                
              <div class="col-md-3 col-sm-4 col-xs-12 122mm">
                <label>Preview</label>
              </div>

              <div class="col-md-3 col-sm-8 col-xs-12 122mm">
                  <div class="preview_td">
                      <img style="width: 100px;height: 100px;border:1px solid pink" id="output" >
                  </div>
              </div>

              <div class="col-12" id="check_change_image">
                
              </div>

              <input type="hidden" name="item_codex">
            </div> 
          </form>
          </div>
        <div class="modal-footer">
          <div id="ganti_tombol">
            <button class="btn btn-primary" type="button" onclick="simpan()">Save Data</button>
          </div>
          <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        </div>
    </div>

  </div>
</div>
