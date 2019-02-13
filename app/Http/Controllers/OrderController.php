<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Facades\File;
use Auth;
use DB;
use carbon\carbon;
use Session;
use App\mMember;
use Crypt;
use Response;
use PDF;
use App\Http\Controllers\logController;

class OrderController extends Controller
{
    public function s_invoice()
    {
      if (!mMember::akses('SALES INVOICE', 'aktif')) {
        return redirect('error-404');
      }

      $data = DB::table('d_sales_invoice')
                  ->join('d_quotation', 'q_nota', '=', 'si_ref')
                  ->join('m_customer', 'c_code', '=', 'q_customer')
                  ->get();

    	return view('order/s_invoice/s_invoice', compact('data'));
    }
    public function detail_s_invoice(Request $request)
    {
      $data = DB::table('d_sales_invoice')
                  ->join('d_quotation', 'q_nota', '=', 'si_ref')
                  ->join('m_customer', 'c_code', '=', 'q_customer')
                  ->where('si_id', $request->id)
                  ->first();

      $datadt = DB::table('d_quotation_dt')
                  ->join('m_item', 'i_code', '=', 'qd_item')
                  ->join('d_unit', 'u_id', '=', 'i_unit')
                  ->where('qd_id', $data->q_id)
                  ->get();

      return view('order/s_invoice/detail_s_invoice', compact('data', 'datadt'));
    }
    public function print_salesinvoice(Request $request){
      $status = $request->status;

      $data = DB::table('d_quotation')
                ->join('d_sales_order', 'so_ref', '=', 'q_nota')
                ->join('m_customer', 'c_code', '=', 'q_customer')
                ->join('d_sales_invoice', 'si_ref', 'q_nota')
                ->where('q_id',$request->id)
                ->first();

      $data_dt = DB::table('d_quotation_dt')
                     ->join('m_item','i_code','=','qd_item')
                     ->join('d_unit', 'u_id', '=', 'i_unit')
                     ->where('qd_id',$request->id)
                     ->get();

       for ($i=0; $i < count($data); $i++) {
         $tmp = DB::table('d_payment_order')
                   ->where('po_ref', $data->q_nota)
                   ->sum('po_total');

         $data->q_update_by = $tmp;
       }


      return view('order.s_invoice.print_salesinvoice', compact('data','data_dt', 'status'));
    }
    public function datatable_so()
    {
        $data = DB::table('d_sales_order')
          ->join('d_quotation','so_ref','=','q_nota')
          ->where('q_status',1)
          ->orderBy('so_date', 'DESC')
          ->get();


        // return $data;
        $data = collect($data);
        // return $data;
        return Datatables::of($data)
                        ->addColumn('aksi', function ($data) {
                            return '<div class="btn-group">
                                        <a href="'.url('order/salesorder/s_order/detail_salesorder'). '/' . $data->so_id.'" class="btn btn-info btn-sm">Detail</a>
                                        <a onclick="printing(\''.$data->so_id.'\')" style="color:white" class="btn btn-primary btn-sm"><i class="fa fa-print"></i></a>
                                    </div>';
                        })
                        ->addColumn('none', function ($data) {
                            return '-';
                        })
                        ->addColumn('detail', function ($data) {
                            return '<button class="btn btn-outline-primary btn-sm" onclick="detail(this)" data-toggle="modal" data-target="#detail_item">Detail</button>';
                        })
                        ->addColumn('histori', function ($data) {
                            return '<button onclick="histori(this)" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#detail_status">Detail</button>';
                        })
                        ->addColumn('total', function ($data) {
                            $temp = 0;
                            $total = DB::table('d_quotation_dt')
                                       ->where('qd_id',$data->q_id)
                                       ->get();

                            foreach ($total as $key => $value) {
                              $temp += $value->qd_total;
                            }
                            return 'Rp. '. number_format($temp, 2, ",", ".");
                        })
                        ->addColumn('status', function ($data) {
                            if ($data->so_status == 'Released') {
                                return  '<span class="badge badge-pill badge-primary">Released</span>';
                            }else{
                                return  '<span class="badge badge-pill badge-success">Printed</span>';
                            }

                        })
                        ->addColumn('customer', function ($data) {
                            $cus = DB::table('m_customer')
                                     ->get();
                            foreach ($cus as $key => $value) {
                              if ($value->c_code == $data->q_customer) {
                                return $value->c_name;
                              }
                            }
                        })
                        ->rawColumns(['aksi', 'detail','histori','total','status','dp','remain','total','customer'])
                        ->addIndexColumn()
                        ->make(true);
    }
    // SALES ORDER
    public function s_order()
    {
      if (!mMember::akses('SALES ORDER', 'aktif')) {
        return redirect('error-404');
      }

      $printed = DB::table('d_sales_order')
                    ->where('so_status', 'Printed')
                    ->count();

      $released = DB::table('d_sales_order')
                    ->where('so_status', 'Released')
                    ->count();

    	return view('order/salesorder/s_order', compact('printed', 'released'));
    }

    public function detail_salesorder($id)
    {
        if (Auth::user()->akses('SALES ORDER','print')) {
            $data = DB::table('d_sales_order')
                      ->join('d_quotation','so_ref','=','q_nota')
                      ->where('q_status',1)
                      ->where('so_id',$id)
                      ->orderBy('q_id','DESC')
                      ->first();

            $marketing = DB::table('d_marketing')
                        ->get();
            $market = '';
            for ($i=0; $i < count($marketing); $i++) {
                if ($marketing[$i]->mk_id == $data->q_marketing) {
                    $market = $marketing[$i]->mk_code. ' - ' .$marketing[$i]->mk_name;
                }
            }

            $item = DB::table('m_item')
                      ->get();

            $tmp = DB::table('d_quotation_dt')
                       ->join('m_item','i_code','=','qd_item')
                       ->join('d_unit', 'u_id', '=', 'i_unit')
                       ->where('qd_id',$data->q_id)
                       ->orderby('qd_dt')
                       ->get();

            $data_dt = [];

            for ($i=0; $i < count($tmp); $i++) {
              if (stristr($tmp[$i]->i_code, 'BRG')) {
                $data_dt[$i] = $tmp[$i];
              }
            }

            return view('order/salesorder/detail_salesorder',compact('data_dt','data','market','id'));
        }
    }

