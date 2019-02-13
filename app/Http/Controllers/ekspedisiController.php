<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Carbon\Carbon;

use DB;

use Session;

use Auth;

class ekspedisiController extends Controller
{
          public function ekspedisi()
          {
              $data = DB::table('m_ekspedisi')
                      ->get();

              return view('master.ekspedisi.ekspedisi', compact('data'));
          }

          public function tambah_ekspedisi()
          {
              return view('master.ekspedisi.tambah_ekspedisi');
          }

          public function simpan(Request $request){
            DB::beginTransaction();
            try {

              if ($request->name == "" || $request->name == null) {
                return response()->json([
                  'status' => 'gagal'
                ]);
              } elseif ($request->address == "" || $request->address == null) {
                return response()->json([
                  'status' => 'gagal'
                ]);
              }
              elseif ($request->telp == "" || $request->telp == null) {
                return response()->json([
                  'status' => 'gagal'
                ]);
              } else {
                $id = DB::table('m_ekspedisi')->max('e_id')+1;

                  DB::table('m_ekspedisi')
                      ->insert([
                        'e_id' => $id,
                        'e_name' => $request->name,
                        'e_address' => $request->address,
                        'e_telp' => $request->telp,
                        'e_insert' => Carbon::now('Asia/Jakarta')
                      ]);

              }

              DB::commit();
              return response()->json([
                'status' => 'berhasil'
              ]);
            } catch (Exception $e) {
              DB::rollback();
              return response()->json([
                'status' => 'gagal'
              ]);
            }
          }
}
