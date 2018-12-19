<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// Menarik model
use App\abs_pegawai_man;
use App\abs_pegawai_pro;
use App\Divisi;
use App\M_tunjangan_man;
use Yajra\Datatables\Facades\Datatables;
use Carbon\Carbon;
// ===================================

// Menarik plugin
use Excel;
use DB;

use Session;
// =====================================

class HRDController extends Controller
{
    public function absensi()
    {

        $divisi = new Divisi();
        $l_divisi = $divisi::all();
        $data = array( "divisi" => $l_divisi );
        return view('hrd/absensi/absensi', $data);
    }

    public function findAbsManajemen(Request $req) {

        $abs = new abs_pegawai_man();
        $data = $abs;

        if(isset($req)) {

            $tgl_awal = $req->tgl_awal == null ? '' : $req->tgl_awal;
            $tgl_akhir = $req->tgl_akhir == null ? '' : $req->tgl_akhir;
            $id_divisi = $req->id_divisi == null ? '' : $req->id_divisi;

            if($id_divisi != '') {
                $data = $data::where('apm_nama', "(SELECT mp_name FROM m_pegawai P LEFT JOIN m_jabatan J ON mp_position = c_id WHERE c_divisi_id = $id_divisi)");
            }
            if($tgl_awal != '' && $tgl_akhir != '') {
                $tgl_awal = date('Y-m-d', strtotime($tgl_awal));
                $tgl_akhir = date('Y-m-d', strtotime($tgl_akhir));
                $data = $data::whereBetween('apm_tanggal', array($tgl_awal, $tgl_akhir));
            }
        }

        $data = $data->take(100)->get();
        $result = "{\"data\" : $data}";

        header('Content-Type: application/json');
        return $result;
    }

    public function findAbsProduksi(Request $req) {

        $abs = new abs_pegawai_pro();
        $data = $abs;

        if(isset($req)) {

            $tgl_awal = $req->tgl_awal == null ? '' : $req->tgl_awal;
            $tgl_akhir = $req->tgl_akhir == null ? '' : $req->tgl_akhir;
            $id_divisi = $req->id_divisi == null ? '' : $req->id_divisi;

            if($id_divisi != '') {
                $data = $data::where('app_nama', "(SELECT mp_name FROM m_pegawai P LEFT JOIN m_jabatan J ON mp_position = c_id WHERE c_divisi_id = $id_divisi)");
            }
            if($tgl_awal != '' && $tgl_akhir != '') {
                $tgl_awal = date('Y-m-d', strtotime($tgl_awal));
                $tgl_akhir = date('Y-m-d', strtotime($tgl_akhir));
                $data = $data::whereBetween('app_tanggal', array($tgl_awal, $tgl_akhir));
            }
        }

        $data = $data->take(100)->get();
        $result = "{\"data\" : $data}";

        header('Content-Type: application/json');
        return $result;
    }
    // Import data absensi
    public function importDataManajemen(Request $request){
      if ($request->hasFile('file-manajemen')) {
        $path = $request->file('file-manajemen')->getRealPath();
        $data = Excel::load($path, function($reader){})->get();
        if (!empty($data) && $data->count()) {
          foreach ($data as $key => $value) {
            $absensi = new abs_pegawai_man();
            $absensi->apm_pm = $value->id_manajemen;
            $absensi->apm_nama = $value->nama;
            $absensi->apm_tanggal = $value->tanggal;
            $absensi->apm_jam_kerja = $value->jam_kerja;
            $absensi->apm_jam_masuk = $value->jam_masuk;
            $absensi->apm_jam_pulang = $value->jam_pulang;
            $absensi->apm_scan_masuk = $value->scan_masuk;
            $absensi->apm_scan_pulang = $value->scan_pulang;
            $absensi->apm_terlambat = $value->terlambat;
            $absensi->apm_plg_cepat = $value->plg_cepat;
            $absensi->apm_absent = $value->absent;
            $absensi->apm_lembur = $value->lembur;
            $absensi->apm_jml_jamkerja = $value->jml_jam_kerja;
            $absensi->save();
          }
        }
      }

      return back();
    }

