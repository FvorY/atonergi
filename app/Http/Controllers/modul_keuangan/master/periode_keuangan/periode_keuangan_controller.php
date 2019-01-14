<?php

namespace App\Http\Controllers\modul_keuangan\master\periode_keuangan;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Swamsid\Keuangan\Facades\keuangan as keuangan;
use DB;
use Session;

class periode_keuangan_controller extends Controller
{
    public function save(Request $request){
    	// return json_encode($request->all());

    	DB::beginTransaction();

    	try {
    		
    		$bucket = [];
    		$periode = strtotime($request->tahun.'-'.$request->bulan.'-01');
    		$dateNow = strtotime(date('Y-m').'-01');

    		$cek = DB::table('dk_periode_keuangan')->where('pk_periode', $periode)->first();

	    	if($cek){
	    		Session::flash('message', 'Periode Keuangan Sudah Dibuat Sebelumnya.');
	    		return redirect()->back();
	    	}

	    	$id = (DB::table('dk_periode_keuangan')->max('pk_id')) ? (DB::table('dk_periode_keuangan')->max('pk_id') + 1) : 1;

    		while($periode <= $dateNow){

    			array_push($bucket, [
    				"pk_id"			=> $id,
		    		"pk_periode"	=> date('Y-m-d', $periode),
		    		"pk_status"		=> ($periode == $dateNow) ? '1' : '0'
    			]);

    			$periode = strtotime("+1 month", $periode);
    			$id++;

    		}

    		// return json_encode($bucket);

	    	DB::table('dk_periode_keuangan')->insert($bucket);

    		DB::commit();

    		Session::flash('message', 'Periode Keuangan Berhasil Dibuat.');
	    	return redirect()->back();

    	} catch (Exception $e) {

    		Session::flash('message', 'Ada Kesalahan :message >> '.$e);

	        DB::rollback();
	        return redirect()->back();
    	}

    }
}
