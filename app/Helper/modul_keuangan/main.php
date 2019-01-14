<?php
	
	function getBulan(){
		$bulan = [
			[
				"nama"		=> 'Januari',
				"value"		=> '01'
			],

			[
				"nama"		=> 'Februari',
				"value"		=> '02'
			],

			[
				"nama"		=> 'Maret',
				"value"		=> '03'
			],

			[
				"nama"		=> 'April',
				"value"		=> '04'
			],

			[
				"nama"		=> 'Mei',
				"value"		=> '05'
			],

			[
				"nama"		=> 'Juni',
				"value"		=> '06'
			],

			[
				"nama"		=> 'Juli',
				"value"		=> '07'
			],

			[
				"nama"		=> 'Agustus',
				"value"		=> '08'
			],

			[
				"nama"		=> 'September',
				"value"		=> '09'
			],

			[
				"nama"		=> 'Oktober',
				"value"		=> '10'
			],

			[
				"nama"		=> 'November',
				"value"		=> '11'
			],

			[
				"nama"		=> 'Desember',
				"value"		=> '12'
			],
		];

		return $bulan;
	}
	
	function modulSetting(){
		$setting = [
			'extraScripts' => 'extra_script',
			'extraStyles'  => 'extra_style',
		];

		return $setting;
	}

?>