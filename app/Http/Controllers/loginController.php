<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\mMember;
use App\d_comp_coa;
use App\d_comp_trans;
use App\cabang;
use Validator;
use Carbon\Carbon;
use Session;
use DB;

class loginController extends Controller
{

    public function __construct(){
        $this->middleware('guest');
    }

    public function login(Request $req) {
        $username = $req->username;
        $password = $req->password;
        $user = mMember::where("m_username", $username)->first();
        if ($user && $user->m_passwd == sha1(md5('passwordAllah') + $req->password)) {
            return response()->json([
                        'success' => 'succes',
            ]);
        } else {
            return response()->json([
                        'success' => 'gagal',
            ]);
        }
    }

    public function authenticate(Request $req) {

        $rules = array(
            'username' => 'required|min:3', // make sure the email is an actual email
            'password' => 'required|min:2' // password can only be alphanumeric and has to be greater than 3 characters
        );
    	// dd($req->all());
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return Redirect('/')
                            ->withErrors($validator) // send back all errors to the login form
                            ->withInput($req->except('password')); // send back the input (not the password) so that we can repopulate the form
        } else {
            $username  = $req->username;
            $password  = $req->password;
           	$pass_benar=sha1(md5('passwordAllah').$password);
            // $username = str_replace('\'', '', $username);

            $user = mMember::where("m_username", $username)->first();

            $user_valid = [];
            // dd($req->all());

           	if ($user != null) {
           		$user_pass = mMember::where('m_username',$username)
	            			          ->where('m_password',$pass_benar)
	            			          ->first();

            	if ($user_pass != null) {
           			mMember::where('m_username',$username)->update([
                     'm_last_login'=>Carbon::now(),
                 	  ]);

                    mMember::where('m_username',$username)->update([
                         'm_statuslogin'=>'Y',
                     	  ]);

                Auth::login($user);
                return Redirect('/home');
            	}else{
                Session::flash('password','Password Yang Anda Masukan Salah!');
                return back()->with('password','username');
            	}
           	}else{
           		Session::flash('username','Username Tidak Ada');
           		return back()->with('password','username');
           	}


        }
    }

    public function logout(){
        Session::flush();
        Auth::logout();
        mMember::where('m_username',$username)->update([
             'm_last_logout' => Carbon::now('Asia/Jakarta')
            ]);

        mMember::where('m_username',$username)->update([
             'm_statuslogin' => 'N'
            ]);
            
        Session::forget('key');
        return Redirect('/');
    }


}
