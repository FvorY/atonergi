<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\mMember;

use App\Authentication;

use Auth;

use Carbon\Carbon;

use Session;

use DB;

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
        $widget = DB::table('dashboard')
                    ->where('mem', Auth::user()->m_id)
                    ->orderby('id')
                    ->get();                 
                    
        $qo = DB::table('dashboard')
                    ->where('widget', 'qo')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $so = DB::table('dashboard')
                    ->where('widget', 'so')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $wo = DB::table('dashboard')
                    ->where('widget', 'wo')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $pay = DB::table('dashboard')
                    ->where('widget', 'pay')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $ro = DB::table('dashboard')
                    ->where('widget', 'ro')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $po = DB::table('dashboard')
                    ->where('widget', 'po')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $stok = DB::table('dashboard')
                    ->where('widget', 'stok')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $hutang = DB::table('dashboard')
                    ->where('widget', 'hutang')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $piutang = DB::table('dashboard')
                    ->where('widget', 'piutang')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        $omset = DB::table('dashboard')
                    ->where('widget', 'omset')
                    ->where('mem', Auth::user()->m_id)
                    ->count();

        return view('home', compact('widget', 'qo', 'so', 'wo', 'pay', 'ro', 'po', 'stok', 'hutang', 'piutang', 'omset'));
   
    }

    public function realtime(Request $request){
      $qo = [];

      $so = [];

      $wo = [];

      $pay = [];

      $ro = [];

      $po = [];

      $stok = [];

      $hutang = [];

      $piutang = [];

      $omset = [];

      if($request->qo == 'Y'){        
        $qobulan = DB::select("SELECT count(q_id) as bulan FROM d_quotation WHERE MONTH(q_created_at) = ".date('m')." AND YEAR(q_created_at) = ".date('Y')."");
        $qotahun = DB::select("SELECT count(q_id) as tahun FROM d_quotation WHERE YEAR(q_created_at) = ".date('Y')."");
        $qowon = DB::table('d_quotation')
                        ->where('q_status', 1)
                        ->count();
        $qorelease = DB::table('d_quotation')
                        ->where('q_status', 2)
                        ->count();
        $qoprinted = DB::table('d_quotation')
                        ->where('q_status', 3)
                        ->count();
        
        $qo['bulan'] = $qobulan[0]->bulan;
        $qo['tahun'] = $qotahun[0]->tahun;
        $qo['won'] = $qowon;
        $qo['release'] = $qorelease;
        $qo['printed'] = $qoprinted;        
      } if($request->so == 'Y'){        
        $sobulan = DB::select("SELECT count(so_id) as bulan FROM d_sales_order WHERE RIGHT(so_nota,6) = ".date('m').date('Y')."");
        $sotahun = DB::select("SELECT count(so_id) as tahun FROM d_sales_order WHERE RIGHT(so_nota,4) = ".date('Y')."");    
        $sorelease = DB::table('d_sales_order')
                        ->where('so_status', 'Released')
                        ->count();
        $soprinted = DB::table('d_sales_order')
                        ->where('so_status', 'Printed')
                        ->count();
        
        $so['bulan'] = $sobulan[0]->bulan;
        $so['tahun'] = $sotahun[0]->tahun;        
        $so['release'] = $sorelease;
        $so['printed'] = $soprinted;                        
      } if($request->wo == 'Y'){        
        $wobulan = DB::select("SELECT count(wo_id) as bulan FROM d_work_order WHERE RIGHT(wo_nota,6) = ".date('m').date('Y')."");
        $wotahun = DB::select("SELECT count(wo_id) as tahun FROM d_work_order WHERE RIGHT(wo_nota,4) = ".date('Y')."");
      
        $worelease = DB::table('d_work_order')
                        ->where('wo_status', 'Released')
                        ->count();
        $woprinted = DB::table('d_work_order')
                        ->where('wo_status', 'Printed')
                        ->count();
        
        $wo['bulan'] = $wobulan[0]->bulan;
        $wo['tahun'] = $wotahun[0]->tahun;        
        $wo['release'] = $worelease;
        $wo['printed'] = $woprinted;                
      } if($request->pay == 'Y'){        
        $paybulan = DB::select("SELECT count(po_id) as bulan FROM d_payment_order WHERE RIGHT(po_nota,6) = ".date('m').date('Y')."");
        $paytahun = DB::select("SELECT count(po_id) as tahun FROM d_payment_order WHERE RIGHT(po_nota,4) = ".date('Y')."");
      
        $payrelease = DB::table('d_payment_order')
                        ->where('po_status', 'Released')
                        ->count();
        $payprinted = DB::table('d_payment_order')
                        ->where('po_status', 'Printed')
                        ->count();
        
        $pay['bulan'] = $paybulan[0]->bulan;
        $pay['tahun'] = $paytahun[0]->tahun;        
        $pay['release'] = $payrelease;
        $pay['printed'] = $payprinted;                
      } if($request->ro == 'Y'){        
        $robulan = DB::select("SELECT count(ro_id) as bulan FROM d_requestorder WHERE MONTH(ro_insert) = ".date('m')." AND YEAR(ro_insert) = ".date('Y')."");
        $rotahun = DB::select("SELECT count(ro_id) as tahun FROM d_requestorder WHERE YEAR(ro_insert) = ".date('Y')."");            
        
        $ro['bulan'] = $robulan[0]->bulan;
        $ro['tahun'] = $rotahun[0]->tahun;               
      } if($request->po == 'Y'){        
        $pobulan = DB::select("SELECT count(po_id) as bulan FROM d_purchaseorder WHERE MONTH(po_insert) = ".date('m')." AND YEAR(po_insert) = ".date('Y')."");
        $potahun = DB::select("SELECT count(po_id) as tahun FROM d_purchaseorder WHERE YEAR(po_insert) = ".date('Y')."");            
        
        $po['bulan'] = $pobulan[0]->bulan;
        $po['tahun'] = $potahun[0]->tahun;               
      } if($request->stok == 'Y'){        
        $stoksemua = DB::table('i_stock_gudang')->select(DB::raw("SUM(sg_qty) as semua"))->first();     
        
        $stok['semua'] = $stoksemua->semua;        
      }

      return response()->json([
        'qo' => $qo,
        'so' => $so,
        'wo' => $wo,
        'pay' => $pay,
        'ro' => $ro,
        'po' => $po,
        'stok' => $stok
      ]);
    }

    public function showstok(){
        $data = DB::table('i_stock_gudang')
                    ->join('m_item', 'i_code', '=', 'sg_iditem')
                    ->select('i_name', 'sg_qty')
                    ->get();

        return response()->json($data);
    }

    public function insertwidget(Request $request){
        if($request->status == 'N'){
            $id = DB::table('dashboard')->where('mem', Auth::user()->m_id)->max('id')+1;

            DB::table('dashboard')
                    ->insert([
                     'id' => $id,
                     'mem' => Auth::user()->m_id,
                     'widget' => $request->widget,
                     'insert' => Carbon::now('Asia/Jakarta')
                    ]);
        } elseif($request->status == 'Y'){
            DB::table('dashboard')
                    ->where('mem', Auth::user()->m_id)
                    ->where('widget', $request->widget)
                    ->delete();
        }

        return response()->json('berhasil');
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
