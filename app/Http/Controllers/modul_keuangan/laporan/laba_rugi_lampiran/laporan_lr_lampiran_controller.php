<?php

namespace App\Http\Controllers\modul_keuangan\laporan\laba_rugi_lampiran;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\modul_keuangan\dk_akun_group_subclass as subclass;
use App\Model\modul_keuangan\dk_hierarki_lvl_dua as level_2;

use DB;
use Excel;
use PDF;

class laporan_lr_lampiran_controller extends Controller
{
    public function index(Request $request){
    	
        $status = true;

        if($request->type == 'bulan')
            $d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';
        else if($request->type == 'triwulan'){
            $d1 = explode('/', $request->triwulan)[1].'-'.explode('/', $request->triwulan)[0].'-01';
        }

        $cek = DB::table('dk_periode_keuangan')->where('pk_periode', $d1)->first();

        if(!$cek){
            $status = false;
        }

        $cabang = '';

        if(modulSetting()['support_cabang']){
            $cabang = DB::table(tabel()->cabang->nama)
                                ->where(tabel()->cabang->kolom->id, $request->cab)
                                ->select(tabel()->cabang->kolom->nama.' as nama')
                                ->first()->nama;
        }

        // return json_encode($cabang);

    	return view('modul_keuangan.laporan.laba_rugi_lampiran.index', compact('cabang', 'status'));
    }

    public function dataResource(Request $request){
        
        if($request->type == 'bulan')
            $d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';
        else if($request->type == 'triwulan'){
            $d1 = explode('/', $request->triwulan)[1].'-'.explode('/', $request->triwulan)[0].'-01';
        }

        $data = level_2::where('hld_level_1', '>', '3')
                        ->with([
                            'akun' => function($query) use ($d1, $request){
                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                        ->where('as_periode', $d1)
                                        ->select(
                                            'ak_id',
                                            'ak_nomor',
                                            'ak_kelompok',
                                            'ak_nama',
                                            'ak_posisi',
                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                        );
                            }
                        ])
                        ->select('hld_id', 'hld_nama')
                        ->get();

    	return json_encode([
    		"data"	        => $data
    	]);
    }
}