    public function importDataProduksi(Request $request){
      if ($request->hasFile('file-produksi')) {
        $path = $request->file('file-produksi')->getRealPath();
        $data = Excel::load($path, function($reader){})->get();
        if (!empty($data) && $data->count()) {
          foreach ($data as $key => $value) {
            $absensi = new abs_pegawai_pro();
            $absensi->app_pp = $value->id_produksi;
            $absensi->app_nama = $value->nama;
            $absensi->app_tanggal = $value->tanggal;
            $absensi->app_jam_kerja = $value->jam_kerja;
            $absensi->app_jam_masuk = $value->jam_masuk;
            $absensi->app_jam_pulang = $value->jam_pulang;
            $absensi->app_scan_masuk = $value->scan_masuk;
            $absensi->app_scan_pulang = $value->scan_pulang;
            $absensi->app_terlambat = $value->terlambat;
            $absensi->app_plg_cepat = $value->plg_cepat;
            $absensi->app_absent = $value->absent;
            $absensi->app_lembur = $value->lembur;
            $absensi->app_jml_jamkerja = $value->jml_jam_kerja;
            $absensi->save();
          }
        }
      }

      return back();
    }
    public function data_lembur()
    {
        return view('hrd/data_lembur/data_lembur');
    }
    public function freelance()
    {
        return view('hrd/freelance/freelance');
    }
    public function data_kpi()
    {
        return view('hrd/data_kpi/data_kpi');
    }
    public function kesejahteraan()
    {
        return view('hrd/kesejahteraan/kesejahteraan');
    }
    public function manajemen_scoreboard()
    {
        return view('hrd/manajemen_scoreboard/manajemen_scoreboard');
    }
    public function manajemen_scoreboard_kpi()
    {
        return view('hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi');
    }
    public function manajemen_surat()
    {
        return view('hrd/manajemen_surat/manajemen_surat');
    }

    // Bagian payroll
    public function payroll()
    {
        $jabatan = DB::table('m_jabatan')
                      ->get();

        return view('hrd/payroll/payroll', compact('jabatan'));
    }

    public function findTunjangan(Request $req) {
        $tunj = new M_tunjangan_man();
        $data = $tunj->take(500)->get();
        $result = "{\"data\" : $data}";

        return response($result, 200)->header('Content-Type', 'application/json');
    }

    public function insertTunjangan(Request $req) {
        $tunj = new M_tunjangan_man();

        $tunj->tman_jabatan = $req->tman_levelpeg;
        $tunj->tman_nama = $req->tman_nama;
        $tunj->tman_periode = $req->tman_periode;
        $value = str_replace('.', '', $req->tman_value);
        $value = str_replace(',', '.', $value);
        $tunj->tman_value = $value;

        $tunj->save();
        $result = "{\"status\" : 1}";

        return response($result, 200)->header('Content-Type', 'application/json');
    }

    public function hapusTunjangan(Request $req) {
        $id = $req->tman_id;
        if($id != null || $id != '') {
            $tunj = new M_tunjangan_man();
            $data = $tunj->find($id);
            $data->delete();
            return response('{"status" : 1}', 200)->header('Content-Type', 'application/json');
        }
        else {
            return response('{"status" : 0}', 200)->header('Content-Type', 'application/json');
        }
    }

    public function updateTunjangan(Request $req) {
        $tunj = new M_tunjangan_man();
        $data = $tunj->find( $req->tman_id );

        $data->tman_jabatan = $req->tman_levelpeg;
        $data->tman_nama = $req->tman_nama;
        $data->tman_periode = $req->tman_periode;

        $value = str_replace('.', '', $req->tman_value);
        $value = str_replace(',', '.', $value);
        $tunj->tman_value = $value;

        $data->save();
        $result = "{\"status\" : 1}";

        return response($result, 200)->header('Content-Type', 'application/json');
    }

    public function datatable_tunjangan(){
      $list = DB::table('m_pegawai')
                ->leftjoin('m_jabatan', 'm_jabatan.c_id', '=', 'mp_position')
                ->leftjoin('m_divisi', 'm_divisi.c_id', '=', 'c_divisi_id')
                ->leftjoin('d_tunjangan', 't_pegawai', '=', 'mp_id')
                ->leftjoin('m_tunjangan_man', 'tman_id', '=', 't_tunjangan')
                ->select('mp_name', 'mp_nik', 'c_divisi', 'c_posisi', 'tman_nama', 'mp_id')
                ->get();

        $data = collect($list);
        return Datatables::of($data)
                ->addColumn('aksi', function ($data) {
                          return  '<div class="btn-group">'.
                                   '<button type="button" class="btn btn-primary btn-lg alamraya-btn-aksi" title="edit" onclick="edit('.$data->mp_id.')"><label class="fa fa-pencil-alt"></label></button>'.
                                  '</div>';
                })
                ->addColumn('tunjangan', function ($data) {
                  return '<li>'.$data->tman_nama.'</li>';
                })
            ->rawColumns(['aksi', 'tunjangan'])
            ->make(true);
    }

