<?php

namespace App\Http\Controllers\modul_keuangan\laporan\laba_rugi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Export\excel\exporter as exporter;
use App\Model\modul_keuangan\dk_akun_group_subclass as subclass;
use App\Model\modul_keuangan\dk_hierarki_lvl_satu as level_1;

use DB;
use Excel;
use PDF;

class laporan_laba_rugi_controller extends Controller
{
    public function index(Request $request){
        $cabang = '';

        if(modulSetting()['support_cabang']){
            $cabang = DB::table(tabel()->cabang->nama)
                                ->where(tabel()->cabang->kolom->id, $request->cab)
                                ->select(tabel()->cabang->kolom->nama.' as nama')
                                ->first()->nama;
        }

    	return view('modul_keuangan.laporan.laba_rugi.index',compact('cabang'));
    }


    public function dataResource(Request $request){

        $d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';
        // ketika support cabang
            if(modulSetting()['support_cabang']){
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1, $request){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1, $request){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1, $request){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->where('ak_comp', $request->cab)
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }else{
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->select(
                                                                            'ak_id as id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }
        // selesai
        // return json_encode($data);
    	return json_encode([
    		"data"    => $data,
    	]);
    	// return view('modul_keuangan.laporan.laba_rugi.index',compact('cabang'));
    }

    public function print(Request $request){
        $d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';

        // Mengambil Cabang

            $namaCabang = '';

            if(modulSetting()['support_cabang']){
                $namaCabang = DB::table(tabel()->cabang->nama)
                                    ->where(tabel()->cabang->kolom->id, $request->cab)
                                    ->select(tabel()->cabang->kolom->nama.' as nama')
                                    ->first()->nama;
            }

        // Selesai Mengambil Cabang

        // ketika support cabang

            if(modulSetting()['support_cabang']){
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1, $request){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1, $request){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1, $request){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->where('ak_comp', $request->cab)
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }else{
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->where('as_periode')
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }

        // selesai

        // return json_encode($res);

        $data = [
            "data"       => $data,
            "cabang"     => $namaCabang
        ];

        return view('modul_keuangan.laporan.laba_rugi.print.index', compact('data'));
    }

    public function pdf(Request $request){
        $d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';

        // Mengambil Cabang

            $namaCabang = '';

            if(modulSetting()['support_cabang']){
                $namaCabang = DB::table(tabel()->cabang->nama)
                                    ->where(tabel()->cabang->kolom->id, $request->cab)
                                    ->select(tabel()->cabang->kolom->nama.' as nama')
                                    ->first()->nama;
            }

        // Selesai Mengambil Cabang

        // ketika support cabang

            if(modulSetting()['support_cabang']){
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1, $request){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1, $request){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1, $request){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->where('ak_comp', $request->cab)
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }else{
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }

        // selesai

        // return json_encode($res[0]->group[0]->akun[0]->fromKelompok);

        $data = [
            "data"       => $data,
            "cabang"     => $namaCabang
        ];

        // return view('modul_keuangan.laporan.jurnal.print.pdf', compact('data'));

        $title = "Laporan_Laba_Rugi_".$d1.".pdf";

        $pdf = PDF::loadView('modul_keuangan.laporan.laba_rugi.print.pdf', compact('data'));
        $pdf->setPaper('A4', 'portrait');

        return $pdf->stream($title);
    }

    public function excel(Request $request){

        $d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';

        // Mengambil Cabang

            $namaCabang = '';

            if(modulSetting()['support_cabang']){
                $namaCabang = DB::table(tabel()->cabang->nama)
                                    ->where(tabel()->cabang->kolom->id, $request->cab)
                                    ->select(tabel()->cabang->kolom->nama.' as nama')
                                    ->first()->nama;
            }

        // Selesai Mengambil Cabang

        // ketika support cabang

            if(modulSetting()['support_cabang']){
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1, $request){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1, $request){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1, $request){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->where('ak_comp', $request->cab)
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }else{
                $data = level_1::where('hls_id', '>', '3')
                            ->with([
                                'subclass' => function($query) use ($d1){
                                    $query->select('hs_id', 'hs_nama', 'hs_level_1')
                                            ->orderBy('hs_flag')
                                            ->with([
                                                'level_2' => function($query) use ($d1){
                                                    $query->select('hld_id', 'hld_nama', 'hld_subclass')
                                                        ->with([
                                                            'akun' => function($query) use ($d1){
                                                                $query->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                                                                        ->where('as_periode', $d1)
                                                                        ->select(
                                                                            'ak_id',
                                                                            'ak_kelompok',
                                                                            'ak_nama',
                                                                            'ak_posisi',
                                                                            DB::raw('coalesce(as_saldo_akhir, 2) as saldo_akhir')
                                                                        );
                                                            }
                                                        ]);
                                                }
                                            ]);
                                }
                            ])
                            ->select('hls_id', 'hls_nama')
                            ->get();
            }

        // selesai

        // return json_encode($res[0]->group[0]->akun[0]->fromKelompok);

        $data = [
            "data"      => $data,
            "cabang"    => $namaCabang
        ];

        // return json_encode($data);

        $title = "Laporan_Laba_Rugi_".$d1.".xlsx";

        // return view('modul_keuangan.laporan.laba_rugi.print.excel', compact('data'));

        return Excel::download(new exporter('modul_keuangan.laporan.laba_rugi.print.excel', $data), $title);
    }
}