    public function print_salesorder($id)
    {
      if (!mMember::akses('SALES ORDER', 'print')) {
        return redirect('error-404');
      }
        if (Auth::user()->akses('SALES ORDER','print')) {

            $head = DB::table('d_sales_order')
                          ->join('d_quotation','so_ref','=','q_nota')
                          ->join('m_customer','c_code','=','q_customer')
                          ->where('q_status',1)
                          ->where('so_id',$id)
                          ->orderBy('q_id','DESC')
                          ->first();

            $data = DB::table('d_quotation_dt')
                       ->join('m_item','i_code','=','qd_item')
                       ->join('d_unit','i_unit','=','u_id')
                       ->where('qd_id',$head->q_id)
                       ->where('i_jenis','!=','JASA')
                       ->get();

            $update = DB::table('d_sales_order')
                          ->where('so_id',$id)
                          ->update([
                            'so_status' => 'Printed',
                          ]);

            $count = count($data);
            $tes = 15 - $count;
            $array = [];

            if ($tes > 0) {
              for ($i=0; $i < $tes; $i++) {
                array_push($array, 'a');
              }
            }

            $term = DB::table('m_printoutterm')
                      ->where('p_menu', 'SO')
                      ->first();

            logController::inputlog('Sales Order', 'Print', $head->so_nota);
            return view('order/salesorder/print_salesorder',compact('term', 'array','data','head'));
        }
    }
    // ===================END SALES ORDER=========================
     public function datatable_wo()
    {
        $data = DB::table('d_work_order')
          ->join('d_quotation','wo_ref','=','q_nota')
          ->where('q_status',1)
          ->orderBy('wo_date', 'DESC')
          ->get();


        // return $data;
        $data = collect($data);
        // return $data;
        return Datatables::of($data)
                        ->addColumn('aksi', function ($data) {
                            return '<div class="btn-group">
                                        <a href="'.url('order/workorder/s_order/detail_workorder'). '/' . $data->wo_id.'" class="btn btn-info btn-sm">Detail</a>
                                        <a onclick="printing(\''.$data->wo_id.'\')" style="color:white" class="btn btn-primary btn-sm"><i class="fa fa-print"></i></a>
                                    </div>';
                        })
                        ->addColumn('none', function ($data) {
                            return '-';
                        })
                        ->addColumn('detail', function ($data) {
                            return '<button class="btn btn-outline-primary btn-sm" onclick="detail(this)" data-toggle="modal" data-target="#detail_item">Detail</button>';
                        })
                        ->addColumn('histori', function ($data) {
                            return '<button onclick="histori(this)" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#detail_status">Detail</button>';
                        })
                        ->addColumn('total', function ($data) {
                            $temp = 0;
                            $total = DB::table('d_quotation_dt')
                                       ->where('qd_id',$data->q_id)
                                       ->get();

                            foreach ($total as $key => $value) {
                              $temp += $value->qd_total;
                            }
                            return 'Rp. '. number_format($temp, 2, ",", ".");
                        })
                        ->addColumn('customer', function ($data) {
                            $cus = DB::table('m_customer')
                                     ->get();
                            foreach ($cus as $key => $value) {
                              if ($value->c_code == $data->q_customer) {
                                return $value->c_name;
                              }
                            }
                        })
                        ->addColumn('status', function ($data) {
                            if ($data->wo_status == 'Released') {
                                return  '<span class="badge badge-pill badge-primary">Released</span>';
                            }else{
                                return  '<span class="badge badge-pill badge-success">Printed</span>';
                            }

                        })
                        ->rawColumns(['aksi', 'detail','histori','total','status','dp','remain','customer'])
                        ->addIndexColumn()
                        ->make(true);
    }
    // work ORDER
    public function w_order()
    {
      if (!mMember::akses('WORK ORDER', 'aktif')) {
        return redirect('error-404');
      }

      $printed = DB::table('d_sales_order')
                    ->where('so_status', 'Printed')
                    ->count();

      $released = DB::table('d_sales_order')
                    ->where('so_status', 'Released')
                    ->count();

      return view('order/workorder/w_order', compact('printed', 'released'));
    }

    public function detail_workorder($id)
    {
        if (Auth::user()->akses('work ORDER','print')) {
            $data = DB::table('d_work_order')
                      ->join('d_quotation','wo_ref','=','q_nota')
                      ->where('q_status',1)
                      ->where('wo_id',$id)
                      ->orderBy('q_id','DESC')
                      ->first();

            $marketing = DB::table('d_marketing')
                        ->get();
            $market = '';
            for ($i=0; $i < count($marketing); $i++) {
                if ($marketing[$i]->mk_id == $data->q_marketing) {
                    $market = $marketing[$i]->mk_code. ' - ' .$marketing[$i]->mk_name;
                }
            }

            $item = DB::table('m_item')
                      ->get();

            $tmp = DB::table('d_quotation_dt')
                       ->join('m_item','i_code','=','qd_item')
                       ->join('d_unit', 'u_id', '=', 'i_unit')
                       ->where('qd_id',$data->q_id)
                       ->orderby('qd_dt')
                       ->get();

             $data_dt = [];

             for ($i=0; $i < count($tmp); $i++) {
               if (stristr($tmp[$i]->i_code, 'BJS')) {
                 $data_dt[$i] = $tmp[$i];
               }
             }

            return view('order/workorder/detail_workorder',compact('data_dt','data','market','id'));
        }
    }