    public function finddata(Request $request){
      $data = DB::table('m_pegawai')
                ->leftjoin('m_jabatan', 'm_jabatan.c_id', '=', 'mp_position')
                ->leftjoin('m_divisi', 'm_divisi.c_id', '=', 'c_divisi_id')
                ->leftjoin('d_tunjangan', 't_pegawai', '=', 'mp_id')
                ->leftjoin('m_tunjangan_man', 'tman_id', '=', 't_tunjangan')
                ->where('mp_id', $request->id)
                ->get();

     $tunjangan = DB::table('m_tunjangan_man')
                    ->where('tman_jabatan', $data[0]->mp_position)
                    ->get();

      return response()->json([
        'data' => $data,
        'tunjangan' => $tunjangan
        ]);
    }

    public function simpansetting(Request $request){
      DB::beginTransaction();
      try {

        DB::table('d_tunjangan')
            ->where('t_pegawai', $request->pegawai)
            ->delete();

        $id = DB::table('d_tunjangan')
                  ->max('t_id');

        if ($id == 0) {
          $id = 1;
        } else {
          $id += 1;
        }

        for ($i=0; $i < count($request->tunjangan); $i++) {
          DB::table('d_tunjangan')
                ->insert([
                  't_id' => $id,
                  't_pegawai' => $request->pegawai,
                  't_tunjangan' => $request->tunjangan[$i],
                  't_insert' => Carbon::now('Asia/Jakarta')
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
    // ============================================================
    public function payroll_manajemen()
    {
        $divisi = DB::table('m_divisi')
                    ->get();

        return view('hrd/payroll_manajemen/payroll_manajemen', compact('divisi'));
    }

    public function payroll_manajemen_simpan(Request $request){
      DB::beginTransaction();
      try {

        $id = DB::table('d_payroll')
                ->max('p_id');

        if ($id == 0) {
          $id = 1;
        } else {
          $id += 1;
        }

        $kode = "";

        $querykode = DB::select(DB::raw("SELECT MAX(MID(p_kode,4,3)) as counter, MAX(MID(p_kode,8,2)) as tanggal, MAX(MID(p_kode,11,2)) as bulan, MAX(MID(p_kode,14)) as tahun FROM d_payroll"));

        if (count($querykode) > 0) {
          if ($querykode[0]->tanggal != date('d') || $querykode[0]->bulan != date('m') || $querykode[0]->tahun != date('Y')) {
              $kode = "001";
          } else {
            foreach($querykode as $k)
              {
                $tmp = ((int)$k->counter)+1;
                $kode = sprintf("%03s", $tmp);
              }
          }
        } else {
          $kode = "001";
        }


        $finalkode = 'PY-' . $kode . '/' . date('d') . '/' . date('m') . '/' . date('Y');

        if ($request->gaji == '') {
          $request->gaji = 0;
        } elseif ($request->tunjangan == '') {
          $request->tunjangan = 0;
        } elseif ($request->potongan == '') {
          $request->potongan = 0;
        } elseif ($request->total == '') {
          $request->total = 0;
        }

        $request->gaji = str_replace('Rp. ', '', $request->gaji);
        $request->gaji = str_replace('.', '', $request->gaji);
        $request->tunjangan = str_replace('Rp. ', '', $request->tunjangan);
        $request->tunjangan = str_replace('.', '', $request->tunjangan);
        $request->potongan = str_replace('Rp. ', '', $request->potongan);
        $request->potongan = str_replace('.', '', $request->potongan);
        $request->total = str_replace('Rp. ', '', $request->total);
        $request->total = str_replace('.', '', $request->total);


        DB::table('d_payroll')
            ->insert([
              'p_id' => $id,
              'p_kode' => $finalkode,
              'p_date' => Carbon::now('Asia/Jakarta'),
              'p_periode_start' => Carbon::parse($request->start)->format('Y-m-d'),
              'p_periode_end' => Carbon::parse($request->end)->format('Y-m-d'),
              'p_pegawai' => $request->pegawai,
              'p_divisi' => $request->divisi,
              'p_jabatan' => $request->jabatan,
              'p_gaji' => $request->gaji,
              'p_tunjangan' => $request->tunjangan,
              'p_potongan' => $request->potongan,
              'p_total_gaji' => $request->total,
              'p_insert' => Carbon::now('Asia/Jakarta')
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

    public function payroll_manajemen_datatable(Request $request){
      $divisi = $request->divisi;
      $status = $request->status;
      $start = $request->start;
      $end = $request->end;

      if ($start != null) {
        $start = Carbon::parse($request->start)->format('Y-m-d');
      }
       if ($end != null) {
        $end = Carbon::parse($request->end)->format('Y-m-d');
      }

      if ($divisi == null && $status == null && $start == null && $end == null) {
        $data = DB::table('d_payroll')
                    ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                    ->get();
      } elseif ($divisi != null && $status == null && $start == null && $end == null) {
        $data = DB::table('d_payroll')
                    ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                    ->where('p_divisi', $divisi)
                    ->get();
      } elseif ($divisi == null && $status != null && $start == null && $end == null) {
        $data = DB::table('d_payroll')
                    ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                    ->where('p_status_cetak', $status)
                    ->get();
      } elseif ($divisi == null && $status == null && $start != null && $end != null) {
        $data = DB::table('d_payroll')
                    ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                    ->where('p_periode_start', $start)
                    ->where('p_periode_end', $end)
                    ->get();
      } elseif ($divisi != null && $status != null && $start != null && $end != null) {
        $data = DB::table('d_payroll')
                    ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                    ->where('p_divisi', $divisi)
                    ->where('p_status_cetak', $status)
                    ->where('p_periode_start', $start)
                    ->where('p_periode_end', $end)
                    ->get();
      } elseif ($divisi != null && $status != null && $start == null && $end == null) {
        $data = DB::table('d_payroll')
                    ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                    ->where('p_divisi', $divisi)
                    ->where('p_status_cetak', $status)
                    ->get();
      }

      for ($i=0; $i < count($data); $i++) {
        $data[$i]->p_periode_start = Carbon::parse($data[$i]->p_periode_start)->format('d-m-Y');
        $data[$i]->p_periode_end= Carbon::parse($data[$i]->p_periode_end)->format('d-m-Y');
      }

      return response()->json($data);
    }

    public function payroll_manajemen_getdivisi(Request $request){
        $jabatan = DB::table('m_jabatan')
                      ->where('c_divisi_id', $request->divisi)
                      ->select('c_id', 'c_posisi')
                      ->get();

        return response()->json($jabatan);
    }

    public function payroll_manajemen_hapus(Request $request){
      DB::beginTransaction();
      try {

        DB::table('d_payroll')
              ->where('p_id', $request->id)
              ->delete();

        DB::commit();
        return response()->json([
          'status' => 'berhasil'
        ]);
      } catch (\Exception $e) {
        DB::commit();
        return response()->json([
          'status' => 'berhasil'
        ]);
      }

    }

    public function payroll_manajemen_detail(Request $request){
      $data = DB::table('d_payroll')
                  ->join('m_pegawai', 'mp_id', '=', 'p_pegawai')
                  ->join('m_jabatan', 'm_jabatan.c_id', '=', 'p_jabatan')
                  ->join('m_divisi', function($e){
                    $e->on('m_divisi.c_id', '=', 'c_divisi_id')
                      ->on('m_divisi.c_id', '=', 'p_divisi');
                  })
                  ->where('p_id', $request->id)
                  ->get();

      for ($i=0; $i < count($data); $i++) {
        $data[$i]->p_date = Carbon::parse($data[$i]->p_date)->format('d-m-Y');
        $data[$i]->p_periode_start = Carbon::parse($data[$i]->p_periode_start)->format('d-m-Y');
        $data[$i]->p_periode_end = Carbon::parse($data[$i]->p_periode_end)->format('d-m-Y');
      }

      $tunjangan = DB::table('d_tunjangan')
                      ->join('m_tunjangan_man', 'tman_id', '=', 't_tunjangan')
                      ->where('t_pegawai', $data[0]->p_pegawai)
                      ->get();

      return response()->json([
        'data' => $data,
        'tunjangan' => $tunjangan
      ]);
    }

    public function payroll_manajemen_getjabatan(Request $request){
      $pegawai = DB::table('m_pegawai')
                    ->where('mp_position', $request->jabatan)
                    ->select('mp_id', 'mp_name')
                    ->get();

      return response()->json($pegawai);
    }

    public function payroll_manajemen_proses(Request $request){
      $pegawai = DB::table('m_pegawai')
                ->where('mp_id', $request->pegawai)
                ->first();

      $getmaster = DB::table('m_gaji_man')
                    ->orderBy('created_at', 'asc')
                    ->first();

      $tunjangan = DB::table('d_tunjangan')
                      ->join('m_tunjangan_man', 'tman_id', '=', 't_tunjangan')
                      ->where('t_pegawai', $request->pegawai)
                      ->select(DB::raw('sum(tman_value) as tunjangan'))
                      ->first();

      if ($pegawai->mp_pendidikan == 'SD') {
        $gaji = $getmaster->c_sd;
      } else if ($pegawai->mp_pendidikan == 'SMP') {
        $gaji = $getmaster->c_smp;
      } else if ($pegawai->mp_pendidikan == 'SMA') {
        $gaji = $getmaster->c_sma;
      } else if ($pegawai->mp_pendidikan == 'SMK') {
        $gaji = $getmaster->c_smk;
      } else if ($pegawai->mp_pendidikan == 'D1') {
        $gaji = $getmaster->c_d1;
      } else if ($pegawai->mp_pendidikan == 'D2') {
        $gaji = $getmaster->c_d2;
      } else if ($pegawai->mp_pendidikan == 'D3') {
        $gaji = $getmaster->c_d3;
      } else if ($pegawai->mp_pendidikan == 'S1') {
        $gaji = $getmaster->c_s1;
      }

      return response()->json([
        'gaji' => $gaji,
        'tunjangan' => $tunjangan
      ]);

    }

    public function payroll_produksi()
    {
        return view('hrd/payroll_produksi/payroll_produksi');
    }
    public function recruitment()
    {
        return view('hrd/recruitment/recruitment');
    }
    public function scoreboard_pegawai()
    {
        return view('hrd/scoreboard_pegawai/scoreboard_pegawai');
    }
    public function training_pegawai()
    {
        return view('hrd/training_pegawai/training_pegawai');
    }
    public function setting_tunjangan()
    {
        return view('hrd/payroll/setting_tunjangan');
    }

    public function kartushift(Request $request){
      DB::beginTransaction();
      try {
        $path = $request->file('kartushift')->getRealPath();
        $data = Excel::load($path, function($reader){})->get();

          if (!empty($data) && $data->count()) {
            foreach ($data as $key => $value) {
              $check = DB::table('d_kartushift')
                          ->where('k_pin', (int)$value->pin)
                          ->where('k_nip', (int)$value->nip)
                          ->where('k_nama', $value->nama)
                          ->where('k_jabatan', $value->jabatan)
                          ->where('k_departement', $value->departement)
                          ->where('k_kantor', $value->kantor)
                          ->where('k_tanggal', Carbon::parse($value->tanggal)->format('Y-m-d'))
                          ->where('k_kehadiran', (int)$value->kehadiran)
                          ->where('k_in', $value->in)
                          ->where('k_out', $value->out)
                          ->count();

              if ($check == 0) {
                DB::table('d_kartushift')
                            ->insert(['k_pin' => (int)$value->pin,
                            'k_nip' => (int)$value->nip,
                            'k_nama' => $value->nama,
                            'k_jabatan' => $value->jabatan,
                            'k_departement' => $value->departement,
                            'k_kantor' => $value->kantor,
                            'k_tanggal' => Carbon::parse($value->tanggal)->format('Y-m-d'),
                            'k_kehadiran' => (int)$value->kehadiran,
                            'k_in' => $value->in,
                            'k_out' => $value->out]);
              }
            }
          }

          DB::commit();
          Session::flash('sukses', 'Berhasil Disimpan!');
          return redirect('hrd/absensi/absensi');
      } catch (\Exception $e) {
          DB::rollback();
          Session::flash('gagal', 'Gagal Disimpan!');
          return redirect('hrd/absensi/absensi');
      }
    }

    public function kstable(Request $request){
      if(isset($request)) {

          $tgl_awal = $request->tgl1 == null ? '' : $request->tgl1;
          $tgl_akhir = $request->tgl2 == null ? '' : $request->tgl2;

          if($tgl_awal != '' && $tgl_akhir != '') {
              $tgl_awal = date('Y-m-d', strtotime($tgl_awal));
              $tgl_akhir = date('Y-m-d', strtotime($tgl_akhir));
              $data = DB::table('d_kartushift')
                        ->whereBetween('k_tanggal', array($tgl_awal, $tgl_akhir))
                        ->get();
          } else {
            $data = DB::table('d_kartushift')
                        ->get();
          }
      }

      for ($i=0; $i < count($data); $i++) {
        $data[$i]->k_tanggal = Carbon::parse($data[$i]->k_tanggal)->format('d-m-Y');
      }

      $result = "{\"data\" : $data}";

      header('Content-Type: application/json');
      return $result;
    }

    public function abtable(Request $request){
      if(isset($request)) {

          $tgl_awal = $request->tgl1 == null ? '' : $request->tgl1;
          $tgl_akhir = $request->tgl2 == null ? '' : $request->tgl2;

          if($tgl_awal != '' && $tgl_akhir != '') {
              $tgl_awal = date('Y-m-d', strtotime($tgl_awal));
              $tgl_akhir = date('Y-m-d', strtotime($tgl_akhir));
              $data = DB::table('d_absensibulan')
                        ->whereBetween('a_tanggal', array($tgl_awal, $tgl_akhir))
                        ->get();
          } else {
            $data = DB::table('d_absensibulan')
                        ->get();
          }
      }

      for ($i=0; $i < count($data); $i++) {
        $data[$i]->a_tanggal = Carbon::parse($data[$i]->a_tanggal)->format('d-m-Y');
      }

      $result = "{\"data\" : $data}";

      header('Content-Type: application/json');
      return $result;
    }

    public function importbulan(Request $request){
      DB::beginTransaction();
      try {
        $path = $request->file('importbulan')->getRealPath();
        $data = Excel::load($path, function($reader){})->get();

          if (!empty($data) && $data->count()) {
            foreach ($data as $key => $value) {
              $check = DB::table('d_absensibulan')
                          ->where('a_tanggalscan', Carbon::parse($value->tanggal_scan)->format('Y-m-d'))
                          ->where('a_tanggal', Carbon::parse($value->tanggal)->format('Y-m-d'))
                          ->where('a_jam', $value->jam)
                          ->where('a_pin', (int)$value->pin)
                          ->where('a_nip', (int)$value->nip)
                          ->where('a_nama', $value->nama)
                          ->where('a_jabatan', $value->jabatan)
                          ->where('a_departement', $value->departement)
                          ->where('a_kantor', $value->kantor)
                          ->where('a_verifikasi', (int)$value->verifikasi)
                          ->where('a_io', (int)$value->input_output)
                          ->where('a_workcode', (int)$value->workcode)
                          ->where('a_sn', (string)$value->serial_number)
                          ->where('a_mesin', $value->mesin)
                          ->count();

              if ($check == 0) {
                DB::table('d_absensibulan')
                        ->insert(['a_tanggalscan' => Carbon::parse($value->tanggal_scan)->format('Y-m-d G:i:s'),
                        'a_tanggal' => Carbon::parse($value->tanggal)->format('Y-m-d'),
                        'a_jam' => $value->jam,
                        'a_pin' => (int)$value->pin,
                        'a_nip' => (int)$value->nip,
                        'a_nama' => $value->nama,
                        'a_jabatan' => $value->jabatan,
                        'a_departement' => $value->departement,
                        'a_kantor' => $value->kantor,
                        'a_verifikasi' => (int)$value->verifikasi,
                        'a_io' => (int)$value->input_output,
                        'a_workcode' => (int)$value->workcode,
                        'a_sn' => $value->serial_number,
                        'a_mesin' => $value->mesin]);
              }
            }
          }

          DB::commit();
          Session::flash('sukses', 'Berhasil Disimpan!');
          return redirect('hrd/absensi/absensi');
      } catch (\Exception $e) {
          DB::rollback();
          Session::flash('gagal', 'Gagal Disimpan!');
          return redirect('hrd/absensi/absensi');
      }
    }

    public function artable(Request $request){
      if(isset($request)) {

          $tgl_awal = $request->tgl1 == null ? '' : $request->tgl1;
          $tgl_akhir = $request->tgl2 == null ? '' : $request->tgl2;

          if($tgl_awal != '' && $tgl_akhir != '') {
              $tgl_awal = date('Y-m-d', strtotime($tgl_awal));
              $tgl_akhir = date('Y-m-d', strtotime($tgl_akhir));
              $data = DB::table('d_rekapperiode')
                        ->whereBetween('r_insert', array($tgl_awal, $tgl_akhir))
                        ->get();
          } else {
            $data = DB::table('d_rekapperiode')
                        ->get();
          }
      }

      $result = "{\"data\" : $data}";

      header('Content-Type: application/json');
      return $result;
    }
}
