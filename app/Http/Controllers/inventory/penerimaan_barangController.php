<?php

namespace App\Http\Controllers\inventory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Barang;
use Yajra\Datatables\Datatables;
use DB;
use Carbon\Carbon;
class penerimaan_barangController extends Controller
{

	 public function penerimaan_barang()
	 {
		 $po = DB::table('d_purchaseorder')
							 ->leftjoin('d_requestorder', 'ro_code', '=', 'po_nomor_ro')
							 ->where('po_status','=','F')
							 ->get();

		for ($i=0; $i < count($po); $i++) {
			$tmp = DB::table("m_vendor")
								->where('s_kode', $po[$i]->po_vendor)
								->first();

			$po[$i]->po_vendor = $tmp->s_company;
		}

	 	return view('inventory/penerimaan_barang/penerimaan_barang',compact("po", "vendor"));
	 }
	 public function datatable_penerimaan_barang()
	 {
      $list = DB::select("SELECT * from d_penerimaan_barang left join m_vendor on m_vendor.s_kode = d_penerimaan_barang.pb_vendor");
          // return $list;
      $data = collect($list);

      for ($i=0; $i <count($data) ; $i++) {
      	$check_data_seq = DB::table('d_penerimaan_barang_dt')->where('pbdt_code','=',$data[$i]->pb_code)->get();
      }

      // return $check_data_seq;
      // return $data;

      return Datatables::of($data)

              ->addColumn('aksi', function ($data) {
                        return  '<div class="btn-group">'.
                                 '<button type="button" onclick="edit(this)" class="btn btn-info btn-sm" title="edit">'.
                                 '<label class="fa fa-pencil-alt"></label></button>'.
                                '</div>';
              })
              ->addColumn('detail', function ($data) {

                  return '<button data-toggle="modal" onclick="detail(this)"  class="btn btn-outline-primary btn-sm">Detail</button>';
              })
              ->addColumn('status', function ($data) {

                  return '<span class="badge badge-warning badge-pill">In Process</span>';
              })
              ->rawColumns(['aksi','detail','confirmed','status'])
          ->make(true);
	 }
	 public function create_penerimaan_barang(Request $request)
	 {
	 	dd($request->all());
	 }
	 public function cari_penerimaan_barang(Request $request)
	 {
	 	// dd($request->all());

	 	$header_cari = DB::table('d_purchaseorder')->leftjoin('m_vendor','d_purchaseorder.po_vendor','=','m_vendor.s_kode')->where('po_code','=',$request->this_val)->where('po_status','=','F')->first();
	 	json_encode($header_cari);
	 	$seq_cari = DB::table('d_purchaseorder_dt')->leftjoin('m_item','m_item.i_code','=','d_purchaseorder_dt.podt_item')->where('podt_code','=',$request->this_val)->where('podt_status','=','F')->get();

	 	return view('inventory/penerimaan_barang/create_penerimaan_barang',compact("header_cari",'seq_cari'));
	 }
	 public function save_penerimaan_barang(Request $request)
	 {
	 	// dd($request->all());
       return DB::transaction(function() use ($request) {
       $tanggal = date("Y-m-d h:i:s");

       $kode = DB::table('d_penerimaan_barang')->max('pb_id');
            if ($kode == null) {
                $kode = 1;
            }else{
                $kode += 1;
            }
	   $index = str_pad($kode, 3, '0', STR_PAD_LEFT);
	   $date = date('my');
	   $nota = 'PB-'.$index.'/'. $request->pb_vendor .'/'.$date;

	   // header
	   $data_header = DB::table('d_penerimaan_barang')->insert([
	   			'pb_id'=>$kode,
	   			'pb_code'=>$nota,
	   			'pb_vendor'=>$request->pb_vendor,
	   			'pb_delivery_order'=>$request->pb_delivery_order,
	   			'pb_ref'=>$request->pb_ref,
	   			'pb_date'=>date('Y-m-d',strtotime($request->pb_date)),
	   			'pb_insert'=>$tanggal,
		 		'pb_insert_by'=>'',
	 	]);
	    $kode_seq = 0;

	    $header_po = DB::table('d_purchaseorder')
	    		->where('po_code','=',$request->pb_ref)
	    		->update(['po_status'=>'T']);


	    // sequence
	 	for ($i=0; $i <count($request->po_item) ; $i++) {
	    	$kode_seq += 1;
		 	$arr1[$i] =	$request->qty_remain[$i];
		 	$arr2[$i] = $request->qty_received[$i];

	    	$subtracted = array_map(function ($x, $y) { return $x-$y;} , $arr1, $arr2);
			$result = array_combine(array_keys($arr1), $subtracted);

		 	$data_seq = DB::table('d_penerimaan_barang_dt')->insert([
		 		'pbdt_id'=>$kode_seq,
		 		'pbdt_code'=>$nota,
		 		'pbdt_item'=>$request->po_item[$i],
		 		'pbdt_qty_sent'=>$request->qty_approved[$i],
		 		'pbdt_qty_received'=>$request->qty_received[$i],
		 		'pbdt_qty_remains'=>(int)$request->qty_approved[$i] - (int)$request->qty_received[$i],
		 		'pbdt_insert'=>$tanggal,
		 		'pbdt_insert_by'=>'',
		 	]);

		 	$seq_po = DB::table('d_purchaseorder_dt')
	    		->where('podt_code','=',$request->pb_ref)
	    		->update(['podt_status'=>'T']);

			$stock = DB::table('i_stock_gudang')
								->where('sg_iditem', $request->po_item[$i])
								->get();

								if (count($stock) < 0) {
										DB::table('i_stock_gudang')
															->where('sg_id', $stock[0]->sg_id)
															->where('sg_iditem', $request->po_item[$i])
															->update([
																'sg_qty' => $stock[0]->sg_qty + $request->qty_received[$i],
																'sg_harga' => $request->po_harga[$i]
															]);

															$idmutasi = DB::table('i_stock_mutasi')
																						->where('sm_id', $stock[0]->sg_id)
																						->max('sm_iddetail');

															$harga = DB::table('i_stock_gudang')
																				->where('sg_iditem', $request->po_item[$i])
																				->select('sg_harga')
																				->get();

															DB::table('i_stock_mutasi')
																	->insert([
																		'sm_id' => $idstock + 1,
																		'sm_iddetail' => $idmutasi + 1,
																		'sm_item' => $request->po_item[$i],
																		'sm_hpp' => $harga[0]->sg_harga,
																		'sm_qty' => $request->qty_received[$i],
																		'sm_use' => 0,
																		'sm_sisa' => $request->qty_received[$i],
																		'sm_description' => 'PENERIMAAN BARANG',
																		'sm_ref' => $nota,
																		'sm_insert' => Carbon::now('Asia/Jakarta'),
																		'sm_deliveryorder' => $request->pb_delivery_order
																	]);
								} else {
									$idstock = DB::table('i_stock_gudang')
															->max('sg_id');

									DB::table('i_stock_gudang')
										->insert([
											'sg_id' => $idstock + 1,
											'sg_iditem' => $request->po_item[$i],
											'sg_qty' => $request->qty_received[$i],
											'sg_harga' => $request->po_harga[$i],
											'sg_insert' => Carbon::now('Asia/Jakarta')
										]);

										$idmutasi = DB::table('i_stock_mutasi')
																	->where('sm_id', $idstock + 1)
																	->max('sm_iddetail');

										$harga = DB::table('i_stock_gudang')
															->where('sg_iditem', $request->po_item[$i])
															->select('sg_harga')
															->get();

										DB::table('i_stock_mutasi')
												->insert([
													'sm_id' => $idstock + 1,
													'sm_iddetail' => $idmutasi + 1,
													'sm_item' => $request->po_item[$i],
													'sm_hpp' => $harga[0]->sg_harga,
													'sm_qty' => $request->qty_received[$i],
													'sm_use' => 0,
													'sm_sisa' => $request->qty_received[$i],
													'sm_description' => 'PENERIMAAN BARANG',
													'sm_ref' => $nota,
													'sm_insert' => Carbon::now('Asia/Jakarta'),
													'sm_deliveryorder' => $request->pb_delivery_order
												]);
								}

	 	}

	 	return response()->json(['status'=>1]);
	 });
	 }





