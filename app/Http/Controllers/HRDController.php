<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class HRDController extends Controller
{
    public function absensi()
    {
        return view('hrd/absensi/absensi');
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
    public function payroll()
    {
        $jabatan = DB::table('m_jabatan')
                      ->get();

        return view('hrd/payroll/payroll', compact('jabatan'));
    }
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
