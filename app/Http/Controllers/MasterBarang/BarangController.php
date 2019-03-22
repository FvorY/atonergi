<?php

namespace App\Http\Controllers\MasterBarang;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Barang;
use DB;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Auth;
use Intervention\Image\ImageManagerStatic as Image;
use carbon\Carbon;
use Illuminate\Http\UploadedFile;
use Response;
use App\mMember;
use App\Http\Controllers\logController;
class BarangController extends Controller
{
    public function barangproses(Request $request)
    {
      if (!mMember::akses('MASTER DATA BARANG', 'aktif')) {
        return redirect('error-404');
      }

        return DB::transaction(function() use ($request) {
            $nama = Auth::user()->m_name;
            $m1 = DB::table('m_item')->where('i_jenis','ITEM')->max('i_id');
        	$index = DB::table('m_item')->max('i_id')+1;


            if($index<=9)
            {
                $id_auto = 'BRG/000'.$index;
            }
            else if($index<=99)
            {
                $id_auto = 'BRG/00'.$index;
            }
            else if($index<=999)
            {
                $id_auto = 'BRG/0'.$index;
            }
            else {
                $id_auto = 'BRG/'.$index;
            }


        	$file = $request->file('files');
            if ($file != null) {
                Barang::where('i_id',$index)->first();

                $file_name = 'barang_'. $index  .'.' . $file->getClientOriginalExtension();

                if (!is_dir(storage_path('uploads/barang/thumbnail/'))) {
                    mkdir(storage_path('uploads/barang/thumbnail/'), 0777, true);
                }

                if (!is_dir(storage_path('uploads/barang/original/'))) {
                    mkdir(storage_path('uploads/barang/original/'), 0777, true);
                }


                $thumbnail_path = storage_path('uploads/barang/thumbnail/');
                $original_path = storage_path('uploads/barang/original/');
                // return $original_path;
                Image::make($file)
                      ->save($original_path . $file_name)
                      ->save($thumbnail_path . $file_name);
            }

            $save = DB::table('m_item')->insert([
                'i_id'          =>  $index,
                'i_code'        =>  $id_auto,
                'i_name'        =>  strtoupper($request->item_name),
                'i_unit'        =>  $request->unit,
                'i_price'       =>  (float)$request->price,
                'i_sell_price'  =>  (float)$request->sell_price,
                'i_lower_price' =>  (float)$request->lower_price,
                'i_price_currency' => $request->price_currency,
                'i_sell_currency' => $request->sell_price_currency,
                'i_lower_currency' => $request->lower_price_currency,
                'i_akun_pendapatan' => $request->akunpendapatan,
                'i_akun_persediaan' => $request->akunpersediaan,
                'i_akun_beban' => $request->akunbeban,
                'i_active'      =>  'Y',
                'i_jenis'       =>  $request->category,
                'i_type'        =>  $request->type_barang,
                'i_minstock'    =>  $request->min_stock,
                'i_image'       =>  $file_name,
                'i_weight'      =>  $request->weight,
                'i_description' =>  $request->description,
                'i_insert_at'   =>  Carbon::now(),
                'i_update_at'   =>  Carbon::now(),
                'i_insert_by'   =>  $nama,
                'i_update_by'   =>  $nama,
            ]);
            logController::inputlog('Master Data Barang', 'Insert', $request->i_name);
            return Response::json(['status'=>1]);
        });
    }
    public function baranghapus(Request $request)
    {
      if (!mMember::akses('MASTER DATA BARANG', 'hapus')) {
        return redirect('error-404');
      }
        $gambar = DB::table('m_item')->where('i_code','=',$request->id)->first();

            // dd(base_path('assets\barang\\'.$gambar[0]->i_image));
        if($gambar->i_image != '')
        {
            if(file_exists(storage_path('uploads/barang/thumbnail/').$gambar->i_image)  )
            {
                $storage1 = unlink(storage_path('uploads/barang/thumbnail/').$gambar->i_image);
            }
            if(file_exists(storage_path('uploads/barang/original/').$gambar->i_image)  )
            {
                $storage2 = unlink(storage_path('uploads/barang/original/').$gambar->i_image);
            }

        }



        $barang = DB::Table('m_item')->where('i_code','=',$request->id)->delete();

        logController::inputlog('Master Data Barang', 'Hapus', $gambar->i_name);

        return response()->json(['status'=>1]);
        // return redirect('master/barang/barang')->with('success','Data has been  deleted');
    }

