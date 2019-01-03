<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\mMember;

use App\Authentication;

use Auth;

use Carbon\Carbon;

use Session;

use App\Http\Controllers\logController;

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
      if (!mMember::akses('DASHBOARD', 'aktif')) {
        return redirect('error-404');
      }
        // return Auth::user()->m_id;
        // return 'asd';
        return view('home', compact('counton', 'countoff'));
    }

    public function realtime(){
      $counton = mMember::where('m_statuslogin', 'Y')->count();
      $countoff = mMember::where('m_statuslogin', 'N')->count();

      return response()->json([
        'countoff' => $countoff,
        'counton' => $counton
      ]);
    }

    public function logout(){
        Session::flush();
        mMember::where('m_id', Auth::user()->m_id)->update([
             'm_last_logout' => Carbon::now('Asia/Jakarta')
            ]);

        mMember::where('m_id', Auth::user()->m_id)->update([
             'm_statuslogin' => 'N'
            ]);

        logController::inputlog('Logout', 'Logout', Auth::user()->m_username);
        Auth::logout();

        Session::forget('key');
        return Redirect('/');
    }
}
