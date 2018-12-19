@extends('main')
@section('content')

<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Absensi</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12">
			<ul class="nav nav-tabs tab-solid tab-solid-primary mb-0" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#abskartushift" role="tab" aria-controls="abskartushift" aria-selected="true"><i class="mdi mdi-account-outline"></i>Absensi Kartu Shift</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" id="tab-6-2" data-toggle="tab" href="#absbulan" role="tab" aria-controls="absbulan" aria-selected="false"><i class="mdi mdi-account-outline"></i>Absensi Berdasarkan Bulan</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" id="tab-6-3" data-toggle="tab" href="#absrekap" role="tab" aria-controls="absrekap" aria-selected="false"><i class="mdi mdi-account-outline"></i>Absensi Rekap Periode</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" id="tab-6-4" data-toggle="tab" href="#abstahun" role="tab" aria-controls="abstahun" aria-selected="false"><i class="mdi mdi-account-outline"></i>Absensi Rincian Tahunan</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

	            @include('hrd.absensi.tab_absensikartushift')

	            @include('hrd.absensi.tab_absensiberdasarkanbulan')

	            @include('hrd.absensi.tab_absensirekap')

	            @include('hrd.absensi.tab_absensitahun')

			</div>
		</div>

	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')

@include('hrd/absensi/js/commander')

<script type="text/javascript">
$(document).ready(function () {
var extensions = {
	"sFilterInput": "form-control input-sm",
	"sLengthSelect": "form-control input-sm"
}
// Used when bJQueryUI is false
$.extend($.fn.dataTableExt.oStdClasses, extensions);
// Used when bJQueryUI is true
$.extend($.fn.dataTableExt.oJUIClasses, extensions)

var date = new Date();
var newdate = new Date(date);

newdate.setDate(newdate.getDate() - 6);
var nd = new Date(newdate);

$('.datepicker').datepicker({
		format: "mm",
		viewMode: "months",
		minViewMode: "months"
});

$('#datepicker01').datepicker({
		autoclose: true,
		format: "dd-mm-yyyy",
		endDate: 'today'
}).datepicker("setDate", nd);

$('#tanggal1').datepicker({
		autoclose: true,
		format: "dd-mm-yyyy",
		endDate: 'today'
}).datepicker("setDate", nd);

$('#tanggal2').datepicker({
		autoclose: true,
		format: "dd-mm-yyyy",
		endDate: 'today'
});

ksgetTanggal();
abgetTanggal();
argetTanggal();

});

function ksgetTanggal(){
$('#tablekartushift').dataTable().fnDestroy();
var tgl1 = $("#ksdatepicker01").val();
var tgl2 = $("#ksdatepicker02").val();
$('#tablekartushift').DataTable({
		"scrollY": true,
		"scrollX": true,
		"paging":  false,
		"autoWidth": false,
		"ajax": {
				url: baseUrl + "/hrd/absensi/kstable",
				type: 'GET',
				data: {tgl1, tgl2}
		},
		"columns": [
			// {"data" : "DT_Row_Index", orderable: false, searchable: false, "width" : "5%"},
			{"data" : 'k_pin', name: 'k_pin'},
			{"data" : 'k_nip', name: 'k_nip'},
			{"data" : 'k_nama', name: 'k_nama'},
			{"data" : 'k_jabatan', name: 'k_jabatan'},
			{"data" : 'k_departement', name: 'k_departement'},
			{"data" : 'k_kantor', name: 'k_kantor'},
			{"data" : 'k_tanggal', name: 'k_tanggal'},
			{"data" : 'k_kehadiran', name: 'k_kehadiran'},
			{"data" : 'k_in', name: 'k_in'},
			{"data" : 'k_out', name: 'k_out'},
		],
		"language": {
			"searchPlaceholder": "Cari Data",
			"emptyTable": "Tidak ada data",
			"sInfo": "Menampilkan _START_ - _END_ Dari _TOTAL_ Data",
			"sSearch": '<i class="fa fa-search"></i>',
			"sLengthMenu": "Menampilkan &nbsp; _MENU_ &nbsp; Data",
			"infoEmpty": "",
			"paginate": {
							"previous": "Sebelumnya",
							"next": "Selanjutnya",
					 }
		}
});
};

function kssearch(){
	ksgetTanggal();
}