    public function datatable_barang(Request $req)
    {

        if ($req->nota != null) {
           $data= DB::table('m_item')
                ->join('d_unit','u_id','=','i_unit')
                ->leftjoin('m_currency','cu_code','=','i_price_currency')
                ->ORwhere('i_jenis','Barang Jual')
                ->ORwhere('i_jenis','Aksesoris instalasi')
                ->ORwhere('i_jenis','Lain - Lain')
                ->where('i_name','like','%'.strtoupper($req->nota).'%')
                ->orderBy('i_insert_at','DESC')
                ->get();
        } else {
            $data= DB::table('m_item')
                ->join('d_unit','u_id','=','i_unit')
                ->leftjoin('m_currency','cu_code','=','i_price_currency')
                ->ORwhere('i_jenis','Barang Jual')
                ->ORwhere('i_jenis','Aksesoris instalasi')
                ->ORwhere('i_jenis','Lain - Lain')
                ->orderBy('i_insert_at','DESC')->get();
        }



        // return $data;
        $barang = collect($data);
        // return $barang;
        // return $barang->i_price;
        return Datatables::of($barang)
                        ->addColumn('aksi', function ($barang) {
                          return  '<div class="btn-group">'.
                                   '<button type="button" onclick="edit(this)" class="btn btn-info btn-lg" title="edit">'.
                                   '<label class="fa fa-pencil "></label></button>'.
                                   '<button type="button" onclick="hapus(this)" class="btn btn-danger btn-lg" title="hapus">'.
                                   '<label class="fa fa-trash"></label></button>'.
                                  '</div>';
                        })
						->addColumn('gambar', function ($barang) {
							if($barang->i_image!=''){
                                $url = route('barang_thumbnail').'/'.$barang->i_image.'?'.time();
								return '<img src="'.$url.'" border="0" width="60" class="img-rounded" align="center" />';
							}else{
								return '<i class="fa fa-minus-square"></i>';
							}

						})
						->addColumn('sell', function ($barang){
              $sellcurrency = DB::table('m_currency')->where('cu_code', '=', strtoupper($barang->i_sell_currency))->first();
              dd($sellcurrency);
							return '<div class="float-left">'.$sellcurrency->cu_symbol.'. '.'</div>'.
							'<div class="float-right">'.$barang->i_sell_price.'</div>';
						})

            ->addColumn('lower', function ($barang){
              $lowercurrency = DB::table('m_currency')->where('cu_code', '=', strtoupper($barang->i_lower_currency))->first();
                $harga = $barang->i_lower_price * $lowercurrency->cu_value;
                return '<div class="float-left">'.'Rp .'.'</div>'.
                '<div class="float-right">'.number_format($harga,2,',','.').'</div>';
            })
            ->addColumn('none', function ($barang) {
              return '-';
          	})

          ->rawColumns(['aksi','gambar', 'sell','lower'])
          ->addIndexColumn()
            ->make(true);
    }
    public function barang_edit(Request $request)
    {
      if (!mMember::akses('MASTER DATA BARANG', 'ubah')) {
        return redirect('error-404');
      }
    	$data = DB::table('m_item')->where('i_code','=',$request->id)->get();
    	return response()->json($data);
    }

    public function barang_update(Request $request)
    {
      if (!mMember::akses('MASTER DATA BARANG', 'ubah')) {
        return redirect('error-404');
      }
        // dd($request->all());

        return DB::transaction(function() use ($request) {
            $nama = Auth::user()->m_name;
            $file = $request->file('files');
            if ($file  != null) {

                $file_name = 'barang'.'_' . $request->kode_barang . '.' . $file->getClientOriginalExtension();
                if (!is_dir(storage_path('uploads/barang/thumbnail/'))) {
                mkdir(storage_path('uploads/barang/thumbnail/'), 0777, true);
                }

                if (!is_dir(storage_path('uploads/barang/original/'))) {
                mkdir(storage_path('uploads/barang/original/'), 0777, true);
                }


                $thumbnail_path = storage_path('uploads/barang/thumbnail/');
                $original_path = storage_path('uploads/barang/original/');
                // return $original_path;
                Image::make($file)
                      ->save($original_path . $file_name)
                      ->save($thumbnail_path . $file_name);

                $save = DB::table('m_item')->where('i_id',$request->kode_barang)->update([
                    'i_image'       =>  $file_name,
                ]);
            }


        	$save = DB::table('m_item')->where('i_id',$request->kode_barang)->update([
                'i_id'          =>  $request->kode_barang,
                'i_name'        =>  strtoupper($request->item_name),
                'i_unit'        =>  $request->unit,
                'i_price'       =>  (float)$request->price,
                'i_sell_price'  =>  (float)$request->sell_price,
                'i_lower_price' =>  (float)$request->lower_price,
                'i_price_currency' => $request->price_currency,
                'i_sell_currency' => $request->sell_price_currency,
                'i_lower_currency' => $request->lower_price_currency,
                'i_akun_pendapatan' => $request->akunpendapatan,
                'i_akun_persediaan' => $request->akunpersediaan,
                'i_akun_beban' => $request->akunbeban,
                'i_active'      =>  'Y',
                'i_jenis'       =>  $request->category,
                'i_type'        =>  $request->type_barang,
                'i_minstock'    =>  $request->min_stock,
                'i_weight'      =>  $request->weight,
                'i_description' =>  $request->description,
                'i_insert_at'   =>  Carbon::now(),
                'i_update_at'   =>  Carbon::now(),
                'i_update_by'   =>  $nama,
            ]);
            logController::inputlog('Master Data Barang', 'Update',  $request->item_name);
            return Response::json(['status'=>1]);
    	});
    }
    public function caribarang(Request $req)
    {

          $data= DB::table('m_item')
               ->leftjoin('m_currency','cu_code','=','i_price_currency')
               ->join('d_unit','u_id','=','i_unit')
               ->where('i_name', 'LIKE', '%'.$req->keyword.'%')
               ->where('i_jenis', 'Barang Jual')
               ->ORwhere('i_jenis', 'Aksesorit Instalasi')
               ->ORwhere('i_jenis', 'Lain - Lain')
               ->orderBy('i_insert_at','DESC')
               ->get();



        return response()->json($data);

    }
 }
