<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\mMember;
class AsetController extends Controller
{
    public function penyusutan()
    {
    	return view('manajemenaset/penyusutan/penyusutan');
    }
    public function history()
    {
    	return view('manajemenaset/history/history');
    }
    public function irventarisasi()
    {
    	return view('manajemenaset/irventarisasi/irventarisasi');
    }
}
