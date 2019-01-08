<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use DB;
use Auth;

class mMember extends Model implements AuthenticatableContract, CanResetPasswordContract
{
    use Authenticatable,
        CanResetPassword;

    protected $table = 'd_mem';
    protected $primaryKey = 'm_id';
    public $incrementing = false;
    public $remember_token = false;
    //public $timestamps = false;

    const UPDATED_AT = 'm_updated_at';
    const CREATED_AT = 'm_created_at';

    protected $fillable = ['m_id','m_username', 'm_password', 'm_name','m_jabatan','m_last_login','m_last_logout'];

    public function getUpdatedAtAttribute() {
        return $this->attributes['m_updated_at'];
    }

    public function setUpdatedAtAttribute($value) {
        //$this->attributes['a_updated'] = $value;
        // this may not work, depends if it's a Carbon instance, and may also break the above - you may have to clone the instance
        $this->attributes['m_updated_at'] = $value->setTimezone('UTC');
    }

    // public function setCreatedAtAttribute($value) {
    //     //$this->attributes['a_updated'] = $value;
    //     // this may not work, depends if it's a Carbon instance, and may also break the above - you may have to clone the instance
    //     //$this->attributes['a_updated'] = $value->setTimezone('UTC');
    // }

    // public function getSupplierName($id){
    //     $data = DB::table('d_comp')->where('c_id', '=', $id)->first();

    //     return $data->c_name;
    // }

    // public function access(){
    //     return $this->belongsToMany('App\d_access', 'd_mem_access', 'ma_member', 'ma_access');
    // }

    // public function company(){
    //     return $this->belongsToMany('App\d_comp', 'd_mem_comp', 'mc_mem', 'mc_comp');
    // }

    // public function isAdminPusat(){
    //     dd('d');
    //     $cek = DB::table('d_comp_mem')
    //            ->where('cm_mem', '=', Auth::user()->m_id)
    //            ->where('cm_comp', '=', 'AA00000030')->get();

    //     return (bool)count($cek);
    // }

    public static function aksesSidebar()
    {
     $m_id = Auth::user()->m_id;

     $cek = DB::table('d_mem')
              ->join('d_hak_akses', 'm_jabatan', '=', 'ha_level')
              ->join('d_daftar_menu', 'dm_id', '=', 'ha_id')
              ->where('m_id', $m_id)
              ->get();
             // $cek = DB::select("select ha_id, aktif, ha_menu from d_daftar_menu join d_hak_akses on dm_id = ha_id join d_mem on ha_level = m_jabatan where m_id = '".$m_id."' group by dm_group order by dm_id");
     // $cek = DB::table('d_daftar_menu')
     //              ->join('d_hak_akses', 'd_daftar_menu.dm_id', '=', 'd_hak_akses.ha_id')
     //              ->join('d_mem', 'ha_level', '=', 'm_jabatan')
     //              ->where('m_id', '=', Auth::user()->m_id)
     //              ->groupby('dm_group')
     //              ->orderBy('dm_id')
     //              ->get();
     return $cek;
   }


    public static function akses($fitur,$aksi){
      // select * from  join  on = where ubah =true

         $cek = DB::table('d_mem')
                ->join('d_hak_akses', 'm_jabatan', '=', 'ha_level')
                ->where('ha_menu', '=', $fitur)
                ->where($aksi, '=', 1)
                ->where('m_id', '=', Auth::user()->m_id)
                ->get();

        if(count($cek) != 0)
            return true;
        else
            return false;

    }
}
