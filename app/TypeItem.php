<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeItem extends Model
{
    protected $table = 'm_item_type';
    protected $primaryKey	= 'it_id';
    protected $fillable = ['it_id', 'it_code', 'it_name'];
}