	 ///BATAS INPUT




	 public function update_penerimaan_barang(Request $request)
	 {
	 return DB::transaction(function() use ($request) {

			for ($i=0; $i < count($request->po_item); $i++) {
				$stock = DB::table('i_stock_gudang')
	 		 						->where('sg_iditem', $request->po_item[$i])
	 								->get();

				$penerimaan = DB::table('d_penerimaan_barang')
	 		 							 ->join('d_penerimaan_barang_dt', 'pbdt_code', '=', 'pb_code')
										 ->where('pbdt_item', $request->po_item[$i])
	 									 ->where('pb_code', $request->nota)
	 									 ->get();

				DB::table('i_stock_gudang')
	 		 		->where('sg_iditem', $request->po_item[$i])
	 				->update([
	 					'sg_qty' => $stock[0]->sg_qty - $penerimaan[0]->pbdt_qty_received
	 				]);

				DB::table('i_stock_mutasi')
					->where('sm_id', $stock[0]->sg_id)
					->where('sm_item', $stock[0]->sg_iditem)
					->where('sm_description', 'PENERIMAAN BARANG')
					->where('sm_ref', $request->nota)
					->where('sm_deliveryorder', $penerimaan[0]->pb_delivery_order)
					->delete();
			}

			DB::table('d_penerimaan_barang')
					 ->where('pb_code', $request->nota)
					 ->delete();

			DB::table('d_penerimaan_barang_dt')
					 ->where('pbdt_code', $request->nota)
					 ->delete();

		 $tanggal = date("Y-m-d h:i:s");

 		$kode = DB::table('d_penerimaan_barang')->max('pb_id');
 				 if ($kode == null) {
 						 $kode = 1;
 				 }else{
 						 $kode += 1;
 				 }

 	$nota = $request->nota;

 	// header
 	$data_header = DB::table('d_penerimaan_barang')->insert([
 			 'pb_id'=>$kode,
 			 'pb_code'=>$nota,
 			 'pb_vendor'=>$request->pb_vendor,
 			 'pb_delivery_order'=>$request->pb_delivery_order,
 			 'pb_ref'=>$request->pb_ref,
 			 'pb_date'=>date('Y-m-d',strtotime($request->pb_date)),
 			 'pb_insert'=>$tanggal,
 		 'pb_insert_by'=>'',
  ]);
 	 $kode_seq = 0;

 	 $header_po = DB::table('d_purchaseorder')
 			 ->where('po_code','=',$request->pb_ref)
 			 ->update(['po_status'=>'T']);


 	 // sequence
  for ($i=0; $i <count($request->po_item) ; $i++) {
 		 $kode_seq += 1;
 	 $arr1[$i] =	$request->qty_remain[$i];
 	 $arr2[$i] = $request->qty_received[$i];

 		 $subtracted = array_map(function ($x, $y) { return $x-$y;} , $arr1, $arr2);
 	 $result = array_combine(array_keys($arr1), $subtracted);

 	 $data_seq = DB::table('d_penerimaan_barang_dt')->insert([
 		 'pbdt_id'=>$kode_seq,
 		 'pbdt_code'=>$nota,
 		 'pbdt_item'=>$request->po_item[$i],
 		 'pbdt_qty_sent'=>$request->qty_approved[$i],
 		 'pbdt_qty_received'=>$request->qty_received[$i],
 		 'pbdt_qty_remains'=>$result[$i],
 		 'pbdt_insert'=>$tanggal,
 		 'pbdt_insert_by'=>'',
 	 ]);

 	 $seq_po = DB::table('d_purchaseorder_dt')
 			 ->where('podt_code','=',$request->pb_ref)
 			 ->update(['podt_status'=>'T']);

 	 $stock = DB::table('i_stock_gudang')
 						 ->where('sg_iditem', $request->po_item[$i])
 						 ->get();

 						 if (count($stock) < 0) {
 								 DB::table('i_stock_gudang')
 													 ->where('sg_id', $stock[0]->sg_id)
 													 ->where('sg_iditem', $request->po_item[$i])
 													 ->update([
 														 'sg_qty' => $stock[0]->sg_qty + $request->qty_received[$i],
 														 'sg_harga' => $request->po_harga[$i]
 													 ]);

 													 $idmutasi = DB::table('i_stock_mutasi')
 																				 ->where('sm_id', $stock[0]->sg_id)
 																				 ->max('sm_iddetail');

 													 $harga = DB::table('i_stock_gudang')
 																		 ->where('sg_iditem', $request->po_item[$i])
 																		 ->select('sg_harga')
 																		 ->get();

 													 DB::table('i_stock_mutasi')
 															 ->insert([
 																 'sm_id' => $idstock + 1,
 																 'sm_iddetail' => $idmutasi + 1,
 																 'sm_item' => $request->po_item[$i],
 																 'sm_hpp' => $harga[0]->sg_harga,
 																 'sm_qty' => $request->qty_received[$i],
 																 'sm_use' => 0,
 																 'sm_sisa' => $request->qty_received[$i],
 																 'sm_description' => 'PENERIMAAN BARANG',
 																 'sm_ref' => $nota,
 																 'sm_insert' => Carbon::now('Asia/Jakarta'),
 																 'sm_deliveryorder' => $request->pb_delivery_order
 															 ]);
 						 } else {
 							 $idstock = DB::table('i_stock_gudang')
 													 ->max('sg_id');

 							 DB::table('i_stock_gudang')
 								 ->insert([
 									 'sg_id' => $idstock + 1,
 									 'sg_iditem' => $request->po_item[$i],
 									 'sg_qty' => $request->qty_received[$i],
 									 'sg_harga' => $request->po_harga[$i],
 									 'sg_insert' => Carbon::now('Asia/Jakarta')
 								 ]);

 								 $idmutasi = DB::table('i_stock_mutasi')
 															 ->where('sm_id', $idstock + 1)
 															 ->max('sm_iddetail');

 								 $harga = DB::table('i_stock_gudang')
 													 ->where('sg_iditem', $request->po_item[$i])
 													 ->select('sg_harga')
 													 ->get();

 								 DB::table('i_stock_mutasi')
 										 ->insert([
 											 'sm_id' => $idstock + 1,
 											 'sm_iddetail' => $idmutasi + 1,
 											 'sm_item' => $request->po_item[$i],
 											 'sm_hpp' => $harga[0]->sg_harga,
 											 'sm_qty' => $request->qty_received[$i],
 											 'sm_use' => 0,
 											 'sm_sisa' => $request->qty_received[$i],
 											 'sm_description' => 'PENERIMAAN BARANG',
 											 'sm_ref' => $nota,
 											 'sm_insert' => Carbon::now('Asia/Jakarta'),
 											 'sm_deliveryorder' => $request->pb_delivery_order
 										 ]);
 						 }

  }

	 	return response()->json(['status'=>1]);
	 });
	 }
	 public function edit_penerimaan_barang(Request $request)
	 {
	 	$header_penerimaan = DB::table('d_penerimaan_barang')->leftjoin('m_vendor','d_penerimaan_barang.pb_vendor','=','m_vendor.s_kode')->where('pb_code','=',$request->id)->first();
	 	json_encode($header_penerimaan);
	 	$id = $request->id;
	 	$seq_penerimaan = DB::table('d_penerimaan_barang_dt')->leftjoin('m_item','m_item.i_code','=','d_penerimaan_barang_dt.pbdt_item')->where('pbdt_qty_remains','!=','0')->where('pbdt_code','=',$request->id)->get();

	 	return view('inventory/penerimaan_barang/edit_penerimaan_barang',compact("header_penerimaan",'seq_penerimaan','id'));
	 }
	 public function hapus_penerimaan_barang(Request $request)
	 {
	 	dd($request->all());
	 	$header_penerimaan = DB::table('d_penerimaan_barang')->where('pb_code','=',$request->id)->delete();
	 	$seq_penerimaan = DB::table('d_penerimaan_barang_dt')->where('pbdt_code','=',$request->id)->delete();
	 }
}
