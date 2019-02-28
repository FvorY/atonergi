<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('home');
});

Route::get('modul_keuangan/connection', function () {
    return keuangan::connection()->version();
});


Route::group(['middleware' => 'guest'], function () {

    Route::get('/', function () {
        return view('auth.login');
    })->name('index');

    Route::get('login', 'loginController@authenticate')->name('login');
    // Route::post('login', 'loginController@authenticate')->name('login');
});


Route::group(['middleware' => 'auth'], function () {

Route::get('/sinkron_bundle', 'master\master_bundleitemController@sinkron_bundle');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('logout', 'HomeController@logout')->name('logout');

//Dashboard
Route::get('/realtime', 'HomeController@realtime')->name('realtime');
Route::get('/insertwidget', 'HomeController@insertwidget')->name('insertwidget');
Route::get('/showstok', 'HomeController@showstok')->name('showstok');


Route::get('/tes', 'SettingController@tes');


// SETTING
    // jabatan
        Route::get('/setting/jabatan', 'SettingController@jabatan');
        Route::get('/setting/datatable_jabatan', 'SettingController@datatable_jabatan')->name('datatable_jabatan');
        Route::get('/setting/simpan_jabatan', 'SettingController@simpan_jabatan');
        Route::get('/setting/hapus_jabatan', 'SettingController@hapus_jabatan');
    // akun
        Route::get('/setting/akun', 'SettingController@akun');
        Route::get('/setting/datatable_akun', 'SettingController@datatable_akun')->name('datatable_akun');
        Route::post('/setting/simpan_akun', 'SettingController@simpan_akun');
        Route::get('/setting/simpan_akun', 'SettingController@simpan_akun');
        Route::get('/setting/hapus_akun', 'SettingController@hapus_akun');
        Route::get('/setting/edit_akun', 'SettingController@edit_akun');
        Route::get('storage/uploads/user/thumbnail')->name('thumbnail');
    //daftar_menu
        Route::get('/setting/daftar_menu', 'SettingController@daftar_menu');
        Route::get('/setting/datatable_daftar_menu', 'SettingController@datatable_daftar_menu')->name('datatable_daftar_menu');
        Route::get('/setting/simpan_daftar_menu', 'SettingController@simpan_daftar_menu');
        Route::get('/setting/hapus_daftar_menu', 'SettingController@hapus_daftar_menu');
    //hak akses
        Route::get('/setting/hak_akses', 'SettingController@hak_akses');
        Route::get('/setting/hak_akses/table_data', 'SettingController@table_data');
        Route::get('/setting/hak_akses/centang', 'SettingController@centang');

// Master
Route::get('/master/suplier/suplier', 'MasterController@suplier');
Route::get('/master/pegawai/pegawai', 'MasterController@pegawai');
Route::get('/master/akun/keuangan', 'MasterController@keuangan');
Route::get('/master/transaksi/t_keuangan', 'MasterController@t_keuangan');
Route::get('/master/barang/barang', 'MasterController@barang')->name('barang');
Route::get('/master/barang/cari', 'MasterController@cari');

    // MASTER AKUN KUANGAN
    Route::get('/master/akun/a_keuangan', 'keuangan\master\akun_controller@index')->name('akun.index');
    Route::get('/master/akun/dtgen_keuangan', 'MasterController@dtgen_keuangan')->name('dtgen_keuangan');
    Route::get('/master/akun/dtdet_keuangan', 'MasterController@dtdet_keuangan')->name('dtdet_keuangan');
    Route::get('/master/akun/save_a_keuangan', 'MasterController@save_keuangan')->name('save_a_keuangan');
    Route::get('/master/akun/edit_a_keuangan', 'MasterController@edit_a_keuangan')->name('edit_a_keuangan');
    Route::get('/master/akun/update_a_keuangan', 'MasterController@update_a_keuangan')->name('update_a_keuangan');
    Route::get('/master/akun/delete_a_keuangan', 'MasterController@delete_a_keuangan')->name('delete_a_keuangan');


    // STATUS QO
    Route::get('/master/status/status', 'MasterController@status');
    Route::get('/master/status/datatable_status', 'MasterController@datatable_status')->name('datatable_status');
    Route::get('/master/status/edit_status', 'MasterController@edit_status');
    Route::get('/master/status/simpan_status', 'MasterController@simpan_status');
    Route::get('/master/status/hapus_status', 'MasterController@hapus_status');
    // Master Data Bank
    Route::get('/master/bank/bank', 'MasterController@bank')->name('master_bank');
    Route::get('/master/bank/datatable_bank', 'MasterController@datatable_bank')->name('datatable_bank');
    Route::get('/master/bank/edit_bank', 'MasterController@edit_bank');
    Route::get('/master/bank/simpan_bank', 'MasterController@simpan_bank');
    Route::get('/master/bank/hapus_bank', 'MasterController@hapus_bank');
    // Master Data JAsa
    Route::get('/master/jasa/jasa', 'MasterController@jasa')->name('master_jasa');
    Route::get('/master/jasa/datatable_jasa', 'MasterController@datatable_jasa')->name('datatable_jasa');
    Route::get('/master/jasa/edit_jasa', 'MasterController@edit_jasa');
    Route::get('/master/jasa/simpan_jasa', 'MasterController@simpan_jasa');
    Route::get('/master/jasa/hapus_jasa', 'MasterController@hapus_jasa');
    //
Route::get('/master/type/type', 'MasterController@type');
Route::get('/master/ttd/ttd', 'MasterController@ttd');
Route::get('/master/ttd/simpan', 'MasterController@simpanttd');
Route::post('/master/ttd/simpan', 'MasterController@simpanttd');
Route::get('/master/ttd/hapus', 'MasterController@hapusttd');
Route::get('/master/ttd/update', 'MasterController@updatettd');
Route::post('/master/ttd/update', 'MasterController@updatettd');
Route::get('/master/ekspedisi/ekspedisi', 'ekspedisiController@ekspedisi')->name('ekspedisi');
Route::get('/master/ekspedisi/tambah_ekspedisi', 'ekspedisiController@tambah_ekspedisi')->name('tambah_ekspedisi');
Route::get('/master/ekspedisi/simpan', 'ekspedisiController@simpan')->name('simpan_ekspedisi');
Route::get('/master/ekspedisi/update', 'ekspedisiController@update')->name('update_ekspedisi');
Route::get('/master/ekspedisi/hapus', 'ekspedisiController@hapus');
Route::get('/master/ekspedisi/edit', 'ekspedisiController@edit');

// Quotation
Route::get('/quotation/q_quotation/q_quotation', 'QuotationController@q_quotation')->name('q_quotation');
Route::get('/quotation/q_quotation/datatable', 'QuotationController@quote_datatable')->name('quote_datatable');
Route::get('/quotation/q_quotation/cari_penawaran', 'QuotationController@cari_penawaran');

Route::get('/quotation/q_quotation/edit_quotation/{id}', 'QuotationController@edit_quotation');
Route::get('/quotation/q_quotation/print_quotation', 'QuotationController@print_quotation');
Route::get('/quotation/q_quotation/autocomplete', 'QuotationController@autocomplete');
Route::get('/quotation/q_quotation/customer', 'QuotationController@customer');
Route::get('/quotation/q_quotation/nota_quote', 'QuotationController@nota_quote');
Route::get('/quotation/q_quotation/append_item', 'QuotationController@append_item');
Route::get('/quotation/q_quotation/edit_item', 'QuotationController@edit_item');
Route::get('/quotation/q_quotation/save_quote', 'QuotationController@save_quote');
Route::get('/quotation/q_quotation/update_quote', 'QuotationController@update_quote');
Route::get('/quotation/q_quotation/hapus_quote', 'QuotationController@hapus_quote');
Route::get('/quotation/q_quotation/print_quote/{id}/global', 'QuotationController@print_quote');
Route::get('/quotation/q_quotation/print_quote/{id}/detail', 'QuotationController@print_quote_detail');

Route::get('/quotation/q_quotation/detail', 'QuotationController@detail');
Route::get('/quotation/q_quotation/histori', 'QuotationController@histori');
Route::get('/quotation/q_quotation/update_status', 'QuotationController@update_status');


Route::get('/quotation/k_penawaran/k_penawaran', 'QuotationController@k_penawaran');
Route::get('/quotation/pdf_penawaran/pdf_penawaran', 'QuotationController@pdf_penawaran');

// Purchase
Route::get('/purchase/belanjalangsung/belanjalangsung', 'purchase\belanjalangsungController@belanjalangsung')->name('belanjalangsung');
Route::get('/purchase/belanjalangsung/tambah_belanjalangsung', 'purchase\belanjalangsungController@tambah_belanjalangsung')->name('tambah_belanjalangsung');
Route::get('/purchase/belanjalangsung/simpan', 'purchase\belanjalangsungController@simpan');
Route::get('/purchase/belanjalangsung/hapus', 'purchase\belanjalangsungController@hapus');
Route::get('/purchase/belanjalangsung/detail', 'purchase\belanjalangsungController@detail');
Route::get('/purchase/belanjalangsung/edit', 'purchase\belanjalangsungController@edit');
Route::get('/purchase/belanjalangsung/update', 'purchase\belanjalangsungController@update');
Route::get('/purchase/belanjalangsung/custom', 'purchase\belanjalangsungController@custom');
Route::get('/purchase/belanjalangsung/customsimpan', 'purchase\belanjalangsungController@customsimpan');
Route::get('/purchase/belanjalangsung/customhapus', 'purchase\belanjalangsungController@customhapus');
Route::get('/purchase/belanjalangsung/customedit', 'purchase\belanjalangsungController@customedit');
Route::get('/purchase/belanjalangsung/customedit', 'purchase\belanjalangsungController@customedit');
Route::get('/purchase/belanjalangsung/customupdate', 'purchase\belanjalangsungController@customupdate');
Route::get('/purchase/belanjalangsung/autocomplete', 'purchase\belanjalangsungController@autocomplete');
Route::get('/purchase/hub_suplier/hub_suplier', 'purchase\belanjalangsungController@hub_suplier')->name('hub_suplier');

// Order

Route::get('/order/s_invoice/s_invoice', 'OrderController@s_invoice');
Route::get('/order/s_invoice/detail_s_invoice', 'OrderController@detail_s_invoice');
Route::get('/order/s_invoice/print_salesinvoice', 'OrderController@print_salesinvoice');
Route::get('/order/workorder/w_order', 'OrderController@w_order');
Route::get('/order/workorder/w_order/detail_workorder', 'OrderController@detail_workorder');
Route::get('/order/workorder/print_workorder/{id}', 'OrderController@print_workorder');
Route::get('/order/checklistform/checklistform', 'OrderController@checklist');
Route::get('/order/pelunasanorder/pelunasanorder', 'OrderController@pelunasanorder');
Route::get('/order/f_penjualan/f_penjualan', 'OrderController@f_penjualan');
Route::get('/order/cekbarang/cekbarang', 'OrderController@cekbarang');
Route::get('/order/cekbarang/detail/{id}', 'OrderController@detailbarang');

    // PEMBAYARAN DEPOSIT
    Route::get('/order/pembayarandeposit/pembayarandeposit', 'OrderController@pembayarandeposit');

    Route::get('/order/pembayarandeposit/pembayarandeposit/detail_pembayarandeposit/{id}', 'OrderController@detail_pembayarandeposit');
    Route::get('/order/pembayarandeposit/pembayarandeposit/datatable_deposit', 'OrderController@datatable_deposit')->name('datatable_deposit');
    Route::get('/order/pembayarandeposit/save_deposit', 'OrderController@save_deposit');
    Route::get('/order/pembayarandeposit/approve_deposit', 'OrderController@approve_deposit');
    // END

    // SALES ORDER
    Route::get('/order/salesorder/s_order', 'OrderController@s_order')->name('s_order');
    Route::get('/order/salesorder/datatable_so', 'OrderController@datatable_so')->name('datatable_so');
    Route::get('/order/salesorder/s_order/detail_salesorder/{id}', 'OrderController@detail_salesorder');
    Route::get('/order/salesorder/print_salesorder/{id}', 'OrderController@print_salesorder');

    // work ORDER
    Route::get('/order/workorder/w_order', 'OrderController@w_order')->name('w_order');
    Route::get('/order/workorder/datatable_so', 'OrderController@datatable_wo')->name('datatable_wo');
    Route::get('/order/workorder/s_order/detail_workorder/{id}', 'OrderController@detail_workorder');
    Route::get('/order/workorder/print_workorder', 'OrderController@print_workorder');
    // PAYMENT ORDER
    Route::get('/order/payment_order', 'OrderController@payment_order')->name('payment_order');
    Route::get('/order/payment_order/datatable_payment_order', 'OrderController@datatable_payment_order')->name('datatable_payment_order');
    Route::get('/order/payment_order/detail_payment_order/{id}', 'OrderController@detail_payment_order');
    Route::get('/order/payment_order/save_payment_order', 'OrderController@save_payment_order');
    // PROFORMA INVOICE
    Route::get('/order/proforma_invoice', 'OrderController@proforma_invoice');
    Route::get('/order/proforma_invoice/print_proforma_invoice', 'OrderController@print_proforma_invoice')->name('print_proforma_invoice');
    Route::get('/order/payment_order/datatable_proforma_invoice', 'OrderController@datatable_proforma_invoice')->name('datatable_proforma_invoice');
    Route::get('/order/proforma_invoice/detail_proforma_invoice/{id}', 'OrderController@detail_proforma_invoice');
    Route::get('/order/proforma_invoice/save_proforma_invoice', 'OrderController@save_proforma_invoice');
    Route::get('/order/proforma_invoice/hapus_proforma_invoice', 'OrderController@hapus_proforma_invoice');

    // Print Tanda Terima Kasih
    Route::get('/order/pembayarandeposit/print_tandaterimakasih', 'OrderController@print_tandaterimakasih')->name('print_tandaterimakasih');
    Route::get('/order/proforma_invoice/printproformakasih', 'OrderController@printproformakasih');

// Pilih After Order
Route::get('/project/dokumentasi/dokumentasi', 'ProjectController@dokumentasi');
Route::get('/project/jadwalujicoba/jadwalujicoba', 'ProjectController@jadwalujicoba');
Route::get('/project/jadwalujicoba/tambah_jadwal', 'ProjectController@tambah_jadwalujicoba');
Route::get('/project/jadwalujicoba/simpan_jadwal', 'ProjectController@simpan_jadwal');
Route::get('/project/jadwalujicoba/quotation', 'ProjectController@quotation');
Route::get('/project/jadwalujicoba/city', 'ProjectController@city');
Route::get('/project/jadwalujicoba/hapus_jadwal', 'ProjectController@hapus_jadwal');
Route::post('/project/jadwalujicoba/simpan_jadwal', 'ProjectController@simpan_jadwal');
Route::get('/project/jadwalujicoba/pdf_jadwal', 'ProjectController@pdf_jadwal')->name('pdf_jadwal');
Route::get('/project/jadwalujicoba/pdf_install', 'ProjectController@pdf_install')->name('pdf_install');
Route::get('/project/pemasangan/pemasangan', 'ProjectController@pemasangan');
Route::get('/project/pemasangan/prosespemasangan/{id}', 'ProjectController@prosespemasangan');
Route::get('/project/pemasangan/proses', 'ProjectController@simpanpemasangan');
Route::get('/project/pemasangan/hapus', 'ProjectController@hapuspemasangan');
Route::get('/project/pemasangan/edit', 'ProjectController@editpemasangan');
Route::get('/project/pemasangan/ubah', 'ProjectController@ubahpemasangan');
Route::get('/project/pemasangan/perbarui', 'ProjectController@perbaruipemasangan');
Route::get('/project/pemasangan/setting', 'ProjectController@settingpemasangan');
Route::get('/project/pengadaanbarang/pengadaanbarang', 'ProjectController@pengadaanbarang');
Route::get('/project/pengepakanbarang/pengepakanbarang', 'ProjectController@pengepakanbarang');
Route::get('/project/pengirimanbarang/pengirimanbarang', 'ProjectController@pengirimanbarang');
Route::get('/project/salescommon/salescommon', 'ProjectController@salescommon');
Route::get('/project/technicianfee/technicianfee', 'ProjectController@technicianfee');
Route::get('/project/pengirimanbarang/prosespengadaanbarang', 'ProjectController@prosespengadaanbarang');
Route::get('/project/pengirimanbarang/proses', 'ProjectController@proses');
Route::get('/project/pengirimanbarang/hapus', 'ProjectController@hapus');
Route::get('/project/pengirimanbarang/edit', 'ProjectController@edit');
Route::get('/project/pengirimanbarang/ubah', 'ProjectController@ubah');
Route::get('/project/pengirimanbarang/perbarui', 'ProjectController@perbarui');
Route::get('/project/pengirimanbarang/setting', 'ProjectController@setting');
Route::get('/project/pengirimanbarang/prosespengirimanbarang/{id}', 'ProjectController@prosespengirimanbarang');
Route::get('/project/pengirimanbarang/checklistform/print', 'ProjectController@print_checklistform')->name('print_checklistform');
Route::get('/project/suratjalan/suratjalan', 'ProjectController@suratjalan')->name('suratjalan');
Route::get('/project/suratjalan/getso', 'ProjectController@getso');
Route::get('/project/suratjalan/simpansj', 'ProjectController@simpansj');
Route::get('/project/suratjalan/tambah_suratjalan', 'ProjectController@tambah_suratjalan')->name('tambah_suratjalan');
Route::get('/project/suratjalan/print_suratjalan', 'ProjectController@print_suratjalan')->name('print_suratjalan');

// Pompa
Route::get('/projectmp/pmp_dokumentasi/pmp_dokumentasi', 'PompaController@pmp_dokumentasi');
Route::get('/projectmp/pmp_jadwalujicoba/pmp_jadwalujicoba', 'PompaController@pmp_jadwalujicoba');
Route::get('/projectmp/pmp_pemasangan/pmp_pemasangan', 'PompaController@pmp_pemasangan');
Route::get('/projectmp/pmp_pengadaanbarang/pmp_pengadaanbarang', 'PompaController@pmp_pengadaanbarang');
Route::get('/projectmp/pmp_pengepakanbarang/pmp_pengepakanbarang', 'PompaController@pmp_pengepakanbarang');
Route::get('/projectmp/pmp_pengirimanbarang/pmp_pengirimanbarang', 'PompaController@pmp_pengirimanbarang');
Route::get('/projectmp/pmp_salescommon/pmp_salescommon', 'PompaController@pmp_salescommon');
Route::get('/projectmp/pmp_technicianfee/pmp_technicianfee', 'PompaController@pmp_technicianfee');

// SHS
Route::get('/projectms/shs_dokumentasi/shs_dokumentasi', 'SHSController@shs_dokumentasi');
Route::get('/projectms/shs_jadwalujicoba/shs_jadwalujicoba', 'SHSController@shs_jadwalujicoba');
Route::get('/projectms/shs_pemasangan/shs_pemasangan', 'SHSController@shs_pemasangan');
Route::get('/projectms/shs_pengadaanbarang/shs_pengadaanbarang', 'SHSController@shs_pengadaanbarang');
Route::get('/projectms/shs_pengepakanbarang/shs_pengepakanbarang', 'SHSController@shs_pengepakanbarang');
Route::get('/projectms/shs_pengirimanbarang/shs_pengirimanbarang', 'SHSController@shs_pengirimanbarang');
Route::get('/projectms/shs_salescommon/shs_salescommon', 'SHSController@shs_salescommon');
Route::get('/projectms/shs_technicianfee/shs_technicianfee', 'SHSController@shs_technicianfee');
Route::get('/projectms/shs_pengadaanbarang/shs_prosespengadaanbarang', 'SHSController@shs_prosespengadaanbarang');
Route::get('/projectms/shs_pengirimanbarang/shs_prosespengirimanbarang', 'SHSController@shs_prosespengirimanbarang');

// Manajemen Aset
Route::get('/manajemenaset/history/history', 'AsetController@history');
Route::get('/manajemenaset/penyusutan/penyusutan', 'AsetController@penyusutan');
Route::get('/manajemenaset/irventarisasi/irventarisasi', 'AsetController@irventarisasi');

// FInance
Route::get('modul/keuangan/reporting/reporting', 'FinanceController@reporting')->name('laporan.keuangan.index');
Route::get('modul/keuangan/evaluating/evaluating', 'FinanceController@evaluating');
Route::get('modul/keuangan/bookkeeping/bookkeeping', 'FinanceController@bookkeeping');

Route::get('/finance/bookkeeping/transaksi_bank', 'FinanceController@transaksi_bank');
Route::get('/finance/bookkeeping/transaksi_memorial', 'FinanceController@transaksi_memorial');
Route::get('/finance/costmanajemen/costmanajemen', 'FinanceController@costmanajemen');
// Log-page
Route::get('/log','logPageController@index')->name('log.index');



// HRD


// Sub-bagian absensi
Route::get('/hrd/absensi/absensi', 'HRDController@absensi');
// Route::get('/hrd/absensi/absensi-manajemen', 'HRDController@findAbsManajemen');
// Route::get('/hrd/absensi/absensi-produksi', 'HRDController@findAbsManajemen');
//
// Route::post('/hrd/absensi/import-data-manajemen', 'HRDController@importDataManajemen');
// Route::post('/hrd/absensi/import-data-produksi', 'HRDController@importDataProduksi');
// =========================================================

Route::get('/hrd/recruitment/recruitment', 'HRDController@recruitment');

// Sub-bagian tunjangan
Route::get('/hrd/payroll/payroll', 'HRDController@payroll');
Route::get('/hrd/payroll/payroll/excel/{data}', 'HRDController@payrollexcel');
Route::get('/hrd/payroll/print_payroll', 'HRDController@print_payroll')->name('print_payroll');
Route::get('/hrd/payroll/print_payrolls', 'HRDController@print_payrolls')->name('print_payrolls');
Route::get('/hrd/payroll/find-tunjangan', 'HRDController@findTunjangan');
Route::post('/hrd/payroll/insert-tunjangan', 'HRDController@insertTunjangan');
Route::post('/hrd/payroll/update-tunjangan', 'HRDController@updateTunjangan');
Route::post('/hrd/payroll/hapus-tunjangan', 'HRDController@hapusTunjangan')->name('hapus_tunjangan');
Route::get('/hrd/payroll/tunjangan', 'HRDController@datatable_tunjangan')->name('datatable_tunjangan');
Route::get('/hrd/payroll/finddata', 'HRDController@finddata')->name('finddata');
Route::get('/hrd/payroll/simpansetting', 'HRDController@simpansetting')->name('simpansetting');

Route::get('/hrd/payroll/setting_tunjangan', 'HRDController@setting_tunjangan');
// ====================================================================

Route::get('/hrd/freelance/freelance', 'HRDController@freelance');
Route::get('/hrd/kesejahteraan/kesejahteraan', 'HRDController@kesejahteraan');
Route::get('/hrd/data_kpi/data_kpi', 'HRDController@data_kpi');
Route::get('/hrd/data_lembur/data_lembur', 'HRDController@data_lembur');
Route::get('/hrd/manajemen_scoreboard/manajemen_scoreboard', 'HRDController@manajemen_scoreboard');
Route::get('/hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi', 'HRDController@manajemen_scoreboard_kpi');
Route::get('/hrd/manajemen_surat/manajemen_surat', 'HRDController@manajemen_surat');
Route::get('/hrd/payroll_manajemen/payroll_manajemen', 'HRDController@payroll_manajemen');
Route::get('/hrd/payroll_produksi/payroll_produksi', 'HRDController@payroll_produksi');
Route::get('/hrd/scoreboard_pegawai/scoreboard_pegawai', 'HRDController@scoreboard_pegawai');
Route::get('/hrd/training_pegawai/training_pegawai', 'HRDController@training_pegawai');

// ASS
Route::get('aftersales/tandaterima/tandaterima', 'ASSController@tandaterima');
Route::get('aftersales/tandaterima/proses_tandaterima', 'ASSController@proses_tandaterima');
Route::get('aftersales/repairreport/repairreport', 'ASSController@repairreport');
Route::get('aftersales/repairorder/repairorder', 'ASSController@repairorder');
Route::get('aftersales/rencanatindakan/rencanatindakan', 'ASSController@rencanatindakan');
Route::get('aftersales/kebutuhanbiaya/kebutuhanbiaya', 'ASSController@kebutuhanbiaya');

// Inventory
Route::get('inventory/barangkeluar/barangkeluar', 'InventoryController@barangkeluar')->name('barangkeluar');
Route::get('inventory/barangkeluar/kartu_stok', 'InventoryController@kartu_stok')->name('kartu_stok');
Route::get('inventory/barangkeluar/simpankartu', 'InventoryController@simpankartu');
Route::get('inventory/barangkeluar/print_kartu_stok', 'InventoryController@print_kartu_stok')->name('print_kartu_stok');
Route::get('inventory/barcode/barcode', 'InventoryController@barcode');
Route::get('inventory/maintenance/maintenance', 'InventoryController@maintenance');
Route::get('inventory/suratpinjambarang/suratpinjambarang', 'InventoryController@suratpinjambarang');


            //---------------------- MASTER ------------Own: Deny------------\\
//master vendor
Route::get('/master/vendor/vendor', 'master\master_vendorController@vendor');
Route::get('/master/simpanvendor/simpan_vendor', 'master\master_vendorController@simpan_vendor');
Route::get('/master/hapusvendor/hapus_vendor', 'master\master_vendorController@hapus_vendor');
Route::get('/master/updatevendor/update_vendor', 'master\master_vendorController@update_vendor');
Route::get('/master/dataeditvendor/dataedit_vendor', 'master\master_vendorController@dataedit_vendor');
Route::get('/master/datatalble_vendor/datatalble_vendor', 'master\master_vendorController@datatalble_vendor')->name('datatalble_vendor');
Route::get('/master/vendor/edit_vendor', 'MasterController@edit_vendor');

//master marketing
Route::get('/quotation/marketing/marketing', 'master\master_marketingController@marketing');
Route::get('/quotation/simpanmarketing/simpan_marketing', 'master\master_marketingController@simpan_marketing');
Route::get('/quotation/simpanmarketing/kode_marketing', 'master\master_marketingController@kode_marketing')->name('kode_marketing');
Route::get('/quotation/hapusmarketing/hapus_marketing', 'master\master_marketingController@hapus_marketing');
Route::get('/quotation/updatemarketing/update_marketing', 'master\master_marketingController@update_marketing');
Route::get('/quotation/dataeditmarketing/dataedit_marketing', 'master\master_marketingController@dataedit_marketing');
Route::get('/quotation/datatalble_marketing/datatalble_marketing', 'master\master_marketingController@datatalble_marketing')->name('datatalble_marketing');

//master customer
Route::get('/master/customer/cust', 'master\master_customerController@customer');
Route::get('/master/simpancustomer/simpan_customer', 'master\master_customerController@simpan_customer');
Route::get('/master/hapuscustomer/hapus_customer', 'master\master_customerController@hapus_customer');
Route::get('/master/updatecustomer/update_customer', 'master\master_customerController@update_customer');
Route::get('/master/dataeditcustomer/dataedit_customer', 'master\master_customerController@dataedit_customer');
Route::get('/master/datatalble_customer/datatalble_customer', 'master\master_customerController@datatalble_customer')->name('datatalble_customer');

//master Npenawaran
Route::get('/quotation/n_penawaran/n_penawaran', 'master\master_NpenawaranController@n_penawaran');
Route::get('/quotation/hapusNpenawaran/hapus_Npenawaran', 'master\master_NpenawaranController@hapus_Npenawaran');
Route::get('/quotation/updateNpenawaran/update_Npenawaran', 'master\master_NpenawaranController@update_Npenawaran');
Route::get('/quotation/n_penawaran/simpan_n_penawaran', 'master\master_NpenawaranController@simpan_Npenawaran');
Route::get('/quotation/dataeditNpenawaran/dataedit_Npenawaran', 'master\master_NpenawaranController@dataedit_Npenawaran');
Route::get('/quotation/datatable_Npenawaran/datatable_Npenawaran', 'master\master_NpenawaranController@datatable_Npenawaran')->name('datatable_Npenawaran');

//master pegawai
Route::get('/master/pegawai/pegawai', 'master\master_pegawaiController@pegawai');
Route::get('/master/pegawai/kode_pegawai', 'master\master_pegawaiController@kode_pegawai')->name('kode_pegawai');
Route::get('/master/simpanpegawai/simpan_pegawai', 'master\master_pegawaiController@simpan_pegawai');
Route::get('/master/hapuspegawai/hapus_pegawai', 'master\master_pegawaiController@hapus_pegawai');
Route::get('/master/updatepegawai/update_pegawai', 'master\master_pegawaiController@update_pegawai');
Route::get('/master/dataeditpegawai/dataedit_pegawai', 'master\master_pegawaiController@dataedit_pegawai');
Route::get('/master/datatalble_pegawai/datatalble_pegawai', 'master\master_pegawaiController@datatalble_pegawai')->name('datatable_pegawai');

//master Bundle Item/barang
Route::get('/master/bundle/bundle', 'master\master_bundleitemController@bundleitem')->name('bundleitem');
Route::get('/master/bundle/cari_item', 'master\master_bundleitemController@cari_item');
Route::get('/master/hapusbundleitem/hapus_bundleitem', 'master\master_bundleitemController@hapus_bundleitem')->name('hapus_bundleitem');
Route::get('/master/detailbundleitem/detail_bundleitem', 'master\master_bundleitemController@detail_bundleitem')->name('detail_bundleitem');
Route::get('/master/bundleitem/update_bundleitem', 'master\master_bundleitemController@update_bundleitem');
Route::get('/master/bundleitem/simpan_bundleitem', 'master\master_bundleitemController@simpan_bundleitem');
// Route::get('/master/dataeditbundleitem/dataedit_bundleitem', 'master\master_bundleitemController@dataedit_bundleitem')->name('dataedit_bundleitem');
Route::get('/master/datatable_bundleitem/datatable_bundleitem', 'master\master_bundleitemController@datatable_bundleitem')->name('datatable_bundleitem');
Route::get('/master/bundle/edit_bundle/{id}', 'master\master_bundleitemController@edit_bundle')->name('edit_bundle');

// MASTER CURRENCY
Route::get('/master/currency/index', 'master\currency_controller@index');
Route::get('/master/currency/auto_complete', 'master\currency_controller@auto_complete');
Route::get('/master/currency/save', 'master\currency_controller@save');
Route::get('/master/currency/datatable_currency', 'master\currency_controller@datatable_currency')->name('datatable_currency');
Route::get('/master/currency/edit_detail', 'master\currency_controller@edit_detail');


// ------------------------------ view edit bundle ari -------------------------------------------//
//------------------------------------------------------------------------------------------------//

// Edit Purchase Order
// Route::get('purchase/purchaseorder/edit_purchaseorder', 'PurchaseController@edit_purchaseorder');

// Edit Request Order
// Route::get('purchase/rencanapembelian/edit_rencanapembelian', 'PurchaseController@edit_rencanapembelian');
// Route::get('purchase/rencanapembelian/edit_rencanapembelian', 'PurchaseController@edit_rencanapembelian');

// Master Barang
Route::post('/master/barang/barangproses', 'MasterBarang\BarangController@barangproses');
Route::get('/master/barang/datatablebarang', 'MasterBarang\BarangController@datatable_barang')->name('datatable_barang');
Route::get('/master/barang/barang_edit', 'MasterBarang\BarangController@barang_edit');
Route::get('/master/barang/baranghapus', 'MasterBarang\BarangController@baranghapus');
Route::get('storage/uploads/barang/thumbnail')->name('barang_thumbnail');
Route::post('/master/barang/barang_update', 'MasterBarang\BarangController@barang_update');
Route::get('/master/barang/barang_update', 'MasterBarang\BarangController@barang_update');
Route::get('/master/barang/caribarang', 'MasterBarang\BarangController@caribarang');


        /* ,,,;''  :: ;,      ,,,;;;;;'''         ,;' ;;
          '''::    ::  '        '; ': ;'        ,::' ;;,,,,,,,,
         ,,,,;;,,,,;;,,,,   ,;'''''''''''';'  ;;':: ;;'  :: ,;'
             ::    ::        ,;';; ';, ';,,      ::   ,, :: .
             ::,;  :: ,;     ;' ';;;;;;' ';      ::   :: :: ':.
          .,;::'    :;;'         ,;,,,,,         ::  ;'  ::  ';
          '  ::   ,;;:. .       ''';,;'          ::      ::
            ';;  '   ``;'       .;;' ';;.        ;;     ';;*/

//--------------PURCHASE -----------deny------------\\

//request order
Route::get('/purchase/rencanapembelian/rencanapembelian', 'purchase\request_orderController@rencanapembelian')->name('rencanapembelian');
Route::get('/purchase/rencanapembelian/kode_rencanapembelian', 'purchase\request_orderController@kode_rencanapembelian')->name('kode_rencanapembelian');
Route::get('/purchase/rencanapembelian/detail_rencanapembelian', 'purchase\request_orderController@detail_rencanapembelian')->name('detail_rencanapembelian');
Route::get('/purchase/rencanapembelian/hapus_rencanapembelian', 'purchase\request_orderController@hapus_rencanapembelian')->name('hapus_rencanapembelian');
Route::get('/purchase/rencanapembelian/detail_rencanapembelian', 'purchase\request_orderController@detail_rencanapembelian')->name('detail_rencanapembelian');
Route::get('/purchase/rencanapembelian/edit_rencanapembelian', 'purchase\request_orderController@edit_rencanapembelian')->name('edit_rencanapembelian');
Route::get('/purchase/rencanapembelian/update_rencanapembelian', 'purchase\request_orderController@update_rencanapembelian')->name('update_rencanapembelian');
Route::get('/purchase/rencanapembelian/approve_rencanapembelian', 'purchase\request_orderController@approve_rencanapembelian')->name('approve_rencanapembelian');
Route::get('/purchase/rencanapembelian/simpan_rencanapembelian', 'purchase\request_orderController@simpan_rencanapembelian')->name('simpan_rencanapembelian');
Route::get('/purchase/rencanapembelian/dataedit_rencanapembelian', 'purchase\request_orderController@dataedit_rencanapembelian')->name('dataedit_rencanapembelian');
Route::get('/purchase/rencanapembelian/datatable_rencanapembelian', 'purchase\request_orderController@datatable_rencanapembelian')->name('datatable_rencanapembelian');
Route::get('/purchase/rencanapembelian/datatable_historypembelian', 'purchase\request_orderController@datatable_historypembelian')->name('datatable_historypembelian');

//Purchase Order
Route::get('/purchase/purchaseorder/purchaseorder', 'purchase\purchase_orderController@purchaseorder')->name('purchaseorder');
Route::get('/purchase/purchaseorder/validation', 'purchase\purchase_orderController@validation');
Route::get('/purchase/purchaseorder/update', 'purchase\purchase_orderController@update');
Route::get('/purchase/purchaseorder/cari_ro_purchaseorder', 'purchase\purchase_orderController@cari_ro_purchaseorder')->name('cari_ro_purchaseorder');
Route::get('/purchase/purchaseorder/cari_po_purchaseorder', 'purchase\purchase_orderController@cari_po_purchaseorder')->name('cari_po_purchaseorder');
Route::get('/purchase/purchaseorder/create_purchaseorder', 'purchase\purchase_orderController@create_purchaseorder')->name('create_purchaseorder');
Route::get('/purchase/purchaseorder/datatable_purchaseorder', 'purchase\purchase_orderController@datatable_purchaseorder')->name('datatable_purchaseorder');
Route::get('/purchase/purchaseorder/save_purchaseorder', 'purchase\purchase_orderController@save_purchaseorder')->name('save_purchaseorder');
Route::get('/purchase/purchaseorder/hapus_purchaseorder', 'purchase\purchase_orderController@hapus_purchaseorder')->name('hapus_purchaseorder');
Route::get('/purchase/purchaseorder/detail_purchaseorder', 'purchase\purchase_orderController@detail_purchaseorder')->name('detail_purchaseorder');
Route::get('/purchase/purchaseorder/print_purchaseorder', 'purchase\purchase_orderController@print_purchaseorder')->name('print_purchaseorder');
Route::get('/purchase/purchaseorder/edit_purchaseorder', 'purchase\purchase_orderController@edit_purchaseorder')->name('edit_purchaseorder');

 //-----------------END OF PURCHASE------------------\\


//--------INVENTORY-DENY-------\\

//penerimaan barang
Route::get('inventory/penerimaan_barang/penerimaan_barang', 'inventory\penerimaan_barangController@penerimaan_barang')->name('penerimaan_barang');
Route::get('inventory/penerimaan_barang/datatable_penerimaan_barang', 'inventory\penerimaan_barangController@datatable_penerimaan_barang')->name('datatable_penerimaan_barang');
Route::get('inventory/penerimaan_barang/create_penerimaan_barang', 'inventory\penerimaan_barangController@create_penerimaan_barang')->name('create_penerimaan_barang');
Route::get('inventory/penerimaan_barang/cari_penerimaan_barang', 'inventory\penerimaan_barangController@cari_penerimaan_barang')->name('cari_penerimaan_barang');
Route::get('inventory/penerimaan_barang/save_penerimaan_barang', 'inventory\penerimaan_barangController@save_penerimaan_barang')->name('save_penerimaan_barang');
Route::get('inventory/penerimaan_barang/edit_penerimaan_barang', 'inventory\penerimaan_barangController@edit_penerimaan_barang')->name('edit_penerimaan_barang');
Route::get('inventory/penerimaan_barang/update_penerimaan_barang', 'inventory\penerimaan_barangController@update_penerimaan_barang')->name('update_penerimaan_barang');
Route::get('inventory/penerimaan_barang/hapus_penerimaan_barang', 'inventory\penerimaan_barangController@hapus_penerimaan_barang')->name('hapus_penerimaan_barang');

//Stock Gudang
Route::get('inventory/stockgudang/stockgudang', 'inventory\stock_gudangController@stockgudang')->name('stockgudang');
Route::get('inventory/stockgudang/datatable_stockgudang', 'inventory\stock_gudangController@datatable_stockgudang')->name('datatable_stockgudang');
Route::get('inventory/stockgudang/detail_stockgudang', 'inventory\stock_gudangController@detail_stockgudang')->name('detail_stockgudang');

//Stock Opname
Route::get('inventory/opname/opname', 'inventory\stock_opnameController@stockopname')->name('stockopname');
Route::get('inventory/opname/detail', 'inventory\stock_opnameController@detail');
Route::get('inventory/opname/approve', 'inventory\stock_opnameController@approve');
Route::get('inventory/opname/print', 'inventory\stock_opnameController@print_opname')->name('print_opname');
Route::get('inventory/create_opname/create_opname', 'inventory\stock_opnameController@create_stockopname')->name('create_stockopname');
Route::get('inventory/create_opname/cari_stockopname', 'inventory\stock_opnameController@cari_stockopname')->name('cari_stockopname');
Route::get('inventory/create_opname/save_stockopname', 'inventory\stock_opnameController@save_stockopname')->name('save_stockopname');

//Stock Barang
Route::get('inventory/stockbarang/stockbarang', 'inventory\stockbarangController@index')->name('stockbarang');
Route::get('inventory/stockbarang/datatable_stockbarang', 'inventory\stockbarangController@datatable_stockbarang')->name('datatable_stockbarang');
Route::get('inventory/stockbarang/autoitem', 'inventory\stockbarangController@autoitem')->name('autoitem');
Route::get('inventory/stockbarang/simpan', 'inventory\stockbarangController@simpan');
Route::get('inventory/stockbarang/hapus', 'inventory\stockbarangController@hapus');
Route::get('inventory/stockbarang/edit', 'inventory\stockbarangController@edit');
Route::get('inventory/stockbarang/update', 'inventory\stockbarangController@update');

//END OF INVENTORY


// Master Type Barang
Route::get('/master/type/typeproses', 'MasterType\TypeController@typeproses');
Route::get('/master/type/type_edit', 'MasterType\TypeController@type_edit');
Route::get('/master/type/type_hapus', 'MasterType\TypeController@type_hapus');
Route::get('/master/type/type_update', 'MasterType\TypeController@type_update');
Route::get('/master/type/datatable_type', 'MasterType\TypeController@datatable_type')->name('datatable_type');

    //Master jabatan
    Route::get('/master/jabatan/jabatan', 'JabatanController@index');
    Route::get('/master/jabatan/datatable_jabatan', 'JabatanController@datatable_jabatan')->name('datatable_jabatan');
    Route::get('/master/jabatan/simpan', 'JabatanController@simpan');
    Route::get('/master/jabatan/update', 'JabatanController@update');
    Route::get('/master/jabatan/hapus', 'JabatanController@hapus');
    Route::get('/master/jabatan/edit', 'JabatanController@edit');

    // //Payroll
    Route::get('/hrd/payroll/datatable_payroll', 'payrollController@datatable_payroll')->name('datatable_payroll');
    Route::get('/hrd/payroll/simpan_payroll', 'payrollController@simpan_payroll')->name('simpan_payroll');
    Route::get('/hrd/payroll/hapus_payroll', 'payrollController@hapus_payroll')->name('hapus_payroll');
    Route::get('/hrd/payroll/edit_payroll', 'payrollController@edit_payroll')->name('edit_payroll');
    Route::get('/hrd/payroll/update_payroll', 'payrollController@update_payroll')->name('update_payroll');

    // //Payroll Manajemen
    // Route::get('/hrd/payroll/payrollman/simpan', 'HRDController@payroll_manajemen_simpan')->name('payroll_manajemen_simpan');
    // Route::get('/hrd/payroll/payrollman/getdivisi', 'HRDController@payroll_manajemen_getdivisi');
    // Route::get('/hrd/payroll/payrollman/getjabatan', 'HRDController@payroll_manajemen_getjabatan');
    // Route::get('/hrd/payroll/payrollman/proses', 'HRDController@payroll_manajemen_proses');
    // Route::get('/hrd/payroll/payrollman/datatable', 'HRDController@payroll_manajemen_datatable');
    // Route::get('/hrd/payroll/payrollman/hapus', 'HRDController@payroll_manajemen_hapus');
    // Route::get('/hrd/payroll/payrollman/detail', 'HRDController@payroll_manajemen_detail');

    //Master percent
    Route::get('/master/percent/index', 'percentController@index');
    Route::get('/master/percent/datatable_percent', 'percentController@datatable_percent');
    Route::get('/master/percent/aktif', 'percentController@aktif');
    Route::get('/master/percent/nonaktif', 'percentController@nonaktif');
    Route::get('/master/percent/simpan', 'percentController@simpan');

    //Master kpi
    Route::get('/master/kpi/index', 'master\KpiController@index');
    Route::get('/master/kpi/datatable-index', 'master\KpiController@getDatatableKpi');
    Route::get('/master/kpi/tambah-kpi', 'master\KpiController@tambahKpi');
    Route::get('/master/kpi/delete-kpi', 'master\KpiController@deleteKpi');
    Route::post('/master/kpi/delete-kpi', 'master\KpiController@deleteKpi');
    Route::get('/master/kpi/simpan-kpi', 'master\KpiController@simpanKpi');
    Route::POST('/master/kpi/simpan-kpi', 'master\KpiController@simpanKpi');
    Route::get('/master/kpi/edit-kpi', 'master\KpiController@editKpi');
    Route::get('/master/kpi/update-kpi', 'master\KpiController@updateKpi');
    Route::post('/master/kpi/update-kpi', 'master\KpiController@updateKpi');
    Route::get('/master/kpi/lookup-data-divisi', 'master\KpiController@lookup_divisi');
    Route::get('/master/kpi/lookup-data-jabatan', 'master\KpiController@lookup_jabatan');
    Route::get('/master/kpi/lookup-data-pegawai', 'master\KpiController@lookup_pegawai');

    //Master Scoreboard
    Route::get('/master/scoreboard/index', 'master\ScoreController@index');
    Route::get('/master/scoreboard/datatable-index', 'master\ScoreController@get_datatable_index');
    Route::post('/master/scoreboard/delete-score', 'master\ScoreController@delete_score');
    Route::get('/master/scoreboard/edit-score', 'master\ScoreController@edit_score');
    Route::post('/master/scoreboard/update-score', 'master\ScoreController@update_score');
    Route::get('/master/scoreboard/tambah-score', 'master\ScoreController@tambah_score');
    Route::post('/master/scoreboard/simpan-score', 'master\ScoreController@simpan_score');

    //Absensi
    Route::post('/hrd/absensi/importbulan', 'HRDController@importbulan');
    Route::post('/hrd/absensi/kartushift', 'HRDController@kartushift');
    Route::get('/hrd/absensi/kartushift', 'HRDController@kartushift');
    Route::post('/hrd/absensi/rekap', 'HRDController@rekap');
    Route::get('/hrd/absensi/tahun', 'HRDController@tahun');
    Route::post('/hrd/absensi/tahun', 'HRDController@tahun');
    Route::get('/hrd/absensi/kstable', 'HRDController@kstable');
    Route::get('/hrd/absensi/abtable', 'HRDController@abtable');
    Route::get('/hrd/absensi/artable', 'HRDController@artable');
    Route::get('/hrd/absensi/attable', 'HRDController@attable');

    //Payroll
    Route::post('/hrd/payroll/managerial', 'HRDController@managerial');
    Route::get('/hrd/payroll/managerial', 'HRDController@managerial');
    Route::post('/hrd/payroll/staff', 'HRDController@staff');
    Route::get('/hrd/payroll/staff', 'HRDController@staff');
    Route::get('/hrd/payroll/managerialtable', 'HRDController@managerialtable');
    Route::get('/hrd/absensi/stafftable', 'HRDController@stafftable');

    //Score Board Pegawai
    Route::get('/hrd/scoreboard_pegawai/scoreboard_pegawai/datatable/{tgl1}/{tgl2}', 'DkpiController@getKpiByTgl');
    Route::get('/hrd/scoreboard_pegawai/scoreboard_pegawai/set-field-modal', 'DkpiController@setFieldModal');
    Route::post('/hrd/scoreboard_pegawai/scoreboard_pegawai/simpan-data', 'DkpiController@simpanData');
    Route::get('/hrd/scoreboard_pegawai/scoreboard_pegawai/get-edit/{id}', 'DkpiController@getDataEdit');
    Route::post('/hrd/scoreboard_pegawai/scoreboard_pegawai/update-data', 'DkpiController@updateData');
    Route::post('/hrd/scoreboard_pegawai/scoreboard_pegawai/delete-data', 'DkpiController@deleteData');

    //Management Score Board
    Route::get('/hrd/manajemen_scoreboard/manajemen_scoreboard/get-kpi-by-tgl/{tgl1}/{tgl2}/{tampil}', 'MankpiController@getKpiByTgl');
    Route::get('/hrd/manajemen_scoreboard/manajemen_scoreboard/get-edit/{id}', 'MankpiController@getDataEdit');
    Route::post('/hrd/manajemen_scoreboard/manajemen_scoreboard/update-data', 'MankpiController@updateData');
    Route::post('/hrd/manajemen_scoreboard/manajemen_scoreboard/ubah-status', 'MankpiController@ubahStatus');

    //Data KPI
    Route::get('/hrd/data_kpi/data_kpi/tambah-data', 'DkpixController@tambahData');
    Route::get('/hrd/data_kpi/data_kpi/lookup-data-jabatan', 'DkpixController@lookupJabatan');
    Route::get('/hrd/data_kpi/data_kpi/lookup-data-pegawai', 'DkpixController@lookupPegawai');
    Route::get('/hrd/data_kpi/data_kpi/set-field-modal/{id}', 'DkpixController@setFieldModal');
    Route::post('/hrd/data_kpi/data_kpi/simpan-data', 'DkpixController@simpanData');
    Route::get('/hrd/data_kpi/data_kpi/get-kpi-by-tgl/{tgl1}/{tgl2}', 'DkpixController@getKpixByTgl');
    Route::get('/hrd/data_kpi/data_kpi/get-edit/{id}', 'DkpixController@getDataEdit');
    Route::post('/hrd/data_kpi/data_kpi/update-data', 'DkpixController@updateData');
    Route::post('/hrd/data_kpi/data_kpi/delete-data', 'DkpixController@deleteData');

    //Scoreboard & KPI
    Route::get('/hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi/get-kpi-by-tgl/{tgl1}/{tgl2}/{tampil}', 'ManscorekpiController@getKpiByTgl');
    Route::get('/hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi/get-edit/{id}', 'ManscorekpiController@getDataEdit');
    Route::post('/hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi/update-data', 'ManscorekpiController@updateData');
    Route::post('/hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi/ubah-status', 'ManscorekpiController@ubahStatus');
    Route::get('/hrd/manajemen_scoreboard_kpi/manajemen_scoreboard_kpi/get-score-by-tgl/{tgl1}/{tgl2}/{tampil}', 'ManscorekpiController@getScoreByTgl');
    Route::get('/hrd/manscorekpi/print_kpi/{id}', 'ManscorekpiController@print_pki');


    //Lock Screen
    Route::get('/error-404', 'lockscreenController@error404');
    Route::get('/lockscreen', 'lockscreenController@lockscreen');
    Route::get('/lockscreen/unlock', 'lockscreenController@unlock');
    Route::post('/lockscreen/unlock', 'lockscreenController@unlock');

    //Log
    Route::get('/getlog', 'logController@getlog');
    Route::get('/clearlog', 'logController@clearlog');

    //Master Print Out Term & Condition
    Route::get('/master/printout/index', 'printoutController@index');
    Route::get('/master/printout/datatable_print', 'printoutController@datatable_print');
    Route::get('/master/printout/simpan', 'printoutController@simpan');
    Route::get('/master/printout/hapus', 'printoutController@hapus');
    Route::get('/master/printout/edit', 'printoutController@edit');

    // Route Keuangan Dirga

        // periode keuangan

            Route::post('modul/keuangan/periode/store', 'modul_keuangan\master\periode_keuangan\periode_keuangan_controller@save')->name('modul_keuangan.periode.save');

        // periode keuangan selesai


        // klasifikasi akun

                Route::get('setting/modul/keuangan/setting/klasifikasi-akun', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@index'
                ])->name('setting.klasifikasi_akun.index');

                Route::get('modul/keuangan/setting/klasifikasi-akun/form-resource', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@form_resource'
                ])->name('setting.klasifikasi_akun.form_resource');

                Route::post('modul/keuangan/setting/klasifikasi-akun/save/level_1', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@simpan_level_1'
                ])->name('setting.klasifikasi_akun.simpan.level_1');

                Route::post('modul/keuangan/setting/klasifikasi-akun/save/level_2', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@simpan_level_2'
                ])->name('setting.klasifikasi_akun.simpan.level_2');

                Route::post('modul/keuangan/setting/klasifikasi-akun/delete/level_2', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@hapus_level_2'
                ])->name('setting.klasifikasi_akun.hapus.level_2');

                Route::post('modul/keuangan/setting/klasifikasi-akun/save/subclass', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@simpan_subclass'
                ])->name('setting.klasifikasi_akun.simpan.subclass');

                Route::post('modul/keuangan/setting/klasifikasi-akun/delete/subclass', [
                    "uses"  => 'modul_keuangan\setting\klasifikasi_akun\klasifikasi_akun_controller@hapus_level_subclass'
                ])->name('setting.klasifikasi_akun.hapus.subclass');

        // klasifikasi akun


        // klasifikasi akun

                Route::get('setting/modul/keuangan/setting/akun-penting', [
                    "uses"  => 'modul_keuangan\setting\akun_penting\akun_penting_controller@index'
                ])->name('setting.akun_penting.index');

                Route::get('modul/keuangan/setting/akun-penting/form-resource', [
                    "uses"  => 'modul_keuangan\setting\akun_penting\akun_penting_controller@form_resource'
                ])->name('setting.akun_penting.form_resource');

                Route::post('modul/keuangan/setting/akun-penting/store', [
                    "uses"  => 'modul_keuangan\setting\akun_penting\akun_penting_controller@store'
                ])->name('setting.akun_penting.store');

        // klasifikasi akun


        // Master Data Group Akun

            Route::get('modul/keuangan/master/group-akun', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@index'
            ])->name('grup-akun.index');

            Route::get('modul/keuangan/master/group-akun/create', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@create'
            ])->name('grup-akun.create');

            Route::get('modul/keuangan/master/group-akun/datatable', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@datatable'
            ])->name('grup-akun.datatable');

            Route::get('modul/keuangan/master/group-akun/form_resource', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@form_resource'
            ])->name('grup-akun.form_resource');

            Route::post('modul/keuangan/master/group-akun/store', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@store'
            ])->name('grup-akun.store');

            Route::post('modul/keuangan/master/group-akun/update', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@update'
            ])->name('grup-akun.update');

            Route::post('modul/keuangan/master/group-akun/delete', [
                "uses"  => 'modul_keuangan\master\group_akun\group_akun_controller@delete'
            ])->name('grup-akun.delete');

        //  Group Akun End


        // Master Data Akun

            Route::get('master/modul/keuangan/master/akun', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@index'
            ])->name('akun.index');

            Route::get('modul/keuangan/master/akun/create', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@create'
            ])->name('akun.create');

            Route::get('modul/keuangan/master/akun/create/form-resource', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@form_resource'
            ])->name('akun.form_resource');

            Route::post('modul/keuangan/master/akun/store', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@store'
            ])->name('akun.store');

            Route::get('modul/keuangan/master/akun/datatable', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@datatable'
            ])->name('akun.datatable');

            Route::post('modul/keuangan/master/akun/update', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@update'
            ])->name('akun.update');

            Route::post('modul/keuangan/master/akun/delete', [
                "uses"  => 'modul_keuangan\master\akun\akun_controller@delete'
            ])->name('akun.delete');

        // Data Akun Selesai


        // Master Data Akun Cabang

            Route::get('modul/keuangan/master/akun-cabang', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@index'
            ])->name('akun.cabang.index');

            Route::get('modul/keuangan/master/akun-cabang/create', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@create'
            ])->name('akun.cabang.create');

            Route::get('modul/keuangan/master/akun-cabang/create/form-resource', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@form_resource'
            ])->name('akun.cabang.form_resource');

            Route::post('modul/keuangan/master/akun-cabang/store', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@store'
            ])->name('akun.cabang.store');

            Route::get('modul/keuangan/master/akun-cabang/datatable', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@datatable'
            ])->name('akun.cabang.datatable');

            Route::post('modul/keuangan/master/akun-cabang/update', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@update'
            ])->name('akun.cabang.update');

            Route::post('modul/keuangan/master/akun-cabang/delete', [
                "uses"  => 'modul_keuangan\master\akun_cabang\akun_cabang_controller@delete'
            ])->name('akun.cabang.delete');

        // Data Akun Cabang Selesai


        // Master Data Transaksi

            Route::get('modul/keuangan/master/transaksi', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@index'
            ])->name('transaksi.index');

            Route::get('modul/keuangan/master/transaksi/create', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@create'
            ])->name('transaksi.create');

            Route::get('modul/keuangan/master/transaksi/create/form-resource', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@form_resource'
            ])->name('transaksi.form_resource');

            Route::post('modul/keuangan/master/transaksi/store', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@store'
            ])->name('transaksi.store');

            Route::get('modul/keuangan/master/transaksi/datatable', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@datatable'
            ])->name('transaksi.datatable');

            Route::post('modul/keuangan/master/transaksi/update', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@update'
            ])->name('transaksi.update');

            Route::post('modul/keuangan/master/transaksi/delete', [
                "uses"  => 'modul_keuangan\master\transaksi\transaksi_controller@delete'
            ])->name('transaksi.delete');

        // Data Transaksi Selesai


        // Golongan Aset

            Route::get('modul/keuangan/manajemen-aset/group-aset', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@index'
            ])->name('group.aset.index');

            Route::get('modul/keuangan/manajemen-aset/group-aset/create', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@create'
            ])->name('group.aset.create');

            Route::get('modul/keuangan/manajemen-aset/group-aset/form_resource', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@form_resource'
            ])->name('group.aset.form_resource');

            Route::post('modul/keuangan/manajemen-aset/group-aset/store', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@store'
            ])->name('group.aset.store');

            Route::get('modul/keuangan/manajemen-aset/group-aset/datatable', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@datatable'
            ])->name('group.aset.datatable');

            Route::post('modul/keuangan/manajemen-aset/group-aset/update', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@update'
            ])->name('group.aset.update');

            Route::post('modul/keuangan/manajemen-aset/group-aset/delete', [
                "uses"  => 'modul_keuangan\aset\group\group_aset_controller@delete'
            ])->name('group.aset.delete');

        // Golongan Aset


        // Aset

            Route::get('modul/keuangan/manajemen-aset/aset', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@index'
            ])->name('aset.index');

            Route::get('modul/keuangan/manajemen-aset/aset/create', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@create'
            ])->name('aset.create');

            Route::get('modul/keuangan/manajemen-aset/aset/form_resource', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@form_resource'
            ])->name('aset.form_resource');

            Route::post('modul/keuangan/manajemen-aset/aset/store', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@store'
            ])->name('aset.store');

            Route::get('modul/keuangan/manajemen-aset/aset/datatable', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@datatable'
            ])->name('aset.datatable');

            Route::post('modul/keuangan/manajemen-aset/aset/update', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@update'
            ])->name('aset.update');

            Route::post('modul/keuangan/manajemen-aset/aset/delete', [
                "uses"  => 'modul_keuangan\aset\aset\aset_controller@delete'
            ])->name('aset.delete');

        // Aset


        // Transaksi Kas

            Route::get('modul/keuangan/transaksi/kas', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@index'
            ])->name('transaksi.kas.index');

            Route::get('modul/keuangan/transaksi/kas/form-resource', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@form_resource'
            ])->name('transaksi.kas.form_resource');

            Route::post('modul/keuangan/transaksi/kas/store', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@store'
            ])->name('transaksi.kas.store');

            Route::get('modul/keuangan/transaksi/kas/datatable', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@datatable'
            ])->name('transaksi.kas.datatable');

            Route::post('modul/keuangan/transaksi/kas/update', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@update'
            ])->name('transaksi.kas.update');

            Route::post('modul/keuangan/transaksi/kas/delete', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@delete'
            ])->name('transaksi.kas.delete');

            Route::get('modul/keuangan/transaksi/kas/get-nota', [
                "uses"  => 'modul_keuangan\transaksi\kas\transaksi_kas_controller@getNota'
            ])->name('transaksi.kas.nota');

        // Transaksi Kas Selesai


        // Transaksi Bank

            Route::get('modul/keuangan/transaksi/bank', [
                "uses"  => 'modul_keuangan\transaksi\bank\transaksi_bank_controller@index'
            ])->name('transaksi.bank.index');

            Route::get('modul/keuangan/transaksi/bank/form-resource', [
                "uses"  => 'modul_keuangan\transaksi\bank\transaksi_bank_controller@form_resource'
            ])->name('transaksi.bank.form_resource');

            Route::post('modul/keuangan/transaksi/bank/store', [
                "uses"  => 'modul_keuangan\transaksi\bank\transaksi_bank_controller@store'
            ])->name('transaksi.bank.store');

            Route::get('modul/keuangan/transaksi/bank/datatable', [
                "uses"  => 'modul_keuangan\transaksi\bank\transaksi_bank_controller@datatable'
            ])->name('transaksi.bank.datatable');

            Route::post('modul/keuangan/transaksi/bank/update', [
                "uses"  => 'modul_keuangan\transaksi\bank\transaksi_bank_controller@update'
            ])->name('transaksi.bank.update');

            Route::post('modul/keuangan/transaksi/bank/delete', [
                "uses"  => 'modul_keuangan\transaksi\bank\transaksi_bank_controller@delete'
            ])->name('transaksi.bank.delete');

        // Transaksi Bank Selesai


        // Transaksi Memorial

            Route::get('modul/keuangan/transaksi/memorial', [
                "uses"  => 'modul_keuangan\transaksi\memorial\transaksi_memorial_controller@index'
            ])->name('transaksi.memorial.index');

            Route::get('modul/keuangan/transaksi/memorial/form-resource', [
                "uses"  => 'modul_keuangan\transaksi\memorial\transaksi_memorial_controller@form_resource'
            ])->name('transaksi.memorial.form_resource');

            Route::post('modul/keuangan/transaksi/memorial/store', [
                "uses"  => 'modul_keuangan\transaksi\memorial\transaksi_memorial_controller@store'
            ])->name('transaksi.memorial.store');

            Route::get('modul/keuangan/transaksi/memorial/datatable', [
                "uses"  => 'modul_keuangan\transaksi\memorial\transaksi_memorial_controller@datatable'
            ])->name('transaksi.memorial.datatable');

            Route::post('modul/keuangan/transaksi/memorial/update', [
                "uses"  => 'modul_keuangan\transaksi\memorial\transaksi_memorial_controller@update'
            ])->name('transaksi.memorial.update');

            Route::post('modul/keuangan/transaksi/memorial/delete', [
                "uses"  => 'modul_keuangan\transaksi\memorial\transaksi_memorial_controller@delete'
            ])->name('transaksi.memorial.delete');

        // Transaksi Memorial Selesai


        // Penerimaan Piutang

            Route::get('modul/keuangan/transaksi/penerimaan_piutang', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@index'
            ])->name('transaksi.penerimaan_piutang.index');

            Route::get('modul/keuangan/transaksi/penerimaan_piutang/form-resource', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@form_resource'
            ])->name('transaksi.penerimaan_piutang.form_resource');

            Route::post('modul/keuangan/transaksi/penerimaan_piutang/store', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@store'
            ])->name('transaksi.penerimaan_piutang.store');

            Route::get('modul/keuangan/transaksi/penerimaan_piutang/datatable', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@datatable'
            ])->name('transaksi.penerimaan_piutang.datatable');

            Route::get('modul/keuangan/transaksi/penerimaan_piutang/get/nota', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@get_nota'
            ])->name('transaksi.penerimaan_piutang.get_nota');

            Route::post('modul/keuangan/transaksi/penerimaan_piutang/update', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@update'
            ])->name('transaksi.penerimaan_piutang.update');

            Route::post('modul/keuangan/transaksi/penerimaan_piutang/delete', [
                "uses"  => 'modul_keuangan\transaksi\penerimaan_piutang\penerimaan_piutang_controller@delete'
            ])->name('transaksi.penerimaan_piutang.delete');

        // Penerimaan Piutang


        // Pelunasan Hutang

            Route::get('modul/keuangan/transaksi/pelunasan_hutang', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@index'
            ])->name('transaksi.pelunasan_hutang.index');

            Route::get('modul/keuangan/transaksi/pelunasan_hutang/form-resource', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@form_resource'
            ])->name('transaksi.pelunasan_hutang.form_resource');

            Route::post('modul/keuangan/transaksi/pelunasan_hutang/store', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@store'
            ])->name('transaksi.pelunasan_hutang.store');

            Route::get('modul/keuangan/transaksi/pelunasan_hutang/datatable', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@datatable'
            ])->name('transaksi.pelunasan_hutang.datatable');

            Route::get('modul/keuangan/transaksi/pelunasan_hutang/get/nota', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@get_nota'
            ])->name('transaksi.pelunasan_hutang.get_nota');

            Route::post('modul/keuangan/transaksi/pelunasan_hutang/update', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@update'
            ])->name('transaksi.pelunasan_hutang.update');

            Route::post('modul/keuangan/transaksi/pelunasan_hutang/delete', [
                "uses"  => 'modul_keuangan\transaksi\pelunasan_hutang\pelunasan_hutang_controller@delete'
            ])->name('transaksi.pelunasan_hutang.delete');

        // Pelunasan Hutang


        // Laporan Keuangan

            // Route::get('modul/keuangan/laporan', function(){
            //     return view('modul_keuangan.laporan.index');
            // })->name('laporan.keuangan.index');


            // laporan Jurnal Umum
                Route::get('modul/keuangan/laporan/jurnal_umum', [
                    'uses'  => 'modul_keuangan\laporan\jurnal\laporan_jurnal_controller@index'
                ])->name('laporan.keuangan.jurnal_umum');

                Route::get('modul/keuangan/laporan/jurnal_umum/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\jurnal\laporan_jurnal_controller@dataResource'
                ])->name('laporan.keuangan.jurnal_umum.data_resource');

                Route::get('modul/keuangan/laporan/jurnal_umum/print', [
                    'uses'  => 'modul_keuangan\laporan\jurnal\laporan_jurnal_controller@print'
                ])->name('laporan.keuangan.jurnal_umum.print');

                Route::get('modul/keuangan/laporan/jurnal_umum/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\jurnal\laporan_jurnal_controller@excel'
                ])->name('laporan.keuangan.jurnal_umum.print.excel');

                Route::get('modul/keuangan/laporan/jurnal_umum/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\jurnal\laporan_jurnal_controller@pdf'
                ])->name('laporan.keuangan.jurnal_umum.print.pdf');


            // laporan Buku Besar
                Route::get('modul/keuangan/laporan/buku_besar', [
                    'uses'  => 'modul_keuangan\laporan\buku_besar\laporan_buku_besar_controller@index'
                ])->name('laporan.keuangan.buku_besar');

                Route::get('modul/keuangan/laporan/buku_besar/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\buku_besar\laporan_buku_besar_controller@dataResource'
                ])->name('laporan.keuangan.buku_besar.data_resource');

                Route::get('modul/keuangan/laporan/buku_besar/print', [
                    'uses'  => 'modul_keuangan\laporan\buku_besar\laporan_buku_besar_controller@print'
                ])->name('laporan.keuangan.buku_besar.print');

                Route::get('modul/keuangan/laporan/buku_besar/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\buku_besar\laporan_buku_besar_controller@pdf'
                ])->name('laporan.keuangan.buku_besar.print.pdf');

                Route::get('modul/keuangan/laporan/buku_besar/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\buku_besar\laporan_buku_besar_controller@excel'
                ])->name('laporan.keuangan.buku_besar.print.excel');


            // laporan Neraca Saldo
                Route::get('modul/keuangan/laporan/neraca_saldo', [
                    'uses'  => 'modul_keuangan\laporan\neraca_saldo\laporan_neraca_saldo_controller@index'
                ])->name('laporan.keuangan.neraca_saldo');

                Route::get('modul/keuangan/laporan/neraca_saldo/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\neraca_saldo\laporan_neraca_saldo_controller@dataResource'
                ])->name('laporan.keuangan.neraca_saldo.data_resource');

                Route::get('modul/keuangan/laporan/neraca_saldo/print', [
                    'uses'  => 'modul_keuangan\laporan\neraca_saldo\laporan_neraca_saldo_controller@print'
                ])->name('laporan.keuangan.neraca_saldo.print');

                Route::get('modul/keuangan/laporan/neraca_saldo/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\neraca_saldo\laporan_neraca_saldo_controller@pdf'
                ])->name('laporan.keuangan.neraca_saldo.print.pdf');

                Route::get('modul/keuangan/laporan/neraca_saldo/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\neraca_saldo\laporan_neraca_saldo_controller@excel'
                ])->name('laporan.keuangan.neraca_saldo.print.excel');


            // laporan Neraca
                Route::get('modul/keuangan/laporan/neraca', [
                    'uses'  => 'modul_keuangan\laporan\neraca\laporan_neraca_controller@index'
                ])->name('laporan.keuangan.neraca');

                Route::get('modul/keuangan/laporan/neraca/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\neraca\laporan_neraca_controller@dataResource'
                ])->name('laporan.keuangan.neraca.data_resource');

                Route::get('modul/keuangan/laporan/neraca/print', [
                    'uses'  => 'modul_keuangan\laporan\neraca\laporan_neraca_controller@print'
                ])->name('laporan.keuangan.neraca.print');

                Route::get('modul/keuangan/laporan/neraca/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\neraca\laporan_neraca_controller@pdf'
                ])->name('laporan.keuangan.neraca.print.pdf');

                Route::get('modul/keuangan/laporan/neraca/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\neraca\laporan_neraca_controller@excel'
                ])->name('laporan.keuangan.neraca.print.excel');


            // laporan Neraca Lampiran
                Route::get('modul/keuangan/laporan/neraca-lampiran', [
                    'uses'  => 'modul_keuangan\laporan\neraca_lampiran\laporan_neraca_lampiran_controller@index'
                ])->name('laporan.keuangan.neraca_lampiran');

                Route::get('modul/keuangan/laporan/neraca-lampiran/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\neraca_lampiran\laporan_neraca_lampiran_controller@dataResource'
                ])->name('laporan.keuangan.neraca_lampiran.data_resource');

                Route::get('modul/keuangan/laporan/neraca-lampiran/print', [
                    'uses'  => 'modul_keuangan\laporan\neraca_lampiran\laporan_neraca_lampiran_controller@print'
                ])->name('laporan.keuangan.neraca_lampiran.print');

                Route::get('modul/keuangan/laporan/neraca-lampiran/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\neraca_lampiran\laporan_neraca_lampiran_controller@pdf'
                ])->name('laporan.keuangan.neraca_lampiran.print.pdf');

                Route::get('modul/keuangan/laporan/neraca-lampiran/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\neraca_lampiran\laporan_neraca_lampiran_controller@excel'
                ])->name('laporan.keuangan.neraca_lampiran.print.excel');


            // laporan Laba Rugi
                Route::get('modul/keuangan/laporan/laba_rugi', [
                    'uses'  => 'modul_keuangan\laporan\laba_rugi\laporan_laba_rugi_controller@index'
                ])->name('laporan.keuangan.laba_rugi');

                Route::get('modul/keuangan/laporan/laba_rugi/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\laba_rugi\laporan_laba_rugi_controller@dataResource'
                ])->name('laporan.keuangan.laba_rugi.data_resource');

                Route::get('modul/keuangan/laporan/laba_rugi/print', [
                    'uses'  => 'modul_keuangan\laporan\laba_rugi\laporan_laba_rugi_controller@print'
                ])->name('laporan.keuangan.laba_rugi.print');

                Route::get('modul/keuangan/laporan/laba_rugi/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\laba_rugi\laporan_laba_rugi_controller@pdf'
                ])->name('laporan.keuangan.laba_rugi.print.pdf');

                Route::get('modul/keuangan/laporan/laba_rugi/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\laba_rugi\laporan_laba_rugi_controller@excel'
                ])->name('laporan.keuangan.laba_rugi.print.excel');


            // laporan Arus Kas
                Route::get('modul/keuangan/laporan/arus_kas', [
                    'uses'  => 'modul_keuangan\laporan\arus_kas\laporan_arus_kas_controller@index'
                ])->name('laporan.keuangan.arus_kas');

                Route::get('modul/keuangan/laporan/arus_kas/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\arus_kas\laporan_arus_kas_controller@dataResource'
                ])->name('laporan.keuangan.arus_kas.data_resource');

                Route::get('modul/keuangan/laporan/arus_kas/print', [
                    'uses'  => 'modul_keuangan\laporan\arus_kas\laporan_arus_kas_controller@print'
                ])->name('laporan.keuangan.arus_kas.print');

                Route::get('modul/keuangan/laporan/arus_kas/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\arus_kas\laporan_arus_kas_controller@pdf'
                ])->name('laporan.keuangan.arus_kas.print.pdf');

                Route::get('modul/keuangan/laporan/arus_kas/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\arus_kas\laporan_arus_kas_controller@excel'
                ])->name('laporan.keuangan.arus_kas.print.excel');


            // laporan Hutang
                Route::get('modul/keuangan/laporan/hutang', [
                    'uses'  => 'modul_keuangan\laporan\hutang\laporan_hutang_controller@index'
                ])->name('laporan.keuangan.hutang');

                Route::get('modul/keuangan/laporan/hutang/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\hutang\laporan_hutang_controller@dataResource'
                ])->name('laporan.keuangan.hutang.data_resource');

                Route::get('modul/keuangan/laporan/hutang/print', [
                    'uses'  => 'modul_keuangan\laporan\hutang\laporan_hutang_controller@print'
                ])->name('laporan.keuangan.hutang.print');

                Route::get('modul/keuangan/laporan/hutang/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\hutang\laporan_hutang_controller@pdf'
                ])->name('laporan.keuangan.hutang.print.pdf');

                Route::get('modul/keuangan/laporan/hutang/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\hutang\laporan_hutang_controller@excel'
                ])->name('laporan.keuangan.hutang.print.excel');


            // laporan Piutang
                Route::get('modul/keuangan/laporan/piutang', [
                    'uses'  => 'modul_keuangan\laporan\piutang\laporan_piutang_controller@index'
                ])->name('laporan.keuangan.piutang');

                Route::get('modul/keuangan/laporan/piutang/data_resource', [
                    'uses'  => 'modul_keuangan\laporan\piutang\laporan_piutang_controller@dataResource'
                ])->name('laporan.keuangan.piutang.data_resource');

                Route::get('modul/keuangan/laporan/piutang/print', [
                    'uses'  => 'modul_keuangan\laporan\piutang\laporan_piutang_controller@print'
                ])->name('laporan.keuangan.piutang.print');

                Route::get('modul/keuangan/laporan/piutang/print/pdf', [
                    'uses'  => 'modul_keuangan\laporan\piutang\laporan_piutang_controller@pdf'
                ])->name('laporan.keuangan.piutang.print.pdf');

                Route::get('modul/keuangan/laporan/piutang/print/excel', [
                    'uses'  => 'modul_keuangan\laporan\piutang\laporan_piutang_controller@excel'
                ])->name('laporan.keuangan.piutang.print.excel');

        // laporan Keuangan


        // Analisa Keuangan

                // Analisa Net Profitt OCF
                    Route::get('modul/keuangan/analisa/npo', [
                        'uses'  => 'modul_keuangan\analisa\net_profit_ocf\analisa_net_profit_ocf_controller@index'
                    ])->name('analisa.keuangan.npo');

                    Route::get('modul/keuangan/analisa/npo/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\net_profit_ocf\analisa_net_profit_ocf_controller@dataResource'
                    ])->name('analisa.keuangan.npo.data_resource');

                    Route::get('modul/keuangan/analisa/npo/print', [
                        'uses'  => 'modul_keuangan\analisa\net_profit_ocf\analisa_net_profit_ocf_controller@print'
                    ])->name('analisa.keuangan.npo.print');

                    Route::get('modul/keuangan/analisa/npo/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\net_profit_ocf\analisa_net_profit_ocf_controller@pdf'
                    ])->name('analisa.keuangan.npo.print.pdf');


                // Analisa Hutang Piutang
                    Route::get('modul/keuangan/analisa/hutang_piutang', [
                        'uses'  => 'modul_keuangan\analisa\hutang_piutang\analisa_hutang_piutang_controller@index'
                    ])->name('analisa.keuangan.hutang_piutang');

                    Route::get('modul/keuangan/analisa/hutang_piutang/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\hutang_piutang\analisa_hutang_piutang_controller@dataResource'
                    ])->name('analisa.keuangan.hutang_piutang.data_resource');

                    Route::get('modul/keuangan/analisa/hutang_piutang/print', [
                        'uses'  => 'modul_keuangan\analisa\hutang_piutang\analisa_hutang_piutang_controller@print'
                    ])->name('analisa.keuangan.hutang_piutang.print');

                    Route::get('modul/keuangan/analisa/hutang_piutang/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\hutang_piutang\analisa_hutang_piutang_controller@pdf'
                    ])->name('analisa.keuangan.hutang_piutang.print.pdf');


                // Analisa Pertumbuhan Aset
                    Route::get('modul/keuangan/analisa/pertumbuhan_aset', [
                        'uses'  => 'modul_keuangan\analisa\pertumbuhan_aset\analisa_pertumbuhan_aset_controller@index'
                    ])->name('analisa.keuangan.pertumbuhan_aset');

                    Route::get('modul/keuangan/analisa/pertumbuhan_aset/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\pertumbuhan_aset\analisa_pertumbuhan_aset_controller@dataResource'
                    ])->name('analisa.keuangan.pertumbuhan_aset.data_resource');

                    Route::get('modul/keuangan/analisa/pertumbuhan_aset/print', [
                        'uses'  => 'modul_keuangan\analisa\pertumbuhan_aset\analisa_pertumbuhan_aset_controller@print'
                    ])->name('analisa.keuangan.pertumbuhan_aset.print');

                    Route::get('modul/keuangan/analisa/pertumbuhan_aset/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\pertumbuhan_aset\analisa_pertumbuhan_aset_controller@pdf'
                    ])->name('analisa.keuangan.pertumbuhan_aset.print.pdf');


                // Analisa Aset Terhadap Ekuitas
                    Route::get('modul/keuangan/analisa/aset_ekuitas', [
                        'uses'  => 'modul_keuangan\analisa\aset_ekuitas\analisa_aset_ekuitas_controller@index'
                    ])->name('analisa.keuangan.aset_ekuitas');

                    Route::get('modul/keuangan/analisa/aset_ekuitas/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\aset_ekuitas\analisa_aset_ekuitas_controller@dataResource'
                    ])->name('analisa.keuangan.aset_ekuitas.data_resource');

                    Route::get('modul/keuangan/analisa/aset_ekuitas/print', [
                        'uses'  => 'modul_keuangan\analisa\aset_ekuitas\analisa_aset_ekuitas_controller@print'
                    ])->name('analisa.keuangan.aset_ekuitas.print');

                    Route::get('modul/keuangan/analisa/aset_ekuitas/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\aset_ekuitas\analisa_aset_ekuitas_controller@pdf'
                    ])->name('analisa.keuangan.aset_ekuitas.print.pdf');


                // Analisa Common Size
                    Route::get('modul/keuangan/analisa/common_size', [
                        'uses'  => 'modul_keuangan\analisa\common_size\analisa_common_size_controller@index'
                    ])->name('analisa.keuangan.common_size');

                    Route::get('modul/keuangan/analisa/common_size/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\common_size\analisa_common_size_controller@dataResource'
                    ])->name('analisa.keuangan.common_size.data_resource');

                    Route::get('modul/keuangan/analisa/common_size/print', [
                        'uses'  => 'modul_keuangan\analisa\common_size\analisa_common_size_controller@print'
                    ])->name('analisa.keuangan.common_size.print');

                    Route::get('modul/keuangan/analisa/common_size/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\common_size\analisa_common_size_controller@pdf'
                    ])->name('analisa.keuangan.common_size.print.pdf');


                // Analisa Cashflow
                    Route::get('modul/keuangan/analisa/cashflow', [
                        'uses'  => 'modul_keuangan\analisa\cashflow\analisa_cashflow_controller@index'
                    ])->name('analisa.keuangan.cashflow');

                    Route::get('modul/keuangan/analisa/cashflow/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\cashflow\analisa_cashflow_controller@dataResource'
                    ])->name('analisa.keuangan.cashflow.data_resource');

                    Route::get('modul/keuangan/analisa/cashflow/print', [
                        'uses'  => 'modul_keuangan\analisa\cashflow\analisa_cashflow_controller@print'
                    ])->name('analisa.keuangan.cashflow.print');

                    Route::get('modul/keuangan/analisa/cashflow/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\cashflow\analisa_cashflow_controller@pdf'
                    ])->name('analisa.keuangan.cashflow.print.pdf');


                // Analisa Rasio Keuangan
                    Route::get('modul/keuangan/analisa/rasio', [
                        'uses'  => 'modul_keuangan\analisa\rasio\analisa_rasio_controller@index'
                    ])->name('analisa.keuangan.rasio');

                    Route::get('modul/keuangan/analisa/rasio/data_resource', [
                        'uses'  => 'modul_keuangan\analisa\rasio\analisa_rasio_controller@dataResource'
                    ])->name('analisa.keuangan.rasio.data_resource');

                    Route::get('modul/keuangan/analisa/rasio/print', [
                        'uses'  => 'modul_keuangan\analisa\rasio\analisa_rasio_controller@print'
                    ])->name('analisa.keuangan.rasio.print');

                    Route::get('modul/keuangan/analisa/rasio/print/pdf', [
                        'uses'  => 'modul_keuangan\analisa\rasio\analisa_rasio_controller@pdf'
                    ])->name('analisa.keuangan.rasio.print.pdf');

        // Analisa keuangan

    // End Route Dirga


}); // End Route Groub middleware auth
