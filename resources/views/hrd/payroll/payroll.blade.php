@extends('main')
@section('content')

{{-- @include('hrd/payroll/tambah_payroll_manajemen')
@include('hrd/payroll/edit_payroll_manajemen')
@include('hrd/payroll/tambah_payroll_tunjangan')
@include('hrd/payroll/edit_payroll_tunjangan') --}}
<!-- partial -->
<div class="content-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb" role="navigation">
				<ol class="breadcrumb bg-info">
					<li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="#">Home</a></li>
					<li class="breadcrumb-item">HRD</li>
					<li class="breadcrumb-item active" aria-current="page">Payroll</li>
				</ol>
			</nav>
		</div>

		<div class="col-lg-12 ">
			<ul class="nav nav-tabs tab-solid tab-solid-primary mb-0" role="tablist">
		        <li class="nav-item">
		          <a class="nav-link active" id="tab-6-1" data-toggle="tab" href="#pmanagerial" role="tab" aria-controls="pmanagerial" aria-selected="true"><i class="mdi mdi-folder-account"></i>Managerial</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link " id="tab-6-2" data-toggle="tab" href="#pstaff" role="tab" aria-controls="pstaff" aria-selected="true"><i class="mdi mdi-coin"></i>Staff</a>
		        </li>
		    </ul>

			<div class="tab-content tab-content-solid col-lg-12">

				@include('hrd.payroll.tab_managerial')

				@include('hrd.payroll.tab_staff')


			</div>
		</div>
	</div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script type="text/javascript">
$(document).ready(function(){
	getTanggalmanagerial();
});


function managerialsearch(){
	getTanggalmanagerial();
}

function managerialrefresh(){
	$("#atdatepicker01").val('');
	$("#atdatepicker02").val('');
	getTanggalmanagerial();
}

function getTanggalmanagerial(){
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
</script>
@endsection
