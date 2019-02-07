<?php

namespace App\Http\Controllers\modul_keuangan\laporan\hutang;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\modul_keuangan\dk_payable as payable;

use DB;

class laporan_hutang_controller extends Controller
{
    public function index(){
    	return view('modul_keuangan.laporan.hutang.index');
    }

    public function dataResource(Request $request){
    	// return json_encode($request->all());

    	if($request->type == "Hutang_Supplier"){

    		// Sesuaikan Nama Table Supplier Dari Sini Bosss.

    		$data = payable::where('py_chanel', 'Hutang_Supplier')
    					->join('sup_supplier', 'dk_payable.py_kreditur', '=', 'sup_supplier.id_supplier')
    					->distinct('py_kreditur')
    					->with([
    							'detailBySupplier' => function($query){
    								$query->select(
												'py_kreditur',
												'py_due_date',
												 DB::raw('(py_total_tagihan - py_sudah_dibayar) as total_tagihan')
    										);
    							}
    					])
    					->select('py_kreditur', 'sup_supplier.nama_supplier')
    					->get();

    		// Pastikan Sesuai



    		return json_encode($data);

    	}else{
    		return "hutang karyawan";
    	}
    }
}
