<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class M_tunjangan_man extends Model
{
    protected $table = 'm_tunjangan_man';
    protected $primaryKey = 'tman_id';
  	protected $fillable = [ 'tman_levelpeg', 'tman_nama', 'tman_periode', 'tman_value' ];

  public $incrementing = false;
  public $remember_token = false;
  //public $timestamps = false;
  const CREATED_AT = 'tman_created';
  const UPDATED_AT = 'tman_updated';
}
