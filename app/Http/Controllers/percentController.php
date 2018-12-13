<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Carbon\Carbon;

use Yajra\Datatables\DataTables;

use DB;

class percentController extends Controller
{
    public function index(){
      return view('master.percent.index');
    }

    public function datatable_percent(){
      $data = DB::table('m_percent')
                ->get();

      for ($i=0; $i < count($data); $i++) {
        $data[$i]->p_percent = $data[$i]->p_percent . '%';
      }

      $list = collect($data);

      return Datatables::of($list)
              ->addColumn('aksi', function ($list) {
                        return  '<div class="btn-group">'.
                                 '<button type="button" class="btn btn-primary btn-lg alamraya-btn-aksi" title="edit" onclick="aktif('.$list->p_id.')"><label class="fa fa-check"></label></button>'.
                                 '<button type="button" class="btn btn-warning btn-lg alamraya-btn-aksi" title="edit" onclick="nonaktif('.$list->p_id.')"><label class="fa fa-times"></label></button>'.
                                '</div>';
              })
              ->addColumn('status', function ($list) {
                if ($list->p_status == 'Y') {
                  return '<span class="badge badge-primary">Active</span>';
                } else {
                  return '<span class="badge badge-warning">Non active</span>';
                }
              })
          ->rawColumns(['aksi', 'status'])
          ->make(true);
    }

    public function aktif(Request $request){
      DB::beginTransaction();
      try {

        $check = DB::table('m_percent')
                    ->where('p_status', 'Y')
                    ->count();

        if ($check < 1) {
          DB::table('m_percent')
                ->where('p_id', $request->id)
                ->update([
                  'p_status' => 'Y'
                ]);
        } else {
          return response()->json([
            'status' => 'lebih'
          ]);
        }

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

    public function nonaktif(Request $request){
      DB::beginTransaction();
      try {

          DB::table('m_percent')
                ->where('p_id', $request->id)
                ->update([
                  'p_status' => 'N'
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

    public function simpan(Request $request){
      DB::beginTransaction();
      try {

        $check = DB::table('m_percent')
                    ->where('p_percent', $request->percent)
                    ->count();

        if ($check == 0) {
          $id = DB::table('m_percent')
                ->max('p_id');

          if ($id == 0) {
            $id = 1;
          } else {
            $id += 1;
          }

          DB::table('m_percent')
              ->insert([
                'p_id' => $id,
                'p_percent' => $request->percent,
                'p_insert' => Carbon::now('Asia/Jakarta')
              ]);
        }

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
