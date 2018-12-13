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

Route::get('logout',function(){
	Session::flush();
    Auth::logout();
    Session::forget('key');
    return Redirect('/');
});
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
Route::get('/master/akun/a_keuangan', 'MasterController@a_keuangan');
Route::get('/master/akun/keuangan', 'MasterController@keuangan');
Route::get('/master/transaksi/t_keuangan', 'MasterController@t_keuangan');
Route::get('/master/barang/barang', 'MasterController@barang')->name('barang');
Route::get('/master/barang/cari', 'MasterController@cari');
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
// Quotation
Route::get('/quotation/q_quotation/q_quotation', 'QuotationController@q_quotation');
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
    // END

    // SALES ORDER
    Route::get('/order/salesorder/s_order', 'OrderController@s_order');
    Route::get('/order/salesorder/datatable_so', 'OrderController@datatable_so')->name('datatable_so');
    Route::get('/order/salesorder/s_order/detail_salesorder/{id}', 'OrderController@detail_salesorder');
    Route::get('/order/salesorder/print_salesorder/{id}', 'OrderController@print_salesorder');

    // work ORDER
    Route::get('/order/workorder/w_order', 'OrderController@w_order');
    Route::get('/order/workorder/datatable_so', 'OrderController@datatable_wo')->name('datatable_wo');
    Route::get('/order/workorder/s_order/detail_workorder/{id}', 'OrderController@detail_workorder');
    Route::get('/order/workorder/print_workorder', 'OrderController@print_workorder');
    // PAYMENT ORDER
    Route::get('/order/payment_order', 'OrderController@payment_order');
    Route::get('/order/payment_order/datatable_payment_order', 'OrderController@datatable_payment_order')->name('datatable_payment_order');
    Route::get('/order/payment_order/detail_payment_order/{id}', 'OrderController@detail_payment_order');
    Route::get('/order/payment_order/save_payment_order', 'OrderController@save_payment_order');
    // PROFORMA INVOICE
    Route::get('/order/proforma_invoice', 'OrderController@proforma_invoice');
    Route::get('/order/payment_order/datatable_proforma_invoice', 'OrderController@datatable_proforma_invoice')->name('datatable_proforma_invoice');
    Route::get('/order/proforma_invoice/detail_proforma_invoice/{id}', 'OrderController@detail_proforma_invoice');
    Route::get('/order/proforma_invoice/save_proforma_invoice', 'OrderController@save_proforma_invoice');
    Route::get('/order/proforma_invoice/hapus_proforma_invoice', 'OrderController@hapus_proforma_invoice');


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
Route::get('/finance/reporting/reporting', 'FinanceController@reporting');
Route::get('/finance/evaluating/evaluating', 'FinanceController@evaluating');
Route::get('/finance/bookkeeping/bookkeeping', 'FinanceController@bookkeeping');
Route::get('/finance/bookkeeping/transaksi_kas', 'FinanceController@transaksi_kas');
Route::get('/finance/bookkeeping/transaksi_bank', 'FinanceController@transaksi_bank');
Route::get('/finance/bookkeeping/transaksi_memorial', 'FinanceController@transaksi_memorial');
Route::get('/finance/costmanajemen/costmanajemen', 'FinanceController@costmanajemen');



// HRD


// Sub-bagian absensi
Route::get('/hrd/absensi/absensi', 'HRDController@absensi');
Route::get('/hrd/absensi/absensi-manajemen', 'HRDController@findAbsManajemen');
Route::get('/hrd/absensi/absensi-produksi', 'HRDController@findAbsManajemen');

Route::post('/hrd/absensi/import-data-manajemen', 'HRDController@importDataManajemen');
Route::post('/hrd/absensi/import-data-produksi', 'HRDController@importDataProduksi');
// =========================================================

Route::get('/hrd/recruitment/recruitment', 'HRDController@recruitment');

// Sub-bagian tunjangan
Route::get('/hrd/payroll/payroll', 'HRDController@payroll');
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
Route::get('/purchase/rencanapembelian/rencanapembelian', 'purchase\request_orderController@rencanapembelian');
Route::get('/purchase/rencanapembelian/kode_rencanapembelian', 'purchase\request_orderController@kode_rencanapembelian')->name('kode_rencanapembelian');
Route::get('/purchase/rencanapembelian/detail_rencanapembelian', 'purchase\request_orderController@detail_rencanapembelian')->name('detail_rencanapembelian');
Route::get('/purchase/rencanapembelian/hapus_rencanapembelian', 'purchase\request_orderController@hapus_rencanapembelian')->name('hapus_rencanapembelian');
Route::get('/purchase/rencanapembelian/detail_rencanapembelian', 'purchase\request_orderController@detail_rencanapembelian')->name('detail_rencanapembelian');
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

    //Payroll
    Route::get('/hrd/payroll/datatable_payroll', 'payrollController@datatable_payroll')->name('datatable_payroll');
    Route::get('/hrd/payroll/simpan_payroll', 'payrollController@simpan_payroll')->name('simpan_payroll');
    Route::get('/hrd/payroll/hapus_payroll', 'payrollController@hapus_payroll')->name('hapus_payroll');
    Route::get('/hrd/payroll/edit_payroll', 'payrollController@edit_payroll')->name('edit_payroll');
    Route::get('/hrd/payroll/update_payroll', 'payrollController@update_payroll')->name('update_payroll');

    //Payroll Manajemen
    Route::get('/hrd/payroll/payrollman/simpan', 'HRDController@payroll_manajemen_simpan')->name('payroll_manajemen_simpan');
    Route::get('/hrd/payroll/payrollman/getdivisi', 'HRDController@payroll_manajemen_getdivisi');
    Route::get('/hrd/payroll/payrollman/getjabatan', 'HRDController@payroll_manajemen_getjabatan');
    Route::get('/hrd/payroll/payrollman/proses', 'HRDController@payroll_manajemen_proses');
    Route::get('/hrd/payroll/payrollman/datatable', 'HRDController@payroll_manajemen_datatable');
    Route::get('/hrd/payroll/payrollman/hapus', 'HRDController@payroll_manajemen_hapus');
}); // End Route Groub middleware auth
