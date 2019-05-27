<?php

namespace App\Http\Controllers\modul_keuangan\laporan\bk;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\modul_keuangan\dk_akun_group_subclass as subclass;
use App\Model\modul_keuangan\dk_hierarki_lvl_satu as level_1;

use DB;
use Excel;
use PDF;

class laporan_bk_controller extends Controller
{
    public function index(Request $request){
        $cabang = ''; $data = []; $nomor = '';

        $tgl = date('Y-m-d', strtotime($request->d1));

        $id = (DB::table('dk_printout')->max('pr_id') + 1);

        if(modulSetting()['support_cabang']){
            $cabang = DB::table(tabel()->cabang->nama)
                                ->where(tabel()->cabang->kolom->id, $request->cab)
                                ->select(tabel()->cabang->kolom->nama.' as nama')
                                ->first()->nama;
        }

        $cek = DB::table('dk_printout')->where('pr_type', $request->type)->where('pr_tanggal', $tgl)->first();

        if($request->type == 'bkk'){
        	$data = DB::table('dk_jurnal_detail')
        				->join('dk_jurnal', 'dk_jurnal.jr_id', '=', 'dk_jurnal_detail.jrdt_jurnal')
        				->leftJoin('dk_akun', 'ak_id', '=', 'jrdt_akun')
        				->where('jr_tanggal_trans', $tgl)
        				->where('jr_type', 'KK')
        				->select('dk_jurnal_detail.*', 'jr_keterangan', 'ak_nomor')
        				->where('jrdt_dk', 'K')
        				->get();

        	if(count($data) > 0){
        		if($cek){
	        		$nomor = $cek->pr_nomor;
	        	}else{
	        		$urt = DB::table('dk_printout')
	        				->where('pr_type', 'BKK')
	        				->where(DB::raw('month(pr_tanggal)'), date('m', strtotime($tgl)))
	        				->orderBy('pr_id', 'desc')
	        				->select('pr_nomor')
	        				->limit(1)
	        				->first();

	        		$urut = ($urt) ? (int) explode('/', $urt->pr_nomor)[0] + 1 : 1;
	        		$nomor = str_pad($urut, 3, "0", STR_PAD_LEFT).'/RJ/BKK/'.date('d', strtotime($tgl)).'/'.date('m', strtotime($tgl)).'/'.date('y', strtotime($tgl));

	        		DB::table('dk_printout')->insert([
	        			'pr_id'		=> $id,
	        			'pr_type'	=> 'BKK',
	        			'pr_nomor'	=> $nomor,
	        			'pr_tanggal'	=> $tgl
	        		]);
	        	}
        	}

        }else{
        	$data = DB::table('dk_jurnal_detail')
        				->join('dk_jurnal', 'dk_jurnal.jr_id', '=', 'dk_jurnal_detail.jrdt_jurnal')
        				->leftJoin('dk_akun', 'ak_id', '=', 'jrdt_akun')
        				->where('jr_tanggal_trans', $tgl)
        				->where('jr_type', 'KM')
        				->select('dk_jurnal_detail.*', 'jr_keterangan', 'ak_nomor')
        				->where('jrdt_dk', 'K')
        				->get();

        	if(count($data) > 0){
        		if($cek){
	        		$nomor = $cek->pr_nomor;
	        	}else{
	        		$urt = DB::table('dk_printout')
	        				->where('pr_type', 'BKM')
	        				->where(DB::raw('month(pr_tanggal)'), date('m', strtotime($tgl)))
	        				->orderBy('pr_id', 'desc')
	        				->select('pr_nomor')
	        				->limit(1)
	        				->first();

	        		$urut = ($urt) ? (int) explode('/', $urt->pr_nomor)[0] + 1 : 1;
	        		$nomor = str_pad($urut, 3, "0", STR_PAD_LEFT).'/RJ/BKM/'.date('d', strtotime($tgl)).'/'.date('m', strtotime($tgl)).'/'.date('y', strtotime($tgl));

	        		DB::table('dk_printout')->insert([
	        			'pr_id'		=> $id,
	        			'pr_type'	=> 'BKM',
	        			'pr_nomor'	=> $nomor,
	        			'pr_tanggal'	=> $tgl
	        		]);
	        	}
        	}

        }

        // return json_encode($data);
    	return view('modul_keuangan.laporan.bk.index',compact('cabang', 'nomor', 'data', 'tgl'));
    }
}
