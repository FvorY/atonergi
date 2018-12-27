<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\mMember;

use App\Authentication;

use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $counton = mMember::where('m_statuslogin', 'Y')->count();
        $countoff = mMember::where('m_statuslogin', 'N')->count();
        // return Auth::user()->m_id;
        // return 'asd';
        return view('home', compact('counton', 'countoff'));
    }
}
