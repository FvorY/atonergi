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
class BarangController extends Controller
{
    public function barangproses(Request $request)
    {


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
                      ->resize(261,null,function ($constraint) {
                        $constraint->aspectRatio();
                         })
                      ->save($original_path . $file_name)
                      ->resize(90, 90)
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
                'i_active'      =>  'Y',
                'i_jenis'       =>  'ITEM',
                'i_type'        =>  $request->type_barang,
                'i_minstock'    =>  $request->min_stock,
                'i_image'       =>  $file_name,
                'i_weight'      =>  $request->weight,
                'i_currency_id' =>  $request->currency,
                'i_description' =>  $request->description,
                'i_insert_at'   =>  Carbon::now(),
                'i_update_at'   =>  Carbon::now(),
                'i_insert_by'   =>  $nama,
                'i_update_by'   =>  $nama,
            ]);
            return Response::json(['status'=>1]);
        });
    }
    public function baranghapus(Request $request)
    {
        $gambar = DB::table('m_item')->select('i_image')->where('i_code','=',$request->id)->first();
        
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
        return response()->json(['status'=>1]);
        // return redirect('master/barang/barang')->with('success','Data has been  deleted');
    }

    public function datatable_barang(Request $req)
    {

        if ($req->nota != null) {
           $data= DB::table('m_item')
                ->leftjoin('m_currency','cu_code','=','i_currency_id')
                ->join('d_unit','u_id','=','i_unit')
                ->where('i_jenis','ITEM')
                ->where('i_name','like','%'.strtoupper($req->nota).'%')
                ->orderBy('i_insert_at','DESC')
                ->get();
        }else{
            $data= DB::table('m_item')
                ->leftjoin('m_currency','cu_code','=','i_currency_id')
                ->join('d_unit','u_id','=','i_unit')
                ->where('i_jenis','ITEM')
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
                                   '<label class="fa fa-pencil-alt"></label></button>'.
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
						->addColumn('harga', function ($barang){
							return '<div class="float-left">'.$barang->cu_symbol.'. '.'</div>'.
							'<div class="float-right">'.$barang->i_price.'</div>';
						})

                        ->addColumn('harga_rp', function ($barang){
                            $harga = $barang->i_price *$barang->cu_value;
                            return '<div class="float-left">'.'Rp .'.'</div>'.
                            '<div class="float-right">'.number_format($harga,2,',','.').'</div>';
                        })
                        ->addColumn('none', function ($barang) {
                          return '-';
                      	})

                      ->rawColumns(['aksi','gambar', 'harga','harga_rp'])
                      ->addIndexColumn()
                        ->make(true);
    }
    public function barang_edit(Request $request)
    {
    	$data = DB::table('m_item')->where('i_code','=',$request->id)->get();
    	return response()->json($data);
    }

    public function barang_update(Request $request)
    {   
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
                      ->resize(261,null,function ($constraint) {
                        $constraint->aspectRatio();
                         })
                      ->save($original_path . $file_name)
                      ->resize(90, 90)
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
                'i_active'      =>  'Y',
                'i_jenis'       =>  'ITEM',
                'i_type'        =>  $request->type_barang,
                'i_minstock'    =>  $request->min_stock,
                'i_weight'      =>  $request->weight,
                'i_currency_id' =>  $request->currency,
                'i_description' =>  $request->description,
                'i_insert_at'   =>  Carbon::now(),
                'i_update_at'   =>  Carbon::now(),
                'i_update_by'   =>  $nama,
            ]);
            return Response::json(['status'=>1]);
    	});
    }
 }
