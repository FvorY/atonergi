<!DOCTYPE html>
<html>
<head>
	<title>Payroll</title>
	<style type="text/css">
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
		table.border-none ,.border-none td{
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
	</style>
</head>
<body>

	<div class="btn-print">
		<button onclick="Print()">Print</button>
	</div>
	<div class="div-width">
		{{-- <table class="border-none" width="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td class="s16 italic bold" width="35%">Atonergi</td>
				<td class="s16" width="30%"><p class="underline text-center">FAKTUR</p></td>
				<td class="s16" width="35%">Surabaya, <text class="bold">{{date('d/m/Y')}}</text></td>
			</tr>
			<tr>
				<td>Jl. Raya Randu no.74<br>
					Sidotopo Wetan - Surabaya 60123<br>
					Telp. 031-51165528&nbsp;&nbsp;&nbsp;Fax. 081331100028-081234561066
				</td>
				<td class="text-center">01180525040-PJ</td>
				<td>Kepada Yth,<br>
					Fitrah Kebab<br>
					Jl. Wonosari km.8 sekarsuli no.23 RT 04 RW Sendangtirto Berbah Sleman Yogyakarta
				</td>
			</tr>
		</table>
		<table width="100%" cellspacing="0" class="tabel" border="1px">
			<tr class="text-center">
				<td>No</td>
				<td>Kode Barang</td>
				<td>Nama Barang</td>
				<td>Unit</td>
				<td>Harga</td>
				<td>Total</td>
				<td>Discount</td>
			</tr>
			<tr>
				<td class="text-center">1</td>
				<td>005000018</td>
				<td>Tortilla Catering</td>
				<td class="text-right">100,00 PAK</td>
				<td class="text-right">16,000.00</td>
				<td class="text-right" width="10%">1,600,000.00</td>
				<td class="text-right" width="10%">0.00</td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td class="text-center empty"></td>
				<td></td>
				<td></td>
				<td class="text-right"></td>
				<td class="text-right"></td>
				<td class="text-right" width="10%"></td>
				<td class="text-right" width="10%"></td>
			</tr>
			<tr>
				<td colspan="2" class="border-none-right">Keterangan :</td>
				<td colspan="3" class="border-none-left border-none-right"></td>
				<td class="border-none-right border-none-left">Jumlah</td>
				<td class="border-none-left text-right">1,600,000.00</td>
			</tr>
			<tr>
				<td colspan="5" class="vertical-baseline border-none-right" style="position: relative;">
					<div class="top s16">Terbilang : Satu Juta Enam Ratus Ribu Rupiah</div>
					<div class="float-left" style="width: 40vw;">
						<ul style="padding-left: -15px;">
							<li>Barang yang sudah dibeli tidak bisa dikemblikan lagi kecuali ada perjanjian</li>
							<li>Keterlambatan, kehilangan atau kerusakan barang selama pengiriman tidak menjadi tanggung jawab kami.</li>
							<li>Klaim dilayani 1x24 jam setelah barang diterima</li>
						</ul>
					</div>
					<div class="float-right text-center" style="margin-top: 15px;height: 60px;width: 40%;position: absolute;right: 0;bottom: 20px;">
						<div>Hormat Kami</div>
						<div style="margin:auto;border-bottom: 1px solid black;width: 150px;height: 45px;"></div>
						<div>Accounting</div>
					</div>
				</td>
				<td colspan="2" class="vertical-baseline border-none-left">
					<div class="top">
						<table class="border-none" width="100%" cellspacing="0">
							<tr>
								<td width="50%">Total Diskon</td>
								<td width="50%" class="text-right">0.00</td>
							</tr>
							<tr>
								<td width="50%">Sub Total</td>
								<td width="50%" class="text-right">1,600,000.00</td>
							</tr>
							<tr>
								<td width="50%">PPN</td>
								<td width="50%" class="text-right">0.00</td>
							</tr>
							<tr>
								<td width="50%">Total</td>
								<td width="50%" class="text-right">1,600,000.00</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table> --}}
		<h1>Atonergi</h1>
		<h3>Slip Gaji</h3>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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