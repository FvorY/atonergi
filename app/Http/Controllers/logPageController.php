<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class logPageController extends Controller
{
    public function index() {
      $data = DB::table('d_log')
                ->get();

        return view('log.index', compact('data'));
    }
}
