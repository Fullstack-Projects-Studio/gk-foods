<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $table = 'brand_list';
    
    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
