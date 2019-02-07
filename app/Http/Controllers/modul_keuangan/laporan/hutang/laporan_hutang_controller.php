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

    	$d1 = explode('/', $request->d1)[2].'-'.explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0];
    	$data = [];

    	if($request->type == "Hutang_Supplier"){

    		// Sesuaikan Nama Table Supplier Dari Sini Bosss.

    		$sampler = payable::where('py_chanel', 'Hutang_Supplier')
    					->join('sup_supplier', 'dk_payable.py_kreditur', '=', 'sup_supplier.id_supplier')
    					->distinct('py_kreditur')
    					->with([
    							'detailBySupplier' => function($query){
    								$query->where(DB::raw('(py_total_tagihan - py_sudah_dibayar)'), '!=', 0)
    										->select(
												'py_kreditur',
												'py_due_date',
												 DB::raw('(py_total_tagihan - py_sudah_dibayar) as total_tagihan')
    										);
    							}
    					])
    					->select('py_kreditur', 'sup_supplier.nama_supplier')
    					->get();

    		return json_encode($sampler);

    		foreach($sampler as $key => $hutang){



    			$data[$key] = [
    				"nama_supplier"			=> $hutang->nama_supplier
    			];
    		}

    		// Pastikan Sesuai

    		return json_encode($data);

    	}else{
    		return "hutang karyawan";
    	}
    }
}
