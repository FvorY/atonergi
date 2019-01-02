<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class logPageController extends Controller
{
    public function index() {
        return view('log.index');
    }
}
