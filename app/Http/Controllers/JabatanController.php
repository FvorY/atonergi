<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Yajra\Datatables\Datatables;
use DB;

use Carbon\Carbon;

use App\mMember;
class JabatanController extends Controller
{
    public function index(Request $request){
      if (!mMember::akses('MASTER DATA JABATAN', 'aktif')) {
        return redirect('error-404');
      }

      $divisi = DB::table('m_divisi')
                  ->get();

       return view('master.jabatan.jabatan', compact('divisi'));
    }

    public function datatable_jabatan(){
      DB::statement(DB::raw('set @rownum=0'));
      $list = DB::table('m_jabatan')
                ->leftjoin('m_divisi', 'm_divisi.c_id', '=', 'm_jabatan.c_divisi_id')
                ->select(DB::raw('@rownum  := @rownum  + 1 AS number'), 'c_posisi', 'c_divisi', 'm_jabatan.c_id')
                ->get();

        $data = collect($list);
        return Datatables::of($data)
                ->addColumn('aksi', function ($data) {
                          return  '<div class="btn-group">'.
                                   '<button type="button" onclick="edit('.$data->c_id.')" class="btn btn-info btn-lg" title="edit">'.
                                   '<label class="fa fa-pencil-alt"></label></button>'.
                                   '<button type="button" onclick="hapus('.$data->c_id.')" class="btn btn-danger btn-lg" title="hapus">'.
                                   '<label class="fa fa-trash"></label></button>'.
                                  '</div>';
                })
                ->addColumn('none', function ($data) {
                    return '-';
                })
                ->rawColumns(['aksi', 'confirmed'])
                ->make(true);
    }

    public function simpan(Request $request){
      DB::beginTransaction();
      try {

        $max = DB::table('m_jabatan')
                ->max('c_id');

        if ($max == null) {
          $max = 0;
        } else {
          $max += 1;
        }

        DB::table('m_jabatan')
            ->insert([
              'c_id' => $max,
              'c_divisi_id' => $request->divisi,
              'c_posisi' => $request->namajabatan,
              'created_at' => Carbon::now('Asia/Jakarta')
            ]);

        DB::commit();
        return response()->json([
          'status' => 'berhasil'
        ]);
      } catch (\Exception $e) {
        DB::rollback();
        return response()->json([
          'status' => 'gagal'
        ]);
      }

    }

    public function edit(Request $request){
      $data = DB::table('m_jabatan')
                ->where('c_id', $request->id)
                ->get();

      return response()->json($data);
    }

    public function update(Request $request){
      DB::beginTransaction();
      try {

        DB::table('m_jabatan')
              ->where('c_id', $request->id)
              ->update([
                'c_posisi' => $request->data
              ]);

        DB::commit();
        return response()->json([
          'status' => 'berhasil'
        ]);
      } catch (\Exception $e) {
        DB::rollback();
        return response()->json([
          'status' => 'berhasil'
        ]);
      }

    }

    public function hapus(Request $request){
      DB::beginTransaction();
      try {

        DB::table('m_jabatan')
              ->where('c_id', $request->id)
              ->delete();

        DB::commit();
        return response()->json([
          'status' => 'berhasil'
        ]);
      } catch (\Exception $e) {
        DB::rollback();
        return response()->json([
          'status' => 'gagal'
        ]);
      }

    }
}
