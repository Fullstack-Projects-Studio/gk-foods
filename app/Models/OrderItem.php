<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $table = 'order_list'; 
    protected $fillable = [
        'order_id',
        'product_id',
        'customer_phone',
        'qty',
        'user_id'
    ];
    
    public function items()
    {
        return $this->hasMany(OrderItem::class);
    }
}
