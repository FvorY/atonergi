<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;
use Carbon\Carbon;
use Validator;
use File;
use App\mMember;
use App\Http\Controllers\logController;
class ProjectController extends Controller
{
    public function dokumentasi()
    {
    	return view('project/dokumentasi/dokumentasi');
    }
    public function jadwalujicoba()
    {
      if (!mMember::akses('SCHEDULE UJI COBA DAN DOKUMENTASI', 'aktif')) {
        return redirect('error-404');
      }
      $data = DB::table('d_schedule')
                ->get();

    	return view('project/jadwalujicoba/jadwalujicoba', compact('data'));
    }
    public function hapus_jadwal(Request $request){
      if (!mMember::akses('SCHEDULE UJI COBA DAN DOKUMENTASI', 'hapus')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {

        $data = DB::table('d_schedule')
            ->where('s_id', $request->id)
            ->first();

        DB::table('d_schedule')
            ->where('s_id', $request->id)
            ->delete();

        DB::table('d_schedule_checklist')
            ->where('sc_schedule', $request->id)
            ->delete();

        DB::table('d_schedule_image')
            ->where('si_schedule', $request->id)
            ->delete();

        DB::table('d_schedule_install')
            ->where('si_schedule', $request->id)
            ->delete();

        $this->deleteDir('image/uploads/dokumentasi/'.$request->id);

        logController::inputlog('Schedule Uji Coba Dan Dokumentasi', 'Hapus', $data->s_title . ' ' . $data->s_description);

        DB::commit();
        return response()->json([
          'status' => 'berhasil'
        ]);
      } catch (\Exception $e) {
        DB::rollbac();
        return response()->json([
          'status' => 'gagal'
        ]);
      }
    }
    public function tambah_jadwalujicoba()
    {
      if (!mMember::akses('SCHEDULE UJI COBA DAN DOKUMENTASI', 'tambah')) {
        return redirect('error-404');
      }
        $provinces = DB::table('provinces')
                        ->get();

        $signature = DB::table("m_signature")
                        ->get();

        $regencies = DB::table("regencies")
                        ->get();

        $quotation = DB::select("select q_id, q_nota from d_quotation");

        return view('project/jadwalujicoba/tambah_jadwal', compact('provinces', 'signature', 'quotation', 'regencies'));
    }
    public function quotation(Request $request){
      $data = DB::table('d_quotation')
                ->join('d_quotation_dt', 'qd_id', '=', 'q_id')
                ->join('m_item', 'i_code', '=', 'qd_item')
                ->where('q_id', $request->quotation)
                ->get();

      return response()->json($data);
    }
    public function city(Request $request){
      $data = DB::table('regencies')
                ->where('province_id', $request->hasil)
                ->get();

      return response()->json($data);
    }
    public function simpan_jadwal(Request $request){
      if (!mMember::akses('SCHEDULE UJI COBA DAN DOKUMENTASI', 'tambah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {
        $idschdule = DB::table('d_schedule')
                      ->max('s_id');

        if ($idschdule == null) {
          $idschdule = 1;
        } else {
          $idschdule += 1;
        }

        DB::table('d_schedule')
          ->insert([
            's_id' => $idschdule,
            's_title' => nl2br($request->judul_laporan),
            's_description' => nl2br($request->deskripsi_laporan),
            's_insert' => Carbon::now('Asia/Jakarta')
          ]);

          for ($z=1; $z <= (int)$request->jumlahimage; $z++) {
            $idimage = DB::table('d_schedule_image')
                          ->max('si_id');

            if ($idimage == null) {
              $idimage = 1;
            } else {
              $idimage += 1;
            }

            $imgPath = null;
            $tgl = Carbon::now('Asia/Jakarta');
            $folder = $tgl->year . $tgl->month . $tgl->timestamp;
            $dir = 'image/uploads/dokumentasi/' .$idschdule. '/' .$idimage;
            $childPath = $dir . '/';
            $path = $childPath;
            $file = $request->file('image'.($z).'');
            $name = null;
            if ($file != null) {
                $name = $folder . '-' .$idimage. '.' . $file->getClientOriginalExtension();
                        $file->move($path, $name);
                        $imgPath = $childPath . $name;
                } else {
                    $imgPath = null;
                }

            if ($imgPath == null) {

            } else {
              DB::table('d_schedule_image')
                ->insert([
                  'si_id' => $idimage,
                  'si_schedule' => $idschdule,
                  'si_judul' => $request->title[($z - 1)],
                  'si_image' => $imgPath,
                  'si_insert' => Carbon::now('Asia/Jakarta')
                ]);
            }

            }

          $si_id = DB::table('d_schedule_install')
                    ->max('si_id');

          if ($si_id == null) {
            $si_id = 1;
          } else {
            $si_id += 1;
          }

          DB::table('d_schedule_install')
                ->insert([
                  'si_id' => $si_id,
                  'si_schedule' => $idschdule,
                  'si_end_customer' => $request->si_end_customer,
                  'si_installer' => $request->si_installer,
                  'si_contact_data_of_installer' => $request->si_contact_data_of_installer,
                  'si_country' => $request->si_country,
                  'si_province' => $request->si_province,
                  'si_city' => $request->si_city,
                  'si_longitude' => $request->si_longitude,
                  'si_latitude' => $request->si_latitude,
                  'si_installation_date' => Carbon::parse($request->si_installation_date)->format('Y-m-d'),
                  'si_application' => $request->si_application,
                  'si_other_application' => $request->si_other_application,
                  'si_many_people' => $request->si_many_people,
                  'si_many_animal' => $request->si_many_animal,
                  'si_type_animal' => $request->si_type_animal,
                  'si_crop_grown' => $request->si_crop_grown,
                  'si_area' => $request->si_area,
                  'si_satuan_area' => $request->si_satuan_area,
                  'si_pool_size' => $request->si_pool_size,
                  'si_pool_type' => $request->si_pool_type,
                  'si_satuan_pool' => $request->si_satuan_pool,
                  'si_additional_information' => $request->si_additional_information,
                  'si_pump_type' => $request->si_pump_type,
                  'si_pump_pump' => $request->si_pump_pump,
                  'si_pump_controller' => $request->si_pump_controller,
                  'si_controller_serial_number' => $request->si_controller_serial_number,
                  'si_motor_serial_number' => $request->si_motor_serial_number,
                  'si_pump_end_serial_number' => $request->si_pump_end_serial_number,
                  'si_total_dynamic_head' => $request->si_total_dynamic_head,
                  'si_total_dinamyc_satuan' => $request->si_total_dinamyc_satuan,
                  'si_static_head' => $request->si_static_head,
                  'si_daily_flow_rate' => $request->si_daily_flow_rate,
                  'si_water_source' => $request->si_water_source,
                  'si_pipe_lenght' => $request->si_pipe_lenght,
                  'si_pipe_diameter' => $request->si_pipe_diameter,
                  'si_cable_lenght' => $request->si_cable_lenght,
                  'si_type_of_water_storage' => $request->si_type_of_water_storage,
                  'si_size_of_water_storage' => $request->si_size_of_water_storagem,
                  'si_suction_head' => $request->si_suction_head,
                  'si_suction_head_satuan' => $request->si_suction_head_satuan,
                  'si_itlet_pipe_size' => $request->si_itlet_pipe_size,
                  'si_itlet_pipe_size_satuan' => $request->si_itlet_pipe_size_satuan,
                  'si_pv_module_manufacturer' => $request->si_pv_module_manufacturer,
                  'si_model_generator' => $request->si_model_generator,
                  'si_type_generator' => $request->si_type_generator,
                  'si_quantity_generator' => $request->si_quantity_generator,
                  'si_power_each' => $request->si_power_each,
                  'si_power_total' => $request->si_power_total,
                  'si_quantity_battery' => $request->si_quantity_battery,
                  'si_capacity_battery' => $request->si_capacity_battery,
                  'si_voltage_battery' => $request->si_voltage_battery,
                  'si_manufaktur_system' => $request->si_manufaktur_system,
                  'si_type_system' => $request->si_type_system,
                  'si_model_system' => $request->si_model_system,
                  'si_quantity_system' => $request->si_quantity_system,
                  'si_check1' => $request->si_check1,
                  'si_check2' => $request->si_check2,
                  'si_your_name' => $request->si_your_name,
                  'si_signature' => $request->si_signature,
                  'si_email_address' => $request->si_email_address,
                  'si_insert' => Carbon::now('Asia/Jakarta')
                ]);

              for ($i=0; $i < count($request->sc_check); $i++) {
                  if ($request->sc_quantity[$i] == 0 || $request->sc_quantity[$i] == '') {

                  } else {
                     if ($request->sc_check[$i] == '' || $request->sc_check[$i] == null) {
                       $check = 'N';
                     } else {
                       $check = 'Y';
                       if ($request->sc_remarks[$i] == '' || $request->sc_remarks[$i] == null) {

                       } else {
                         $scid = DB::table('d_schedule_checklist')
                                   ->max('sc_id');

                        if ($scid == null) {
                          $scid = 1;
                        } else {
                          $scid += 1;
                        }

                         DB::table('d_schedule_checklist')
                            ->insert([
                              'sc_id' => $scid,
                              'sc_schedule' => $idschdule,
                              'sc_quotation' => $request->si_quotation,
                              'sc_item' => $request->sc_item[$i],
                              'sc_quantity' => $request->sc_quantity[$i],
                              'sc_check' => $check,
                              'sc_remarks' => $request->sc_remarks[$i],
                              'sc_insert' => Carbon::now('Asia/Jakarta')
                            ]);
                       }
                     }
                  }
              }

              logController::inputlog('Schedule Uji Coba Dan Dokumentasi', 'Insert', nl2br($request->judul_laporan) . ' ' . nl2br($request->deskripsi_laporan));

        DB::commit();
        Session::flash('sukses', 'Berhasil Disimpan!');
        return redirect('project/jadwalujicoba/jadwalujicoba');
    } catch (\Exception $e) {
        DB::rollback();
        Session::flash('gagal', 'Gagal Disimpan!');
        return redirect('project/jadwalujicoba/jadwalujicoba');
    }

    }
    public function pdf_jadwal(Request $request)
    {
      if (!mMember::akses('SCHEDULE UJI COBA DAN DOKUMENTASI', 'print')) {
        return redirect('error-404');
      }
      $request->id = decrypt($request->id);
      $data = DB::table('d_schedule')
                ->where('s_id', $request->id)
                ->get();

      $image = DB::table('d_schedule_image')
                ->where('si_schedule', $request->id)
                ->get();

      $judul = DB::table('d_schedule_image')
                ->where('si_schedule', $request->id)
                ->select('si_judul')
                ->distinct('si_judul')
                ->get();

                logController::inputlog('Schedule Uji Coba Dan Dokumentasi', 'Print', $data[0]->s_title . ' ' . $data[0]->s_description);

      return view('project/jadwalujicoba/pdf_jadwal', compact('data', 'image', 'judul'));
    }
    public function pdf_install(Request $request)
    {
      if (!mMember::akses('SCHEDULE UJI COBA DAN DOKUMENTASI', 'print')) {
        return redirect('error-404');
      }
        $request->id = decrypt($request->id);
        $data = DB::table('d_schedule')
                  ->where('s_id', $request->id)
                  ->get();

        $data = DB::table('d_schedule_install')
                  ->where('si_schedule', $request->id)
                  ->join('m_signature', 's_id', '=', 'si_signature')
                  ->get();

        $quotation = DB::table('d_schedule_checklist')
                      ->where('sc_schedule', $request->id)
                      ->get();

                      logController::inputlog('Schedule Uji Coba Dan Dokumentasi', 'Print', $data[0]->s_title . ' ' . $data[0]->s_description);

        return view('project/jadwalujicoba/pdf_install', compact('data', 'quotation'));
    }
    public function pemasangan()
    {

      if (!mMember::akses('PEMASANGAN', 'aktif')) {
        return redirect('error-404');
      }

      $data = DB::table('d_work_order')
              ->leftjoin('d_quotation', 'q_nota', '=', 'wo_ref')
              ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
              ->leftjoin('d_install', 'i_io', '=', 'wo_nota')
              ->where('wo_active', 'Y')
              ->get();

      $countd = DB::table('d_work_order')
                ->where('wo_status_install', 'D')
                ->where('wo_active', 'Y')
                ->count();

      $countp = DB::table('d_work_order')
                ->where('wo_status_install', 'P')
                ->where('wo_active', 'Y')
                ->count();

      $countpd = DB::table('d_work_order')
                ->where('wo_status_install', 'PD')
                ->where('wo_active', 'Y')
                ->count();

    	return view('project/pemasangan/pemasangan', compact('data','countd','countp','countpd'));
    }
    public function prosespemasangan($id){
      if (!mMember::akses('PEMASANGAN', 'tambah')) {
        return redirect('error-404');
      }
      $data = DB::table('d_work_order')
          ->leftjoin('d_quotation', 'q_nota', '=', 'wo_ref')
          ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
          ->where('wo_id', $id)
          ->get();

      $barang = DB::table('d_quotation_dt')
                ->join('m_item', 'i_code', '=', 'qd_item')
                ->join('d_unit', 'u_id', '=', 'i_unit')
                ->where('qd_id', $data[0]->q_id)
                ->get();

      for ($i=0; $i < count($barang); $i++) {
        if ($barang[$i]->qd_description == null) {
          $barang[$i]->qd_description = ' ';
        }
      }

      logController::inputlog('Pemasangan', 'Insert', '');

    	return view('project/pemasangan/prosespemasangan', compact('data', 'barang'));
    }
    public function simpanpemasangan(Request $request){
      if (!mMember::akses('PEMASANGAN', 'tambah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {

        $id = DB::table('d_install')
              ->max('i_id');

              if ($id < 0) {
                $id = 0;
              }

              $kode = "";

        $querykode = DB::select(DB::raw("SELECT MAX(MID(i_io,4,3)) as counter FROM d_install"));

        if (count($querykode) > 0) {
            foreach($querykode as $k)
              {
                $tmp = ((int)$k->counter)+1;
                $kode = sprintf("%02s", $tmp);
              }
        } else {
          $kode = "001";
        }


        $finalkode = 'IO-' . $kode . '/' . date('m') . date('Y');

        DB::table('d_install')
          ->insert([
            'i_id' => $id + 1,
            'i_wo' => $request->d_wo,
            'i_io' => $finalkode,
            'i_status' => 'PD',
            'i_instalation_date' => Carbon::parse($request->i_instalation_date)->format('Y-m-d'),
            'i_location' => $request->i_location,
            'i_installer' => $request->i_installer,
            'i_active' => 'Y',
            'i_insert' => Carbon::now('Asia/Jakarta')
          ]);

          DB::table('d_work_order')
            ->where('wo_nota', $request->d_wo)
            ->update([
              'wo_status_install' => 'PD',
              'wo_active' => 'Y'
            ]);

            logController::inputlog('Pemasangan', 'Insert', $request->d_wo . ' ' . $finalkode);

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
    public function editpemasangan(Request $request){
      if (!mMember::akses('PEMASANGAN', 'ubah')) {
        return redirect('error-404');
      }
      $wo = DB::table('d_work_order')
              ->select('wo_nota')
              ->Where('wo_id', $request->id)
              ->get();

      $data = DB::table('d_install')
                ->select('i_wo')
                ->where('i_wo', $wo[0]->wo_nota)
                ->get();

      return response()->json($data);
    }
    public function ubahpemasangan(Request $request){
      if (!mMember::akses('PEMASANGAN', 'ubah')) {
        return redirect('error-404');
      }
      $id = $request->id;

      $data = DB::table('d_work_order')
          ->leftjoin('d_quotation', 'q_nota', '=', 'wo_ref')
          ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
          ->where('wo_id', $id)
          ->get();

      $barang = DB::table('d_quotation_dt')
                ->join('m_item', 'i_code', '=', 'qd_item')
                ->join('d_unit', 'u_id', '=', 'i_unit')
                ->where('qd_id', $data[0]->q_id)
                ->get();

      for ($i=0; $i < count($barang); $i++) {
        if ($barang[$i]->qd_description == null) {
          $barang[$i]->qd_description = '';
        }
      }

      $install = DB::table('d_install')
                  ->where('i_wo', $data[0]->wo_nota)
                  ->where('i_active', 'Y')
                  ->get();

                  logController::inputlog('Pemasangan', 'Update', '');

      return view('project.pemasangan.editprosespemasangan', compact('data','barang','install'));
    }
    public function perbaruipemasangan(Request $request){
      if (!mMember::akses('PEMASANGAN', 'ubah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {

        DB::table('d_install')
          ->where('i_io', $request->i_io)
          ->where('i_active', 'Y')
          ->update([
            'i_instalation_date' => Carbon::parse($request->i_instalation_date)->format('Y-m-d'),
            'i_location' => $request->i_location,
            'i_installer' => $request->i_installer
          ]);

          logController::inputlog('Pemasangan', 'Update', $request->i_io);
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
    public function settingpemasangan(Request $request){
      if (!mMember::akses('PEMASANGAN', 'ubah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {
        $validation = Validator::make($request->all(), [
                 'i_wo' => 'required',
                 'i_report_date' => 'required',
                 'i_notes' => 'required',
             ]);

       if ($validation->fails()) {
           return response()->json([
             'status' => 'kesalahan'
           ]);
        } else {
          DB::table('d_install')
            ->where('i_wo', $request->i_wo)
            ->where('i_active', 'Y')
            ->update([
              'i_report_date' => Carbon::parse($request->d_delivery_date)->format('Y-m-d'),
              'i_notes' => $request->i_notes,
              'i_status' => 'D',
              'i_update' => Carbon::now('Asia/Jakarta')
            ]);

          DB::table('d_work_order')
            ->where('wo_nota', $request->i_wo)
            ->update([
              'wo_status_install' => 'D'
            ]);
        }
        logController::inputlog('Pemasangan', 'Update', $request->i_wo);
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
    public function hapuspemasangan(Request $request){
      if (!mMember::akses('PEMASANGAN', 'hapus')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {

        $wo = DB::table('d_work_order')
          ->where('wo_id', $request->id)
          ->get();

        DB::table('d_work_order')
          ->where('wo_id', $request->id)
          ->update([
            'wo_active' => 'N'
          ]);

        $check = DB::table('d_install')
                  ->where('i_wo', $wo[0]->wo_nota)
                  ->count();

        if ($check != 0) {
          DB::table('d_install')
              ->where('i_wo', $wo[0]->wo_nota)
              ->update([
                'i_active' => 'N',
                'i_update' => Carbon::now('Asia/Jakarta')
              ]);
        }

        logController::inputlog('Pemasangan', 'Hapus', $wo[0]->wo_nota);

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
    public function pengadaanbarang()
    {
    	return view('project/pengadaanbarang/pengadaanbarang');
    }
    public function prosespengadaanbarang()
    {
    	return view('project/pengadaanbarang/prosespengadaanbarang');
    }
    public function pengepakanbarang()
    {
    	return view('project/pengepakanbarang/pengepakanbarang');
    }
    public function pengirimanbarang()
    {
      if (!mMember::akses('PENGIRIMAN BARANG', 'aktif')) {
        return redirect('error-404');
      }

      $data = DB::table('d_sales_order')
              ->leftjoin('d_quotation', 'q_nota', '=', 'so_ref')
              ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
              ->leftjoin('d_delivery', 'd_so', '=', 'so_nota')
              ->where('so_active', 'Y')
              ->get();

      $countd = DB::table('d_sales_order')
                ->where('so_status_delivery', 'D')
                ->where('so_active', 'Y')
                ->count();

      $countp = DB::table('d_sales_order')
                ->where('so_status_delivery', 'P')
                ->where('so_active', 'Y')
                ->count();

      $countpd = DB::table('d_sales_order')
                ->where('so_status_delivery', 'PD')
                ->where('so_active', 'Y')
                ->count();

    	return view('project/pengirimanbarang/pengirimanbarang', compact('data','countd','countp','countpd'));
    }
    public function prosespengirimanbarang($id)
    {
      if (!mMember::akses('PENGIRIMAN BARANG', 'tambah')) {
        return redirect('error-404');
      }
      $data = DB::table('d_sales_order')
          ->leftjoin('d_quotation', 'q_nota', '=', 'so_ref')
          ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
          ->where('so_id', $id)
          ->get();

      $barang = DB::table('d_quotation_dt')
                ->join('m_item', 'i_code', '=', 'qd_item')
                ->join('d_unit', 'u_id', '=', 'i_unit')
                ->where('qd_id', $data[0]->q_id)
                ->get();

      for ($i=0; $i < count($barang); $i++) {
        if ($barang[$i]->qd_description == null) {
          $barang[$i]->qd_description = ' ';
        }
      }

    	return view('project/pengirimanbarang/prosespengirimanbarang', compact('data', 'barang'));
    }
    public function edit(Request $request){
      if (!mMember::akses('PENGIRIMAN BARANG', 'ubah')) {
        return redirect('error-404');
      }
      $so = DB::table('d_sales_order')
              ->select('so_nota')
              ->Where('so_id', $request->id)
              ->get();

      $data = DB::table('d_delivery')
                ->select('d_so', 'd_delivery_date')
                ->where('d_so', $so[0]->so_nota)
                ->get();

      $data[0]->d_delivery_date = Carbon::parse($data[0]->d_delivery_date)->format('d-m-Y');

      return response()->json($data);
    }
    public function proses(Request $request){
      if (!mMember::akses('PENGIRIMAN BARANG', 'tambah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {

        $id = DB::table('d_delivery')
              ->max('d_id');

              if ($id < 0) {
                $id = 0;
              }

              $kode = "";

        $querykode = DB::select(DB::raw("SELECT MAX(MID(d_do,4,3)) as counter FROM d_delivery"));

        if (count($querykode) > 0) {
            foreach($querykode as $k)
              {
                $tmp = ((int)$k->counter)+1;
                $kode = sprintf("%02s", $tmp);
              }
        } else {
          $kode = "001";
        }


        $finalkode = 'DO-' . $kode . '/' . date('m') . date('Y');

        $d_shipping_charges = str_replace('Rp. ', '', $request->d_shipping_charges);
        $d_shipping_charges = str_replace('.', '', $d_shipping_charges);

        DB::table('d_delivery')
          ->insert([
            'd_id' => $id + 1,
            'd_so' => $request->d_so,
            'd_do' => $finalkode,
            'd_status' => 'PD',
            'd_delivery_date' => Carbon::parse($request->d_delivery_date)->format('Y-m-d'),
            'd_weight' => $request->d_weight,
            'd_shipping_charges' => $d_shipping_charges,
            'd_active' => 'Y',
            'd_insert' => Carbon::now('Asia/Jakarta')
          ]);

          DB::table('d_sales_order')
            ->where('so_nota', $request->d_so)
            ->update([
              'so_status_delivery' => 'PD',
              'so_active' => 'Y'
            ]);

            logController::inputlog('Pengiriman Barang', 'Insert', $finalkode);

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
    public function ubah(Request $request){
      if (!mMember::akses('PENGIRIMAN BARANG', 'ubah')) {
        return redirect('error-404');
      }
      $id = $request->id;

      $data = DB::table('d_sales_order')
          ->leftjoin('d_quotation', 'q_nota', '=', 'so_ref')
          ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
          ->where('so_id', $id)
          ->get();

      $barang = DB::table('d_quotation_dt')
                ->join('m_item', 'i_code', '=', 'qd_item')
                ->join('d_unit', 'u_id', '=', 'i_unit')
                ->where('qd_id', $data[0]->q_id)
                ->get();

      for ($i=0; $i < count($barang); $i++) {
        if ($barang[$i]->qd_description == null) {
          $barang[$i]->qd_description = '';
        }
      }

      $delivery = DB::table('d_delivery')
                  ->where('d_so', $data[0]->so_nota)
                  ->where('d_active', 'Y')
                  ->get();

      return view('project.pengirimanbarang.editprosespengiriman', compact('data','barang','delivery'));
    }
    public function setting(Request $request){
      if (!mMember::akses('PENGIRIMAN BARANG', 'ubah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {
        $validation = Validator::make($request->all(), [
                 'd_delivery_date' => 'required',
                 'd_so' => 'required',
                 'd_receiver' => 'required',
                 'd_receive_date' => 'required',
             ]);

       if ($validation->fails()) {
           return response()->json([
             'status' => 'kesalahan'
           ]);
        } else {
          DB::table('d_delivery')
            ->where('d_so', $request->d_so)
            ->where('d_active', 'Y')
            ->update([
              'd_delivery_date' => Carbon::parse($request->d_delivery_date)->format('Y-m-d'),
              'd_receive_date' => Carbon::parse($request->d_receive_date)->format('Y-m-d'),
              'd_receiver' => $request->d_receiver,
              'd_status' => 'D',
              'd_update' => Carbon::now('Asia/Jakarta')
            ]);

          DB::table('d_sales_order')
            ->where('so_nota', $request->d_so)
            ->update([
              'so_status_delivery' => 'D'
            ]);
        }
        logController::inputlog('Pengiriman Barang', 'Update', '');
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
    public function hapus(Request $request){
      if (!mMember::akses('PENGIRIMAN BARANG', 'hapus')) {
        return redirect('error-404');
      }
    DB::beginTransaction();
    try {

      $so = DB::table('d_sales_order')
        ->where('so_id', $request->id)
        ->get();

      DB::table('d_sales_order')
        ->where('so_id', $request->id)
        ->update([
          'so_active' => 'N'
        ]);

      $check = DB::table('d_delivery')
                ->where('d_so', $so[0]->so_nota)
                ->count();

      if ($check != 0) {
        DB::table('d_delivery')
            ->where('d_so', $so[0]->so_nota)
            ->update([
              'd_active' => 'N',
              'd_update' => Carbon::now('Asia/Jakarta')
            ]);

            logController::inputlog('Pengiriman Barang', 'Hapus', '');
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
    public function perbarui(Request $request){
      if (!mMember::akses('PENGIRIMAN BARANG', 'ubah')) {
        return redirect('error-404');
      }
      DB::beginTransaction();
      try {
        $request->d_shipping_charges = str_replace('Rp. ','',$request->d_shipping_charges);
        $request->d_shipping_charges = str_replace('.','',$request->d_shipping_charges);

        DB::table('d_delivery')
          ->where('d_do', $request->nota)
          ->where('d_active', 'Y')
          ->update([
            'd_delivery_date' => Carbon::parse($request->d_delivery_date)->format('Y-m-d'),
            'd_weight' => $request->d_weight,
            'd_shipping_charges' => $request->d_shipping_charges
          ]);

          logController::inputlog('Pengiriman Barang', 'Update', $request->nota);

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
    public function salescommon()
    {
    	return view('project/salescommon/salescommon');
    }
    public function technicianfee()
    {
      if (!mMember::akses('TECHNICIAN FEE', 'aktif')) {
        return redirect('error-404');
      }

    	return view('project/technicianfee/technicianfee');
    }
    public function deleteDir($dirPath)
    {
        if (!is_dir($dirPath)) {
            return false;
        }
        if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
            $dirPath .= '/';
        }
        $files = glob($dirPath . '*', GLOB_MARK);
        foreach ($files as $file) {
            if (is_dir($file)) {
                self::deleteDir($file);
            } else {
                unlink($file);
            }
        }
        rmdir($dirPath);
    }
}