    public function print_workorder(request $req)
    {
      if (!mMember::akses('WORK ORDER', 'print')) {
        return redirect('error-404');
      }
        if (Auth::user()->akses('work ORDER','print')) {

            $head = DB::table('d_work_order')
                          ->join('d_quotation','wo_ref','=','q_nota')
                          ->join('m_customer','c_code','=','q_customer')
                          ->where('q_status',1)
                          ->where('wo_id',$req->id)
                          ->orderBy('q_id','DESC')
                          ->first();

            $data = DB::table('d_quotation_dt')
                       ->join('m_item','i_code','=','qd_item')
                       ->join('d_unit','i_unit','=','u_id')
                       ->where('qd_id',$head->q_id)
                       ->where('i_jenis','JASA')
                       ->get();

            $update = DB::table('d_work_order')
                          ->where('wo_id',$req->id)
                          ->update([
                            'wo_status' => 'Printed',
                          ]);

            $count = count($data);
            $tes = 15 - $count;
            $array = [];

            if ($tes > 0) {
              for ($i=0; $i < $tes; $i++) {
                array_push($array, 'a');
              }
            }

            $term = DB::table('m_printoutterm')
                      ->where('p_menu', 'WO')
                      ->first();

            logController::inputlog('Work Order', 'Print', $head->wo_ref);
            return view('order/workorder/print_workorder',compact('term', 'array','data','head'));
        }
    }
    public function checklist()
    {
    	return view('order/checklistform/checklistform');
    }
    public function cekbarang()
    {
      if (!mMember::akses('CHECK STOCK', 'aktif')) {
        return redirect('error-404');
      }

      $data = DB::table('d_quotation')
                  ->join('d_quotation_dt', 'qd_id', 'q_id')
                  ->whereMonth('q_created_at', date('m'))
                  ->whereYear('q_created_at', date('Y'))
                  ->where('q_status', 1)
                  ->where('qd_item', 'LIKE', '%BRG%')
                  ->select('qd_item', DB::raw('qd_item as sg_iditem'), DB::raw('qd_item as sg_qty'), DB::raw('qd_item as i_name'), DB::raw('qd_item as sum'), DB::raw('qd_item as deficieny'))
                  ->get();

      for ($i=0; $i < count($data); $i++) {
          $data[$i]->sum = DB::table('d_quotation_dt')
                              ->where('qd_item', $data[$i]->qd_item)
                              ->sum('qd_qty');

          $tmp = DB::table('i_stock_gudang')
                    ->leftjoin('m_item', 'i_code', '=', 'sg_iditem')
                    ->where('sg_iditem', $data[$i]->qd_item)
                    ->first();

          if (!empty($tmp)) {
            $data[$i]->sg_qty = $tmp->sg_qty;
            $data[$i]->i_name = $tmp->i_name;
          } else {
            $tmp = DB::table('m_item')
                      ->where('i_code', $data[$i]->qd_item)
                      ->first();

            $data[$i]->sg_qty = 0;
            $data[$i]->i_name = $tmp->i_name;
          }

      }

      for ($i=0; $i < count($data); $i++) {
          $data[$i]->deficieny = (int)$data[$i]->sum - (int)$data[$i]->sg_qty;
      }


    	return view('order/cekbarang/cekbarang', compact('data'));
    }
    public function detailbarang($id){
      $id = decrypt($id);

      $data = DB::table('d_quotation_dt')
                  ->join('m_item', 'i_code', '=', 'qd_item')
                  ->where('qd_item', $id)
                  ->get();

      return view('order.cekbarang.detailbarang', compact('data'));
    }
    public function f_penjualan()
    {
    	return view('order/f_penjualan/f_penjualan');
    }
    public function proforma()
    {
    	return view('order/proforma/proforma');
    }
    // pembayaran deposit
    public function datatable_deposit()
    {
        $data = DB::table('d_quotation')
                  ->join('m_customer', 'c_code', '=', 'q_customer')
                  ->where('q_status',1)
                  ->orderBy('q_id','DESC')
                  ->get();

                  for ($i=0; $i < count($data); $i++) {
                    DB::table('d_quotation')
                          ->where('q_id', $data[$i]->q_id)
                          ->update([
                            'q_remain' => $data[$i]->q_total - $data[$i]->q_dp
                          ]);
                  }


        // return $data;
        $data = collect($data);
        // return $data;
        return Datatables::of($data)
                        ->addColumn('aksi', function ($data) {
                            $cek = DB::table('d_paydeposit')
                                      ->where('p_qo', $data->q_id)
                                      ->count();

                            $proses = '';
                            $approved = '';
                            if ($cek == 0) {
                                $proses = '<a href="'.url('/order/pembayarandeposit/pembayarandeposit/detail_pembayarandeposit').'/'.$data->q_id.'" class="btn btn-outline-info btn-sm">Process</a>';                              
                            } else {
                              $proses = '';
                              if (Auth::user()->m_jabatan == 'MANAGER') {
                                  $approved = '<button type="button" class="btn btn-success" title="Approve" onclick="approve('.$data->q_id.')"><em class="fa fa-check"> </em></button>';
                              } else {
                                $approved = '';
                              }
                            }

                            $print = '';
                            if ((int)$data->q_dp != 0) {
                              $print = '<a href="'.route('print_tandaterimakasih').'?id='.Crypt::encrypt($data->q_id).'" class="btn btn-primary btn-sm" target="_blank"><i class="fa fa-print"></i></a>';
                            } else {
                              $print = '';
                            }

                            return '<div class="btn-group">'.
                              $proses.
                              $print.
                              $approved.
                            '</div>';
                        })
                        ->addColumn('none', function ($data) {
                            return '-';
                        })
                        ->addColumn('detail', function ($data) {
                            return '<button class="btn btn-outline-primary btn-sm" onclick="detail(this)" data-toggle="modal" data-target="#detail_item">Detail</button>';
                        })
                        ->addColumn('histori', function ($data) {
                            return '<button onclick="histori(this)" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#detail_status">Detail</button>';
                        })
                        ->addColumn('total', function ($data) {
                            return 'Rp. '. number_format($data->q_total, 2, ",", ".");
                        })
                        ->addColumn('dp', function ($data) {
                            return 'Rp. '. number_format($data->q_dp, 2, ",", ".");
                        })
                        ->addColumn('remain', function ($data) {
                            return 'Rp. '. number_format(($data->q_total - $data->q_dp), 2, ",", ".");
                        })
                        ->addColumn('status_so', function ($data) {
                            $so = DB::table('d_quotation')
                                      ->leftjoin('d_sales_order','q_nota','=','so_ref')
                                      ->where('q_id',$data->q_id)
                                      ->first();

                            if ($so->so_status != null) {
                                if ($so->so_status != 'Released') {
                                    return  '<span class="badge badge-pill badge-success">Printed</span>';
                                }else{
                                    return  '<span class="badge badge-pill badge-primary">Released</span>';
                                }
                            }else{
                                return  '<span class="badge badge-pill badge-danger">Non SO</span>';
                            }

                        })->addColumn('status_wo', function ($data) {
                            $wo = DB::table('d_quotation')
                                      ->leftjoin('d_work_order','q_nota','=','wo_ref')
                                      ->where('q_id',$data->q_id)
                                      ->first();
                            if ($wo->wo_status != null) {
                                if ($wo->wo_status != 'Released') {
                                    return  '<span class="badge badge-pill badge-success">Printed</span>';
                                }else{
                                    return  '<span class="badge badge-pill badge-primary">Released</span>';
                                }
                            }else{
                                return  '<span class="badge badge-pill badge-danger">Non WO</span>';
                            }

                        })
                        ->rawColumns(['aksi', 'detail','histori','total','status_so','dp','remain','status_wo'])
                        ->addIndexColumn()
                        ->make(true);
    }
    public function pembayarandeposit()
    {
      if (!mMember::akses('PEMBAYARAN DEPOSIT', 'aktif')) {
        return redirect('error-404');
      }

    	return view('order/pembayarandeposit/pembayarandeposit');
    }
    public function detail_pembayarandeposit($id)
    {

        $item = DB::table('m_item')
                      ->get();

        $data = DB::table('d_quotation')
                  ->where('q_id',$id)
                  ->first();


        $so = DB::table('d_quotation')
                  ->leftjoin('d_sales_order','q_nota','=','so_ref')
                  ->where('q_id',$id)
                  ->first();

        $so_dt = DB::table("d_quotation_dt")
                   ->leftjoin('m_item','qd_item','=','i_code')
                   ->where('qd_id',$id)
                   ->where('i_jenis','!=','JASA')
                   ->first();

        $wo = DB::table('d_quotation')
                  ->leftjoin('d_work_order','q_nota','=','wo_ref')
                  ->where('q_id',$id)
                  ->first();

        $wo_dt = DB::table("d_quotation_dt")
                   ->leftjoin('m_item','qd_item','=','i_code')
                   ->where('qd_id',$id)
                   ->where('i_jenis','JASA')
                   ->first();

        $bulan = Carbon::now()->format('m');
        $tahun = Carbon::now()->format('Y');
        // NOTA SO
        $cari_nota = DB::select("SELECT  substring(max(so_nota),4,3) as id from d_sales_order
                                        WHERE MONTH(so_date) = '$bulan'
                                        AND YEAR(so_date) = '$tahun'");
        $index = filter_var($cari_nota[0]->id,FILTER_SANITIZE_NUMBER_INT);

        $index = (integer)$cari_nota[0]->id + 1;
        $index = str_pad($index, 3, '0', STR_PAD_LEFT);

        $nota_so = '';
        if ($so_dt != null) {
            $nota_so = 'SO-'. $index . '/' . $data->q_type . '/' . $data->q_type_product .'/'. $bulan . $tahun;
        }
        // NOTA WO
        $cari_nota = DB::select("SELECT  substring(max(wo_nota),4,3) as id from d_work_order
                                        WHERE MONTH(wo_date) = '$bulan'
                                        AND YEAR(wo_date) = '$tahun'");
        $index = filter_var($cari_nota[0]->id,FILTER_SANITIZE_NUMBER_INT);

        $index = (integer)$cari_nota[0]->id + 1;
        $index = str_pad($index, 3, '0', STR_PAD_LEFT);

        $nota_wo = '';
        if ($wo_dt != null) {
            $nota_wo = 'WO-'. $index . '/' . $data->q_type . '/' . $data->q_type_product .'/'. $bulan . $tahun;
        }
        // END
        $market = '';
        $marketing = DB::table('d_marketing')
                        ->get();

        for ($i=0; $i < count($marketing); $i++) {
            if ($marketing[$i]->mk_id == $data->q_marketing) {
                $market = $marketing[$i]->mk_code. ' - ' .$marketing[$i]->mk_name;
            }
        }

        $data_dt = DB::table('d_quotation_dt')
                       ->leftjoin('m_item','i_code','=','qd_item')
                       ->where('qd_id',$id)
                       ->get();

        $percent = DB::table('m_percent')
                    ->where('p_status', 'Y')
                    ->first();


        if ($percent == null) {
          Session::flash('gagal', 'Percent tidak ada yang aktif, aktifkan percent di master percent terlebih dahulu!');
          return view('order/pembayarandeposit/pembayarandeposit');
        } else {
          return view('order/pembayarandeposit/detail_pembayarandeposit',compact('item','data','data_dt','id','nota_so','market','nama_item','nota_wo','so','wo','percent'));
        }
    }

    public function save_deposit(Request $req){
      DB::beginTransaction();
      try {

        $cek = DB::table('d_paydeposit')
                  ->where('p_qo', $req->id)
                  ->count();

        if ($cek == 0) {
          $id = DB::table('d_paydeposit')->max('p_id')+1;

          DB::table('d_paydeposit')
                ->insert([
                  'p_id' => $id,
                  'p_qo' => $req->id,
                  'p_so' => $req->so_nota,
                  'p_wo' => $req->wo_nota,
                  'p_note' => $req->nota1,
                  'p_type' => $req->payment_type,
                  'p_amount' => filter_var($req->dp,FILTER_SANITIZE_NUMBER_INT)/100,
                  'p_remain' => filter_var($req->remain,FILTER_SANITIZE_NUMBER_INT)/100,
                  'p_method' => $req->pay_method,
                  'p_note2' => $req->nota2,
                  'p_account' => $req->akun,
                  'p_date' => carbon::parse($req->date)->format('Y-m-d'),
                  'p_insert' => Carbon::now('Asia/Jakarta'),
                  'p_insert_by' => Auth::user()->m_name,
                ]);
        } else {
          DB::table('d_paydeposit')
                ->where('p_qo', $req->id)
                ->update([
                  'p_so' => $req->so_nota,
                  'p_wo' => $req->wo_nota,
                  'p_note' => $req->nota1,
                  'p_type' => $req->payment_type,
                  'p_amount' => filter_var($req->dp,FILTER_SANITIZE_NUMBER_INT)/100,
                  'p_remain' => filter_var($req->remain,FILTER_SANITIZE_NUMBER_INT)/100,
                  'p_method' => $req->pay_method,
                  'p_note2' => $req->nota2,
                  'p_account' => $req->akun,
                  'p_date' => carbon::parse($req->date)->format('Y-m-d'),
                  'p_insert' => Carbon::now('Asia/Jakarta'),
                  'p_insert_by' => Auth::user()->m_name,
                ]);
        }

        DB::commit();
        return response()->json(['status' => 1]);
      } catch (Exception $e) {
        DB::rollback();
        return response()->json(['status' => 2]);
      }

    }

    public function approve_deposit(request $req)
    {
        return DB::transaction(function() use ($req) {

            $data = DB::table('d_quotation')
                      ->where('q_id',$req->id)
                      ->first();

            $paydeposit = DB::table('d_paydeposit')
                            ->where('p_qo', $req->id)
                            ->first();

            DB::table('d_paydeposit')
                            ->where('p_qo', $req->id)
                            ->delete();

            // SALES ORDER
            $cari = DB::table('d_sales_order')
                      ->where('so_nota',$paydeposit->p_so)
                      ->first();
            $nota = $paydeposit->p_so;
            if ($nota != '') {
                if ($cari == null) {
                    $id = DB::table('d_sales_order')
                        ->max('so_id')+1;

                    $save = DB::table('d_sales_order')
                              ->insert([
                                'so_id'         => $id,
                                'so_nota'       => $nota,
                                'so_ref'        => $data->q_nota,
                                'so_note'       => $paydeposit->p_note,
                                'so_type'       => $paydeposit->p_type,
                                'so_amount'     => filter_var($paydeposit->p_amount,FILTER_SANITIZE_NUMBER_INT)/100,
                                'so_remain'     => filter_var($paydeposit->p_remain,FILTER_SANITIZE_NUMBER_INT)/100,
                                'so_method'     => $paydeposit->p_method,
                                'so_note2'      => $paydeposit->p_note2,
                                'so_account'    => $paydeposit->p_account,
                                'so_status'     => 'Released',
                                'so_date'       => carbon::parse($paydeposit->p_date)->format('Y-m-d'),
                                'so_update_at'  => carbon::now(),
                                'so_update_by'  => $paydeposit->p_insert_by,
                                'so_create_by'  => $paydeposit->p_insert_by,
                              ]);

                }else{
                    $save = DB::table('d_sales_order')
                              ->where('so_nota',$req->so_nota)
                              ->update([
                                'so_nota'       => $nota,
                                'so_ref'        => $data->q_nota,
                                'so_note'       => $paydeposit->p_note,
                                'so_type'       => $paydeposit->p_type,
                                'so_amount'     => filter_var($paydeposit->p_amount,FILTER_SANITIZE_NUMBER_INT)/100,
                                'so_remain'     => filter_var($paydeposit->p_remain,FILTER_SANITIZE_NUMBER_INT)/100,
                                'so_method'     => $paydeposit->p_method,
                                'so_note2'      => $paydeposit->p_note2,
                                'so_account'    => $paydeposit->p_account,
                                'so_status'     => 'Released',
                                'so_date'       => carbon::parse($paydeposit->p_date)->format('Y-m-d'),
                                'so_update_at'  => carbon::now(),
                                'so_update_by'  => $paydeposit->p_insert_by,
                              ]);

                }
            }

            // WORK ORDER
            $cari = DB::table('d_work_order')
                      ->where('wo_nota',$req->so_nota)
                      ->first();
            $nota = $paydeposit->p_wo;

            if ($nota != '') {
                if ($cari == null) {
                    $id = DB::table('d_work_order')
                        ->max('wo_id')+1;

                    $save = DB::table('d_work_order')
                              ->insert([
                                'wo_id'         => $id,
                                'wo_nota'       => $nota,
                                'wo_ref'        => $data->q_nota,
                                'wo_note'       => $paydeposit->p_note,
                                'wo_type'       => $paydeposit->p_type,
                                'wo_amount'     => filter_var($paydeposit->p_amount,FILTER_SANITIZE_NUMBER_INT)/100,
                                'wo_remain'     => filter_var($paydeposit->p_remain,FILTER_SANITIZE_NUMBER_INT)/100,
                                'wo_method'     => $paydeposit->p_method,
                                'wo_note2'      => $paydeposit->p_note2,
                                'wo_account'    => $paydeposit->p_account,
                                'wo_status'     => 'Released',
                                'wo_date'       => carbon::parse($paydeposit->p_date)->format('Y-m-d'),
                                'wo_update_at'  => carbon::now(),
                                'wo_update_by'  => $paydeposit->p_insert_by,
                                'wo_create_by'  => $paydeposit->p_insert_by,
                              ]);
                }else{
                    $save = DB::table('d_work_order')
                              ->where('wo_nota',$paydeposit->p_wo)
                              ->update([
                                'wo_nota'       => $nota,
                                'wo_ref'        => $data->q_nota,
                                'wo_note'       => $paydeposit->p_nota,
                                'wo_type'       => $paydeposit->p_type,
                                'wo_amount'     => filter_var($paydeposit->p_amount,FILTER_SANITIZE_NUMBER_INT)/100,
                                'wo_remain'     => filter_var($paydeposit->p_remain,FILTER_SANITIZE_NUMBER_INT)/100,
                                'wo_method'     => $paydeposit->p_method,
                                'wo_note2'      => $paydeposit->p_note2,
                                'wo_account'    => $paydeposit->p_account,
                                'wo_status'     => 'Released',
                                'wo_date'       => carbon::parse($paydeposit->p_date)->format('Y-m-d'),
                                'wo_update_at'  => carbon::now(),
                                'wo_update_by'  => $paydeposit->p_insert_by,
                              ]);
                }
            }



            $update = DB::table('d_quotation')
                        ->where('q_id',$req->id)
                        ->update([
                            'q_dp'     => filter_var($paydeposit->p_amount,FILTER_SANITIZE_NUMBER_INT)/100,
                            'q_remain' => filter_var($paydeposit->p_remain,FILTER_SANITIZE_NUMBER_INT)/100,
                            'q_approved' => 'Y'
                        ]);

                  if ((int)$req->remain == 0) {
                    $id = DB::table('d_sales_invoice')->max('si_id')+1;
                    $bulan = date('m');
                    $tahun = date('Y');
                    $cari_nota = DB::select("SELECT  substring(max(si_nota),4,3) as id from d_sales_invoice
                                                    WHERE MONTH(si_date) = '$bulan'
                                                    AND YEAR(si_date) = '$tahun'");
                    $index = filter_var($cari_nota[0]->id,FILTER_SANITIZE_NUMBER_INT);

                    $index = (integer)$cari_nota[0]->id + 1;
                    $index = str_pad($index, 3, '0', STR_PAD_LEFT);

                    $notasi = 'SI-'. $index . '/' . $data->q_type . '/' . $data->q_type_product .'/'. $bulan . $tahun;


                    DB::table('d_sales_invoice')
                        ->insert([
                          'si_id' => $id,
                          'si_ref' => $data->q_nota,
                          'si_nota' => $notasi,
                          'si_date' => Carbon::now('Asia/Jakarta')
                        ]);
                  }

            logController::inputlog('Pembayaran Deposit', 'Insert', '');
            return response()->json(['status' => 1]);
        });
    }
    // =====================END PEMBAYARAN DEPOSIT=====================================================
    // =====================PAYMENT ORDER=====================================================
    public function payment_order()
    {
      if (!mMember::akses('PAYMENT ORDER', 'aktif')) {
        return redirect('error-404');
      }
    	return view('order.payment_order.payment_order');
    }

    public function datatable_payment_order()
    {

        $so = DB::table('d_sales_order')
                ->select('so_ref as nota')
                ->where('so_status','Printed')
                ->get()->toArray();

        $wo = DB::table('d_work_order')
                ->select('wo_ref as nota')
                ->where('wo_status','Printed')
                ->get()->toArray();

        $temp = array_merge($so,$wo);
        $merge = [];

        for ($i=0; $i < count($temp); $i++) {
          $merge[$i] = $temp[$i]->nota;
        }
        $merge = array_unique($merge);
        $merge = array_values($merge);
        $data = DB::table('d_quotation')
                  ->join('m_customer', 'c_code', '=', 'q_customer')
                  ->where('q_status',1)
                  ->whereIn('q_nota',$merge)
                  ->orderBy('q_id','DESC')
                  ->get();

        $temp = $data;



        // return $data;
        $data = collect($data);
        // return $data;
        return Datatables::of($data)
                        ->addColumn('aksi', function ($data) {
                          if ($data->q_remain != 0) {
                            return '<div class="btn-group">'.
                            '<a href="'.url('/order/payment_order/detail_payment_order').'/'.$data->q_id.'" class="btn btn-outline-info btn-sm">Process</a>'.
                              '<a href="'.route('print_tandaterimakasih').'" class="btn btn-primary btn-sm" target="_blank"><i class="fa fa-print"></i></a>'.
                            '</div>';
                          }else{
                            return  '<span class="badge badge-pill badge-success">Paid Off</span>';
                          }
                        })
                        ->addColumn('none', function ($data) {
                            return '-';
                        })
                        ->addColumn('detail', function ($data) {
                            return '<button class="btn btn-outline-primary btn-sm" onclick="detail(this)" data-toggle="modal" data-target="#detail_item">Detail</button>';
                        })
                        ->addColumn('histori', function ($data) {
                            return '<button onclick="histori(this)" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#detail_status">Detail</button>';
                        })
                        ->addColumn('total', function ($data) {
                            return 'Rp. '. number_format($data->q_total, 2, ",", ".");
                        })
                        ->addColumn('dp', function ($data) {
                            return 'Rp. '. number_format($data->q_dp, 2, ",", ".");
                        })
                        ->addColumn('remain', function ($data) {
                            return 'Rp. '. number_format($data->q_remain, 2, ",", ".");
                        })
                        ->addColumn('status', function ($data) {
                            if ($data->q_remain == 0) {
                                return  '<span class="badge badge-pill badge-success">Paid Off</span>';
                            }else{
                                return  '<span class="badge badge-pill badge-warning">Not Yet</span>';
                            }

                        })
                        ->rawColumns(['aksi', 'detail','histori','total','status','dp','remain'])
                        ->addIndexColumn()
                        ->make(true);
    }

    public function detail_payment_order($id)
    {
        $item = DB::table('m_item')
                      ->get();

        $data = DB::table('d_quotation')
                  ->where('q_id',$id)
                  ->first();


        $so = DB::table('d_quotation')
                  ->leftjoin('d_sales_order','q_nota','=','so_ref')
                  ->where('q_id',$id)
                  ->first();
        $so_dt = DB::table("d_quotation_dt")
                   ->join('m_item','qd_item','=','i_code')
                   ->where('qd_id',$id)
                   ->where('i_jenis','!=','JASA')
                   ->first();

        $wo = DB::table('d_quotation')
                  ->leftjoin('d_work_order','q_nota','=','wo_ref')
                  ->where('q_id',$id)
                  ->first();

        $wo_dt = DB::table("d_quotation_dt")
                   ->join('m_item','qd_item','=','i_code')
                   ->where('qd_id',$id)
                   ->where('i_jenis','JASA')
                   ->first();

        $bulan = Carbon::parse($data->q_date)->format('m');
        $tahun = Carbon::parse($data->q_date)->format('Y');
        // NOTA PO
        $cari_nota = DB::select("SELECT  substring(max(po_nota),4,3) as id from d_payment_order
                                        WHERE MONTH(po_date) = '$bulan'
                                        AND YEAR(po_date) = '$tahun'");
        $index = filter_var($cari_nota[0]->id,FILTER_SANITIZE_NUMBER_INT);

        $index = (integer)$cari_nota[0]->id + 1;
        $index = str_pad($index, 3, '0', STR_PAD_LEFT);

        $nota_po = 'PI-'. $index . '/' . $data->q_type . '/' . $data->q_type_product .'/'. $bulan . $tahun;

        // END
        $market = '';
        $marketing = DB::table('d_marketing')
                        ->get();

        for ($i=0; $i < count($marketing); $i++) {
            if ($marketing[$i]->mk_id == $data->q_marketing) {
                $market = $marketing[$i]->mk_code. ' - ' .$marketing[$i]->mk_name;
            }
        }

        $data_dt = DB::table('d_quotation_dt')
                       ->join('m_item','i_code','=','qd_item')
                       ->where('qd_id',$id)
                       ->get();

        $percent = DB::table('m_percent')
                    ->where('p_status', 'Y')
                    ->first();

        $validation = [];
        if ($so_dt != null or $wo_dt != null) {
          array_push($validation, 1);
        }
        if (in_array(1, $validation)) {
          if ($so->so_status == 'Printed' or $wo->wo_status == 'Printed') {
            return view('order/payment_order/detail_payment_order',compact('percent','item','data','data_dt','id','nota_po','market','nama_item','so','wo'));
          }else{
            return redirect()->back();
          }
        }
    }

    public function save_payment_order(request $req)
    {
      if (!mMember::akses('PAYMENT ORDER', 'tambah')) {
        return redirect('error-404');
      }
        return DB::transaction(function() use ($req) {
          // dd($req->all());
          $id = DB::table('d_payment_order')
              ->max('po_id')+1;

          $data = DB::table('d_quotation')
                    ->where('q_id',$req->id)
                    ->first();

          $save = DB::table('d_payment_order')
                    ->insert([
                      'po_id'         => $id,
                      'po_nota'       => $req->po_nota,
                      'po_ref'        => $data->q_nota,
                      'po_note'       => $req->nota1,
                      'po_type'       => $req->payment_type,
                      'po_total'      => filter_var($req->amount,FILTER_SANITIZE_NUMBER_INT),
                      'po_method'     => $req->pay_method,
                      'po_note2'      => $req->nota2,
                      'po_account'    => $req->akun,
                      'po_status'     => 'Released',
                      'po_date'       => carbon::parse($req->dates)->format('Y-m-d'),
                      'po_updated_at' => carbon::now(),
                      'po_created_at' => carbon::now(),
                      'po_updated_by' => Auth::user()->m_name,
                      'po_created_by' => Auth::user()->m_name,
                    ]);



          $hasil  = $data->q_remain - filter_var($req->amount,FILTER_SANITIZE_NUMBER_INT);

          $update = DB::table('d_quotation')
                      ->where('q_id',$req->id)
                      ->update([
                          'q_remain' => $hasil
                      ]);

                      if ((int)$hasil == 0) {
                        $id = DB::table('d_sales_invoice')->max('si_id')+1;
                        $bulan = date('m');
                        $tahun = date('Y');
                        $cari_nota = DB::select("SELECT  substring(max(si_nota),4,3) as id from d_sales_invoice
                                                        WHERE MONTH(si_date) = '$bulan'
                                                        AND YEAR(si_date) = '$tahun'");
                        $index = filter_var($cari_nota[0]->id,FILTER_SANITIZE_NUMBER_INT);

                        $index = (integer)$cari_nota[0]->id + 1;
                        $index = str_pad($index, 3, '0', STR_PAD_LEFT);

                        $notasi = 'SI-'. $index . '/' . $data->q_type . '/' . $data->q_type_product .'/'. $bulan . $tahun;


                        DB::table('d_sales_invoice')
                            ->insert([
                              'si_id' => $id,
                              'si_ref' => $data->q_nota,
                              'si_nota' => $notasi,
                              'si_date' => Carbon::now('Asia/Jakarta')
                            ]);
                      }

                      logController::inputlog('Payment Order', 'Insert', $req->po_nota);

          return response()->json(['status' => 1]);
        });
    }

    public function proforma_invoice()
    {
      if (!mMember::akses('PROFORMA INVOICE', 'aktif')) {
        return redirect('error-404');
      }
      return view('order.proforma_invoice.proforma_invoice');
    }

    public function datatable_proforma_invoice()
    {

    $data = DB::table('d_quotation')
              ->join('m_customer', 'c_code', '=', 'q_customer')
              ->where('q_status',1)
              ->orderBy('q_id','DESC')
              ->get();

              for ($i=0; $i < count($data); $i++) {
                $tmp = DB::table('d_payment_order')
                          ->where('po_ref', $data[$i]->q_nota)
                          ->sum('po_total');

                $data[$i]->q_update_by = $tmp;

                $bayar = $data[$i]->q_update_by + $data[$i]->q_dp;

                DB::table('d_quotation')
                      ->where('q_id', $data[$i]->q_id)
                      ->update([
                        'q_remain' => $data[$i]->q_total - $bayar
                      ]);

              }

                      // return $data;
                      $data = collect($data);
                      // return $data;
                      return Datatables::of($data)
                                      ->addColumn('aksi', function ($data) {
                                          $a =  '<div class="btn-group">';

                                          if (Auth::user()->akses('PROFORMA INVOICE','print')) {
                                            $c = '<button type="button" onclick="printing(\''.$data->q_id.'\')" class="btn btn-warning btn-lg" title="edit">'.'<label class="fa fa-print"></label></button>';
                                          } else {
                                            $c = '';
                                          }

                                            $d = '</div>';

                                          return $a .  $c . $d;
                                      })
                                      ->addColumn('pi', function ($data) {
                                          $tmp = str_replace('QO', 'PI', $data->q_nota);
                                          return $tmp;
                                      })
                                      ->addColumn('none', function ($data) {
                                          return '-';
                                      })
                                      ->addColumn('detail', function ($data) {
                                          return '<button class="btn btn-outline-primary btn-sm" onclick="detail(this)" data-toggle="modal" data-target="#detail_item">Detail</button>';
                                      })
                                      ->addColumn('histori', function ($data) {
                                          return '<button onclick="histori(this)" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#detail_status">Detail</button>';
                                      })
                                      ->addColumn('total', function ($data) {
                                          return 'Rp. '. number_format($data->q_total, 2, ",", ".");
                                      })
                                      ->addColumn('dp', function ($data) {
                                          return 'Rp. '. number_format($data->q_dp, 2, ",", ".");
                                      })
                                      ->addColumn('q_update_by', function ($data) {
                                          return 'Rp. '. number_format($data->q_update_by, 2, ",", ".");
                                      })
                                      ->addColumn('remain', function ($data) {
                                          return 'Rp. '. number_format(($data->q_remain), 2, ",", ".");
                                      })
                                      ->rawColumns(['aksi', 'pi', 'detail','histori','total','dp','remain'])
                                      ->addIndexColumn()
                                      ->make(true);
    }

    public function detail_proforma_invoice($id)
    {

      $item = DB::table('m_item')
                ->get();

      $data = DB::table('d_quotation')
                ->join('d_payment_order','po_ref','=','q_nota')
                ->where('po_id',$id)
                ->first();

      $market = '';
      $marketing = DB::table('d_marketing')
                      ->get();

      for ($i=0; $i < count($marketing); $i++) {
          if ($marketing[$i]->mk_id == $data->q_marketing) {
              $market = $marketing[$i]->mk_code. ' - ' .$marketing[$i]->mk_name;
          }
      }

      $data_dt = DB::table('d_quotation_dt')
                     ->join('m_item','i_code','=','qd_item')
                     ->where('qd_id',$data->q_id)
                     ->get();

      if (Auth::user()->akses('PROFORMA INVOICE','ubah')) {
        return view('order/proforma_invoice/detail_proforma_invoice',compact('item','data','data_dt','id','market','nama_item'));
      }else{
        return redirect()->back();
      }
    }

    public function save_proforma_invoice(request $req)
    {
      if (!mMember::akses('PROFORMA INVOICE', 'tambah')) {
        return redirect('error-404');
      }
        return DB::transaction(function() use ($req) {
          // PENGEMBALIAN NILAI QUOTATION

          $data = DB::table('d_payment_order')
                    ->join('d_quotation','q_nota','=','po_ref')
                    ->where('po_id',$req->id)
                    ->first();

          $hasil = $data->q_remain + $data->po_total;

          $update = DB::table('d_quotation')
                      ->where('q_id',$data->q_id)
                      ->update([
                          'q_remain' => $hasil
                      ]);
          // UPDATE PAYMENT ORDER

          $save = DB::table('d_payment_order')
                    ->where('po_id',$req->id)
                    ->update([
                      'po_note'       => $req->nota1,
                      'po_type'       => $req->payment_type,
                      'po_total'      => filter_var($req->amount,FILTER_SANITIZE_NUMBER_INT),
                      'po_method'     => $req->pay_method,
                      'po_note2'      => $req->nota2,
                      'po_account'    => $req->akun,
                      'po_status'     => 'Released',
                      'po_date'       => carbon::parse($req->dates)->format('Y-m-d'),
                      'po_updated_at' => carbon::now(),
                      'po_created_at' => carbon::now(),
                      'po_updated_by' => Auth::user()->m_name,
                      'po_created_by' => Auth::user()->m_name,
                    ]);

          $fix  = $hasil - filter_var($req->amount,FILTER_SANITIZE_NUMBER_INT);

          $update = DB::table('d_quotation')
                      ->where('q_id',$data->q_id)
                      ->update([
                          'q_remain' => $fix
                      ]);

                      logController::inputlog('Proforma Invoice', 'Insert', '');

        return response()->json(['status' => 1]);
        });
    }

    public function hapus_proforma_invoice(request $req)
    {
      if (!mMember::akses('PROFORMA INVOICE', 'hapus')) {
        return redirect('error-404');
      }
        return DB::transaction(function() use ($req) {
          $data = DB::table('d_payment_order')
                    ->join('d_quotation','q_nota','=','po_ref')
                    ->where('po_id',$req->id)
                    ->first();
          $hasil = $data->q_remain + $data->po_total;

          $update = DB::table('d_quotation')
                      ->where('q_id',$data->q_id)
                      ->update([
                          'q_remain' => $hasil
                      ]);

          $hapus = DB::table('d_payment_order')
                    ->where('po_id',$req->id)
                    ->delete();

                    logController::inputlog('Proforma Invoice', 'Hapus', '');

          return response()->json(['status' => 1]);
        });
    }

    public function print_proforma_invoice(Request $request)
    {
      if (!mMember::akses('PROFORMA INVOICE', 'print')) {
        return redirect('error-404');
      }
      $data = DB::table('d_quotation')
                ->leftjoin('d_sales_order', 'so_ref', '=', 'q_nota')
                ->leftjoin('m_customer', 'c_code', '=', 'q_customer')
                ->where('q_id',$request->id)
                ->first();

      $data_dt = DB::table('d_quotation_dt')
                     ->leftjoin('m_item','i_code','=','qd_item')
                     ->leftjoin('d_unit', 'u_id', '=', 'i_unit')
                     ->where('qd_id',$data->q_id)
                     ->get();

      for ($i=0; $i < count($data); $i++) {
        $tmp = DB::table('d_payment_order')
                  ->where('po_ref', $data->q_nota)
                  ->sum('po_total');

        $data->q_update_by = $tmp;
      }

      $term = DB::table('m_printoutterm')->where('p_menu', 'PI')->first();

      return view('order.proforma_invoice.print_proformainvoice', compact('data', 'data_dt', 'term'));
    }

    public function print_tandaterimakasih(Request $request){
      $data = DB::table('d_quotation')
                ->join('m_customer', 'c_code', '=', 'q_customer')
                ->where('q_id', decrypt($request->id))
                ->first();

      $terbilang = 'Uang Senilai ' . 'Rp. '. number_format($data->q_dp, 2, ",", ".") . '('.$this->penyebut((int)$data->q_dp).' Rupiah )';

      $terbilang1 = '';
      $terbilang2 = '';
      $terbilang3 = '';
      $terbilang4 = '';
      $terbilang5 = '';
      if (strlen($terbilang) > 75) {
        $terbilang1 = substr($terbilang, 75);
        $terbilang = substr($terbilang, 0, 75);
      }

      if ($terbilang1 != "") {
        if (strlen($terbilang1) > 86) {
          $terbilang2 = substr($terbilang1, 86);
        }
      }

      if ($terbilang2 != "") {
        if (strlen($terbilang2) > 86) {
          $terbilang3 = substr($terbilang2, 86);
        }
      }

      if ($terbilang3 != "") {
        if (strlen($terbilang3) > 86) {
          $terbilang4 = substr($terbilan3, 86);
        }
      }

      if ($terbilang4 != "") {
        if (strlen($terbilang4) > 86) {
          $terbilang5 = substr($terbilan4, 86);
        }
      }


      return view('order.pembayarandeposit.print_tandaterimakasih', compact('data', 'terbilang', 'terbilang1', 'terbilang2', 'terbilang3', 'terbilang4', 'terbilang5'));
    }

    public function penyebut($nilai) {
		$nilai = abs($nilai);
		$huruf = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
		$temp = "";
		if ($nilai < 12) {
			$temp = " ". $huruf[$nilai];
		} else if ($nilai <20) {
			$temp = $this->penyebut($nilai - 10). " Belas";
		} else if ($nilai < 100) {
			$temp = $this->penyebut($nilai/10)." Puluh". $this->penyebut($nilai % 10);
		} else if ($nilai < 200) {
			$temp = " Seratus" . $this->penyebut($nilai - 100);
		} else if ($nilai < 1000) {
			$temp = $this->penyebut($nilai/100) . " Ratus" . $this->penyebut($nilai % 100);
		} else if ($nilai < 2000) {
			$temp = " Seribu" . $this->penyebut($nilai - 1000);
		} else if ($nilai < 1000000) {
			$temp = $this->penyebut($nilai/1000) . " Ribu" . $this->penyebut($nilai % 1000);
		} else if ($nilai < 1000000000) {
			$temp = $this->penyebut($nilai/1000000) . " Juta" . $this->penyebut($nilai % 1000000);
		} else if ($nilai < 1000000000000) {
			$temp = $this->penyebut($nilai/1000000000) . " Milyar" . $this->penyebut(fmod($nilai,1000000000));
		} else if ($nilai < 1000000000000000) {
			$temp = $this->penyebut($nilai/1000000000000) . " Trilyun" . $this->penyebut(fmod($nilai,1000000000000));
		}
		return $temp;
	}
}
