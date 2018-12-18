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

getTanggal();

});

function getTanggal(){
$('#tableAbsensi').dataTable().fnDestroy();
var tgl1 = $("#datepicker01").val();
var tgl2 = $("#datepicker02").val();
var data = $("#tampil_data").val();
$('#tableAbsensi').DataTable({
		"scrollY": 500,
		"scrollX": true,
		"paging":  false,
		"autoWidth": false,
		"ajax": {
				url: baseUrl + "/hrd/absensi/table/manajemen/" + tgl1 + "/" + tgl2 + "/" + data,
				type: 'GET'
		},
		"columns": [
			// {"data" : "DT_Row_Index", orderable: false, searchable: false, "width" : "5%"},
			{"data" : 'tanggal', name: 'pegawai', width:"10%"},
			{"data" : 'pegawai', name: 'Alpha', orderable: false, width:"10%"},
			{"data" : 'apm_jam_kerja', name: 'apm_jam_kerja', orderable: false, width:"10%"},
			{"data" : 'apm_jam_masuk', name: 'apm_jam_masuk', orderable: false, width:"10%"},
			{"data" : 'apm_jam_pulang', name: 'apm_jam_pulang', orderable: false, width:"10%"},
			{"data" : 'apm_scan_masuk', name: 'apm_scan_masuk', orderable: false, width:"10%"},
			{"data" : 'apm_scan_pulang', name: 'apm_scan_pulang', orderable: false, width:"10%"},
			{"data" : 'apm_terlambat', name: 'apm_terlambat', orderable: false, width:"10%"},
			{"data" : 'apm_jml_jamkerja', name: 'apm_jml_jamkerja', orderable: false, width:"10%"},
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

function detTanggal(){
$('#detailAbsensi').dataTable().fnDestroy();
var tgl1 = $("#tanggal1").val();
var tgl2 = $("#tanggal2").val();
var tampil = $("#tampilDet").val();
$('#detailAbsensi').DataTable({
	"ajax": {
			url: baseUrl + "/hrd/absensi/detail/" + tgl1 + "/" +tgl2+ "/" + tampil,
			type: 'GET'
	},
	"columns": [
		{"data" : 'tanggal', name: 'pegawai', width:"10%"},
		{"data" : 'pegawai', name: 'Alpha', orderable: false, width:"10%"},
		{"data" : 'app_jam_kerja', name: 'app_jam_kerja', orderable: false, width:"10%"},
		{"data" : 'app_jam_masuk', name: 'app_jam_masuk', orderable: false, width:"10%"},
		{"data" : 'app_jam_pulang', name: 'app_jam_pulang', orderable: false, width:"10%"},
		{"data" : 'app_scan_masuk', name: 'app_scan_masuk', orderable: false, width:"10%"},
		{"data" : 'app_scan_pulang', name: 'app_scan_pulang', orderable: false, width:"10%"},
		{"data" : 'app_terlambat', name: 'app_terlambat', orderable: false, width:"10%"},
		{"data" : 'app_jml_jamkerja', name: 'app_jml_jamkerja', orderable: false, width:"10%"},
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
}

</script>
@endsection
