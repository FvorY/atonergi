<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;

use DB;

use Carbon\Carbon;

class logController extends Controller
{
    public static function inputlog($log,$action,$parameter){
      $id = DB::table('d_log')
              ->max('l_id');

      if ($id == 0) {
        $id = 1;
      } else {
        $id += 1;
      }

      DB::table('d_log')
            ->insert([
              'l_id' => $id,
              'l_user' => Auth::user()->m_name,
              'l_log' => $log,
              'l_action' => $action,
              'l_parameter' => $parameter,
              'l_insert' => Carbon::now('Asia/Jakarta')->format('Y-m-d G:i:s')
            ]);
    }

}
