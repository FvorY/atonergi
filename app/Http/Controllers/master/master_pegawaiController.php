<?php

namespace App\Http\Controllers\master;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Barang;
use Yajra\Datatables\Datatables;
use DB;

class master_pegawaiController extends Controller
{

    public function pegawai()
    {
        $kode = DB::table('m_pegawai')->max('mp_id');

            if ($kode == null) {
                $kode = 1;
            }else{
                $kode += 1;
            }
        $index = str_pad($kode, 5, '0', STR_PAD_LEFT);
        $nota = 'PGW/'.$index;

        $jabatan = DB::table('m_jabatan')
                    ->get();

        return view('master/pegawai/pegawai',compact('nota', 'jabatan'));
    }
    public function kode_pegawai()
    {
        $kode = DB::table('m_pegawai')->max('mp_id');

            if ($kode == null) {
                $kode = 1;
            }else{
                $kode += 1;
            }
        $index = str_pad($kode, 5, '0', STR_PAD_LEFT);
        $nota = 'PGW/'.$index;

        return response()->json([$nota]);
    }
    public function datatalble_pegawai(Request $request)
    {
        $list = DB::select("SELECT * from m_pegawai");
        // return $data;
        $data = collect($list);
        return Datatables::of($data)
                ->addColumn('aksi', function ($data) {
                          return  '<div class="btn-group">'.
                                   '<button type="button" onclick="edit(this)" class="btn btn-info btn-lg" title="edit">'.
                                   '<label class="fa fa-pencil-alt"></label></button>'.
                                   '<button type="button" onclick="hapus(this)" class="btn btn-danger btn-lg" title="hapus">'.
                                   '<label class="fa fa-trash"></label></button>'.
                                  '</div>';
                })
                ->addColumn('none', function ($data) {
                    return '-';
                })
                ->rawColumns(['aksi', 'confirmed'])
                ->make(true);
    }

    public function simpan_pegawai(Request $request)
    {
        // dd($request->all());
        $kode = DB::table('m_pegawai')->max('mp_id');

            if ($kode == null) {
                $kode = 1;
            }else{
                $kode += 1;
            }
        $tanggal = date("Y-m-d h:i:s");

        $data = DB::table('m_pegawai')
                ->insert([
                'mp_id'=> $kode,
                'mp_kode'=>$request->mp_id,
                'mp_name'=>$request->mp_name,
                'mp_nik'=>$request->mp_nik,
                'mp_position'=>$request->mp_position,
                'mp_status'=>$request->mp_status,
                'mp_address'=>$request->mp_address,
                'mp_email'=>$request->mp_email,
                'mp_pendidikan' => $request->mp_pendidikan,
                'mp_insert'=>$tanggal,
                ]);

        return response()->json(['status'=>1]);
    }
    public function dataedit_pegawai(Request $request)
    {
        // dd($request->all());
        $data = DB::table('m_pegawai')->where('mp_kode','=',$request->id)->get();
        return response()->json($data);
    }
    public function update_pegawai(Request $request)
    {
        // dd($request->all());
        $tanggal = date("Y-m-d h:i:s");
        $data = DB::table('m_pegawai')
                ->where('mp_kode',$request->mp_id)
                ->update([
                'mp_name'=>$request->mp_name,
                'mp_nik'=>$request->mp_nik,
                'mp_position'=>$request->mp_position,
                'mp_status'=>$request->mp_status,
                'mp_address'=>$request->mp_address,
                'mp_email'=>$request->mp_email,
                'mp_pendidikan' => $request->mp_pendidikan,
                'mp_update'=>$tanggal,
                ]);

        return response()->json(['status'=>1]);

    }
    public function hapus_pegawai(Request $request)
    {
        // dd($request->all());
        $data = DB::table('m_pegawai')->where('mp_kode','=',$request->id)->delete();
        return response()->json($data);
    }


}
