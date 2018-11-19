<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// Menarik model
use App\abs_pegawai_man;
use App\abs_pegawai_pro;
use App\Divisi;
use App\M_tunjangan_man;
// ===================================

// Menarik plugin
use Excel;
use DB;
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

        $tunj->tman_levelpeg = $req->tman_levelpeg;
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

        $data->tman_levelpeg = $req->tman_levelpeg;
        $data->tman_nama = $req->tman_nama;
        $data->tman_periode = $req->tman_periode;

        $value = str_replace('.', '', $req->tman_value);
        $value = str_replace(',', '.', $value);
        $tunj->tman_value = $value;

        $data->save();
        $result = "{\"status\" : 1}";

        return response($result, 200)->header('Content-Type', 'application/json');
    }
    // ============================================================
    public function payroll_manajemen()
    {
        return view('hrd/payroll_manajemen/payroll_manajemen');
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
}