function ksrefresh(){
	$("#ksdatepicker01").val('');
	$("#ksdatepicker02").val('');
	ksgetTanggal();
}

function absearch(){
	abgetTanggal();
}

function abrefresh(){
	$("#abdatepicker01").val('');
	$("#abdatepicker02").val('');
	abgetTanggal();
}

function arsearch(){
	abgetTanggal();
}

function arrefresh(){
	$("#ardatepicker01").val('');
	$("#ardatepicker02").val('');
	argetTanggal();
}

function argetTanggal(){
$('#artable').dataTable().fnDestroy();
var tgl1 = $("#ardatepicker01").val();
var tgl2 = $("#ardatepicker02").val();
$('#artable').DataTable({
		"scrollY": true,
		"scrollX": true,
		"paging":  false,
		"autoWidth": false,
		"ajax": {
				url: baseUrl + "/hrd/absensi/artable",
				type: 'GET',
				data: {tgl1, tgl2}
		},
		"columns": [
			// {"data" : "DT_Row_Index", orderable: false, searchable: false, "width" : "5%"},
			{"data" : 'r_pin', name: 'r_pin'},
			{"data" : 'r_nip', name: 'r_nip'},
			{"data" : 'r_nama', name: 'r_nama'},
			{"data" : 'r_jabatan', name: 'r_jabatan'},
			{"data" : 'r_departement', name: 'r_departement'},
			{"data" : 'r_kantor', name: 'r_kantor'},
			{"data" : 'r_izin_libur', name: 'r_izin_libur'},
			{"data" : 'r_kehadiran_jml', name: 'r_kehadiran_jml'},
			{"data" : 'r_kehadiran_jammenit', name: 'r_kehadiran_jammenit'},
			{"data" : 'r_datangterlambat_jml', name: 'r_datangterlambat_jml'},
			{"data" : 'r_datangterlambat_jammenit', name: 'r_datangterlambat_jammenit'},
			{"data" : 'r_pulangawal_jml', name: 'r_pulangawal_jml'},
			{"data" : 'r_pulangawal_jammenit', name: 'r_pulangawal_jammenit'},
			{"data" : 'r_istirahatlebih_jml', name: 'r_istirahatlebih_jml'},
			{"data" : 'r_istirahatlebih_jammenit', name: 'r_istirahatlebih_jammenit'},
			{"data" : 'r_scankerja_masuk', name: 'r_scankerja_masuk'},
			{"data" : 'r_scankerja_keluar', name: 'r_scankerja_keluar'},
			{"data" : 'r_lembur_jml', name: 'r_lembur_jml'},
			{"data" : 'r_lembur_jammenit', name: 'r_lembur_jammenit'},
			{"data" : 'r_lembur_scan', name: 'r_lembur_scan'},
			{"data" : 'r_tidakhadir_tanpaizin', name: 'r_tidakhadir_tanpaizin'},
			{"data" : 'r_libur_rutindanumum', name: 'r_libur_rutindanumum'},
			{"data" : 'r_perhitunganpengecualianizin_izintidakmasukpribadi', name: 'r_perhitunganpengecualianizin_izintidakmasukpribadi'},
			{"data" : 'r_perhitunganpengecualianizin_izinpulangawalpribadi', name: 'r_perhitunganpengecualianizin_izinpulangawalpribadi'},
			{"data" : 'r_perhitunganpengecualianizin_izindatangterlambatpribadi', name: 'r_perhitunganpengecualianizin_izindatangterlambatpribadi'},
			{"data" : 'r_perhitunganpengecualianizin_sakitdengansuratdokter', name: 'r_perhitunganpengecualianizin_sakitdengansuratdokter'},
			{"data" : 'r_perhitunganpengecualianizin_sakittanpasuratdokter', name: 'r_perhitunganpengecualianizin_sakittanpasuratdokter'},
			{"data" : 'r_perhitunganpengecualianizin_izinmeninggalkantempatkerja', name: 'r_perhitunganpengecualianizin_izinmeninggalkantempatkerja'},
			{"data" : 'r_perhitunganpengecualianizin_izindinaskantor', name: 'r_perhitunganpengecualianizin_izindinaskantor'},
			{"data" : 'r_perhitunganpengecualianizin_izindatangterlambatkantor', name: 'r_perhitunganpengecualianizin_izindatangterlambatkantor'},
			{"data" : 'r_perhitunganpengecualianizin_izinpulangawalkantor', name: 'r_perhitunganpengecualianizin_izinpulangawalkantor'},
			{"data" : 'r_perhitunganpengecualianizin_cutinormatif', name: 'r_perhitunganpengecualianizin_cutinormatif'},
			{"data" : 'r_perhitunganpengecualianizin_cutipribadi', name: 'r_perhitunganpengecualianizin_cutipribadi'},
			{"data" : 'r_perhitunganpengecualianizin_tidakscanmasuk', name: 'r_perhitunganpengecualianizin_tidakscanmasuk'},
			{"data" : 'r_perhitunganpengecualianizin_tidakscanpulang', name: 'r_perhitunganpengecualianizin_tidakscanpulang'},
			{"data" : 'r_perhitunganpengecualianizin_tidakscanmulaiistirahat', name: 'r_perhitunganpengecualianizin_tidakscanmulaiistirahat'},
			{"data" : 'r_perhitunganpengecualianizin_tidakscanselesaiistirahat', name: 'r_perhitunganpengecualianizin_tidakscanselesaiistirahat'},
			{"data" : 'r_perhitunganpengecualianizin_tidakscanmulailembur', name: 'r_perhitunganpengecualianizin_tidakscanmulailembur'},
			{"data" : 'r_perhitunganpengecualianizin_tidakscanselesailembur', name: 'r_perhitunganpengecualianizin_tidakscanselesailembur'},
			{"data" : 'r_perhitunganpengecualianizin_izinlainlain', name: 'r_perhitunganpengecualianizin_izinlainlain'},
		],
		"language": {
			"searchPlaceholder": "Cari Data",
			"emptyTable": "Tidak ada data",
			"sInfo": "Menampilkan _START_ - _END_ Dari _TOTAL_ Data",
			"sSearch": '<i class="fa fa-search"></i>',
			"sLengthMenu": "Menampilkan &nbsp; _MENU_ &nbsp; Data",
			"infoEmpty": "",
			"paginate": {
							"previous": "Sebelumnya",
							"next": "Selanjutnya",
					 }
		}
});
};

