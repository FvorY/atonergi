<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    protected $table = "m_item";
    protected $primaryKey	= "i_id";
    const CREATED_AT = 'i_insert';
    const UPDATED_AT = 'i_update';
    protected $fillable = ['i_id', 'i_code', 'i_name', 'i_unit', 'i_price', 'i_type', 'i_minstock', 'i_image', 'i_weight', 'i_description', 'i_update_at', 'i_insert'];
}
