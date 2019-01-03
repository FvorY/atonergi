<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class d_mem extends Model
{
    protected $table = 'd_mem';
    protected $primaryKey = 'm_id';
    protected $fillable = ['m_id','m_username', 'm_password', 'm_name','m_jabatan','m_last_login','m_last_logout'];
    
}
