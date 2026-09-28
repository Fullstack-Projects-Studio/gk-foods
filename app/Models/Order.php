<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $fillable = [
        'customer_name',
        'company_name',
        'customer_phone',
        'total_amount',
        'executive_name',
        'payment_status',
        'order_status',
        'user_id'
    ];
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
