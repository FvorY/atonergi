<!DOCTYPE html>
<html>
<head>
	<title>Payroll</title>
	<style type="text/css">
		html{
			box-sizing: border-box;
		}
		*,
		*:before,
		*:after {
		  box-sizing: inherit;
		}
		*:not(h1):not(h2):not(h3):not(h4):not(h5):not(h6):not(small):not(label){
			font-size: 14px;
		}
		.s16{
			font-size: 16px !important;
		}
		.div-width{
			width: 900px;
			padding: 40px 15px 15px 15px;
			

		}
		.div-width-background{
			content: "";
			{{-- background-image: url("{{asset('assets/img/background-tammafood-surat.jpg')}}"); --}}
			background-repeat: no-repeat;
			background-position: center; 
			background-size: 700px 700px;
			position: absolute;
			z-index: -1;
			margin-top: 170px;
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
			opacity: 0.1; 
			width: 95vw;
		}
		.underline{
			text-decoration: underline;
		}
		.italic{
			font-style: italic;
		}
		.bold{
			font-weight: bold;
		}
		.text-center{
			text-align: center;
		}
		.text-right{
			text-align: right;
		}
		.text-left{
			text-align: left;
		}
		.border-none-right{
			border-right: hidden;
		}
		.border-none-left{
			border-left:hidden;
		}
		.border-none-bottom{
			border-bottom: hidden;
		}
		.border-none-top{
			border-top: hidden;
		}
		.float-left{
			float: left;
		}
		.float-right{
			float: right;
		}
		.top{
			vertical-align: text-top;
		}
		.vertical-baseline{
			vertical-align: baseline;
		}
		.bottom{
			vertical-align: text-bottom;
		}
		.ttd{
			width: 150px;
		}
		.relative{
			position: relative;
		}
		.absolute{
			position: absolute;
		}
		.empty{
			height: 18px;
		}
		table,td,th{
			border:1px solid black;
		}
		table{
			border-collapse: collapse;
		}
		table.border-none,
		.border-none td,
		.border-none th
		{
			border:none !important;
		}
		.position-top{
			vertical-align: top;
		}
		@page {
			size: portrait;
			margin:0 0 0 0;
		}
		@media print {
			.div-width{
				margin: auto;
				padding: 0 15px 15px 15px;
				width: 95vw;
				position: relative;
			}
			.btn-print{
				display: none;
			}
			header{
				top:0;
				left: 0;
				right: 0;
				position: absolute;
				width: 100%;
			}
			footer{
				bottom: 0;
				left: 0;
				right: 0;
				position: absolute;
				width: 100%;
			}
			.div-width-background{
				content: "";
				{{-- background-image: url("{{asset('assets/img/background-tammafood-surat.jpg')}}"); --}}
				background-repeat: no-repeat;
				background-position: center; 
				background-size: 700px 700px;
				position: absolute;
				z-index: -1;
				margin: auto;
				opacity: 0.1; 
				width: 95vw;
			}
		}
		fieldset{
			border: 1px solid black;
			margin:-.5px;
		}
		header{
			top: 0;
			width: 900px;
			z-index: 99;
		}
		footer{
			bottom: 0;
			width: 900px;
			z-index: 99;
		}
		.border-top{
			border-top: 1px solid black;
		}
		.border-bottom{
			border-bottom: 1px solid black;
		}
		.btn-print{
			position: fixed;
			width: 100%;
			text-align: right;
			height: 40px;
			left: 0;
			top: 0;
			background: rgba(0,0,0,.2);
		}
		.btn-print button, .btn-print a{
			margin: 10px;
		}
		.row{
			display: flex;
			flex-wrap: wrap;
			margin-left: -15px;
			margin-right: -15px;
		}
		.col-6{
			position: relative;
			padding-left: 15px;
			padding-right: 15px;
		}
		.col-6{
			float: left;
		}
		.col-6{
			width: 50%;
		}
		.div-page-break{
			page-break-inside: avoid;
			padding: 5px;
			border: 1px solid #a5ffff;
			background:rgba(0,200,255,.1);
		}
		hr{
			color: black;
		}
		hr.dashed{
			border: 1px dashed gray;
		}
		.hidden{
			display: none;
		}
	</style>