function abgetTanggal(){
$('#abtable').dataTable().fnDestroy();
var tgl1 = $("#abdatepicker01").val();
var tgl2 = $("#abdatepicker02").val();
$('#abtable').DataTable({
		"scrollY": true,
		"scrollX": true,
		"paging":  false,
		"autoWidth": false,
		"ajax": {
				url: baseUrl + "/hrd/absensi/abtable",
				type: 'GET',
				data: {tgl1, tgl2}
		},
		"columns": [
			// {"data" : "DT_Row_Index", orderable: false, searchable: false, "width" : "5%"},
			{"data" : 'a_tanggalscan', name: 'a_tanggalscan'},
			{"data" : 'a_tanggal', name: 'a_tanggal'},
			{"data" : 'a_jam', name: 'a_jam'},
			{"data" : 'a_pin', name: 'a_pin'},
			{"data" : 'a_nip', name: 'a_nip'},
			{"data" : 'a_nama', name: 'a_nama'},
			{"data" : 'a_jabatan', name: 'a_jabtan'},
			{"data" : 'a_departement', name: 'a_departement'},
			{"data" : 'a_kantor', name: 'a_kantor'},
			{"data" : 'a_verifikasi', name: 'a_verifikasi'},
			{"data" : 'a_io', name: 'a_io'},
			{"data" : 'a_workcode', name: 'a_workcode'},
			{"data" : 'a_sn', name: 'a_sn'},
			{"data" : 'a_mesin', name: 'a_mesin'},
		],
		"language": {
			"searchPlaceholder": "Cari Data",
			"emptyTable": "Tidak ada data",
			"sInfo": "Menampilkan _START_ - _END_ Dari _TOTAL_ Data",
			"sSearch": '<i class="fa fa-search"></i>',
			"sLengthMenu": "Menampilkan &nbsp; _MENU_ &nbsp; Data",
			"infoEmpty": "",
			"paginate": {
							"previous": "Sebelumnya",
							"next": "Selanjutnya",
					 }
		}
});
};

</script>
@endsection
