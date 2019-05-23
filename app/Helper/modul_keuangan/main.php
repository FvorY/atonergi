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
	
	function switchBulan($bulan){
		
		if($bulan == '01' || $bulan == '1')
			return 'Januari';
		else if($bulan == '02' || $bulan == '2')
			return 'Februari';
		else if($bulan == '03' || $bulan == '3')
			return 'Maret';
		else if($bulan == '04' || $bulan == '4')
			return 'April';
		else if($bulan == '05' || $bulan == '5')
			return 'Mei';
		else if($bulan == '06' || $bulan == '6')
			return 'Juni';
		else if($bulan == '07' || $bulan == '7')
			return 'Juli';
		else if($bulan == '08' || $bulan == '8')
			return 'Agustus';
		else if($bulan == '09' || $bulan == '9')
			return 'September';
		else if($bulan == '10')
			return 'Oktober';
		else if($bulan == '11')
			return 'November';
		else if($bulan == '12')
			return 'Desember';

		return "Bulan Tidak Diketahui";
	}

	function modulSetting(){
		$setting = [
			// Container
				'extraScripts' 		   => 'extra_script',
				'extraStyles'  		   => 'extra_style',

			// modul
				'support_cabang'	   => false,
				'id_pusat'			   => 1,
				'onLogin'              => 1
		];

		return $setting;
	}

	function jurnal(){
		$setting = [
			// setting
				'allowJurnalToExecute'	=> true,
				'comp'					=> 1,
				'companyName'			=> 'Redja Aton Energi',
		];

		return (object) $setting;
	}

	function tabel(){
		$data = [
			// tabel cabang

			'cabang'	=> [
				'nama'	=> 'sup_cabang',
				'kolom'	=> [
					'id'	=> 'cab_id',
					'nama'	=> 'cab_nama'
				]
			]
		];

		
		$data = array_to_object($data);
		

		return $data;
	}

	function array_to_object($array){
		
		$obj = new stdClass;

		foreach($array as $k => $v) {
		    if(strlen($k)) {
		        if(is_array($v)) {
		           $obj->{$k} = array_to_object($v); //RECURSION
		        } else {
		           $obj->{$k} = $v;
		        }
		    }
		}

		return $obj;
	}

	function getLR($request){
		$d1 = explode('/', $request->d1)[1].'-'.explode('/', $request->d1)[0].'-01';

        $totreturn = 0;

        $data = DB::table('dk_akun')
                    ->join('dk_hierarki_lvl_dua', 'dk_hierarki_lvl_dua.hld_id', 'dk_akun.ak_kelompok')
                    ->leftJoin('dk_akun_saldo', 'dk_akun_saldo.as_akun', 'dk_akun.ak_id')
                    ->where('dk_hierarki_lvl_dua.hld_level_1', '>', '3')
                    ->where('as_periode', $d1)
                    ->select(
                        'ak_id',
                        'ak_kelompok',
                        'ak_nama',
                        'ak_posisi',
                        DB::raw('coalesce(as_saldo_akhir, 0) as saldo_akhir')
                    )->get();

        foreach ($data as $key => $acc) {
        	if($acc->ak_posisi == 'K')
            	$totreturn += $acc->saldo_akhir;
            else
            	$totreturn += ($acc->saldo_akhir * -1);
        }

        return $totreturn;
	}

?>