</head>
<body>

	<div class="btn-print">
		<button onclick="Print()">Print</button>
	</div>

	<div class="div-width">
		<div class="div-page-break">
			<div class="row">
				<div class="col-6">
					<table class="border-none" width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td>Nama Perusahaan</td>
							<td>:</td>
							<td>PT REJA ATON ENERGI</td>
						</tr>
						<tr>
							<td>Periode Proses</td>
							<td>:</td>
							<td>Desember 2018</td>
						</tr>
						<tr>
							<td>Jabatan</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td>No Rek</td>
							<td>:</td>
							<td>42540939399</td>
						</tr>
					</table>
				</div>
				<div class="col-6">
					<table class="border-none" width="100%" cellspacing="0" cellpadding="0">
						<tr>
							<td>NIP</td>
							<td>:</td>
							<td>2</td>
						</tr>
						<tr>
							<td>Nama</td>
							<td>:</td>
							<td>Alpha</td>
						</tr>
						<tr>
							<td>Departemen</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td>Atas Nama</td>
							<td>:</td>
							<td>Bravo</td>
						</tr>
					</table>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-6">
					<table class="border-none" width="100%">
						<thead>
							<tr>
								<th colspan="2" class="bold" align="left">Penerimaan (+)</th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							@for($i=0;$i<40;$i++)
							<tr>
								<td class="underline">1</td>
								<td>Gaji Pokok</td>
								<td>1 x 3.400.000</td>
								<td>=</td>
								<td align="right">5.500.000</td><!-- ================ Mabok ============== -->
							</tr>
							@endfor
						</tbody>
						<tfoot>
							<tr>
								<th colspan="4" align="left">Total Penerimaan :</th>
								<th align="right">10.000.000</th><!-- =============== Mabok =============== -->
							</tr>
						</tfoot>
					</table>
				</div>
				<div class="col-6">
					<table class="border-none" width="100%">
						<thead>
							<tr>
								<th colspan="2" class="bold" align="left">Potongan (-)</th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="underline">1</td>
								<td>Gaji Pokok</td>
								<td>1 x 3.400.000</td>
								<td>=</td>
								<td align="right">5.500.000</td><!-- ============== Mabok ============== -->
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th colspan="4" align="left">Total Potongan :</th>
								<th align="right"></th>
							</tr>
						</tfoot>
					</table>
				</div>
				<div class="col-6">
					<table class="border-none" width="100%">
						<tr>
							<td class="italic underline bold">Gaji yang diterima</td>
							<td class="italic underline bold" align="right">6.793.000</td>
						</tr>
					</table>
				</div>
				<div class="col-6">
					<table class="border-none" width="100%">
						<tr>
							<td class="italic underline">Tgl. Cetak</td>
							<td class="italic underline">20-12-2018 23:59:59</td>
						</tr>
					</table>
				</div>
			</div>
			<hr class="dashed">
			<div class="row">
				<div class="col-6">
					<table class="border-none" width="100%">
						<tr>
							<td>Nama Perusahaan</td>
							<td>:</td>
							<td>PT. REJA ATON ENERGI</td>
						</tr>
						<tr>
							<td>Periode Proses</td>
							<td>:</td>
							<td>Desember 2018</td>
						</tr>
						<tr>
							<td>Jabatan</td>
							<td>:</td>
							<td></td>
						</tr>
						<tr>
							<td>NIP</td>
							<td>:</td>
							<td>2</td>
						</tr>
						<tr>
							<td>Nama</td>
							<td>:</td>
							<td>Alpha</td>
						</tr>
						<tr>
							<td>Departemen</td>
							<td>:</td>
							<td></td>
						</tr>
					</table>
				</div>

				<div class="col-6">
					<table class="border-none" width="100%">
						<tr>
							<td class="bold italic underline">Gaji yang diterima :</td>
							<td class="bold italic underline" align="right">6.800.000</td>
						</tr>
						<tr>
							<td align="center">Diserahkan oleh,</td>
							<td align="center">Diterima oleh,</td>
						</tr>
						<tr valign="bottom" align="center">
							<td height="50px">Administrator</td>
							<td>Alpha</td>
						</tr>
						<tr>
							<td colspan="2">Tgl. Cetak : 20-12-2018 23:59:59</td>
						</tr>
					</table>
				</div>
			</div>
		</div>

	</div>


	

<script type="text/vbscript" language='VBScript'>
Sub Print()
       OLECMDID_PRINT = 6
       OLECMDEXECOPT_DONTPROMPTUSER = 2
       OLECMDEXECOPT_PROMPTUSER = 1
       call WB.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER,1)
End Sub
document.write "<object ID='WB' WIDTH=0 HEIGHT=0 CLASSID='CLSID:8856F961-340A-11D0-A96B-00C04FD705A2'></object>"
</script>
<script type="text/javascript">
	function Print(){
		window.print();

	}
</script>
</body>
</html>