<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class MainController extends Controller
{
    public $product_horeca;
    public $product_retail;
    public $cart;
    public $data;
    public $products_data;
    public function __construct(){
        $this->product_horeca = Category::whereHas('products', function ($query) {
            $query->where('horeca', '1');
        })->pluck('name','id');
        $this->product_retail = Brand::whereHas('products', function ($query) {
            $query->where('retail', '1');
        })->pluck('name','id');

        $this->cart = session()->get('cart', []);
        $this->data = ["product_horeca"=>$this->product_horeca,'product_retail'=>$this->product_retail,'cart'=>$this->cart];
        $this->products_data = Product::all(); 
    }
    public function index()
    {        
        return view('layouts.main',$this->data);
    }
    public function home()
    {        
        return view('layouts.home',$this->data);
    }
    public function about()
    {        
        return view('layouts.aboutUs',$this->data);
    }    
    public function brands()
    {        
        $brands = Brand::all();
        $this->data['brands']=$brands;
        return view('layouts.brands',$this->data);
    }
    public function contact()
    {        
        return view('layouts.contact',$this->data);
    } 
    public function checkout()
    {        
        return view('layouts.checkout',$this->data);
    }  
    public function product_category($id)
    {     
        $category_name = Category::where('id', $id)->value('name');
        $categories = Category::withCount(['products' => function ($query) {
                $query->where('status', 1) // Optional: only available products
                    ->where('show_site', 1); // Optional: only visible products
            }])
            ->having('products_count', '>', 0)
            ->get();
        if (!$categories) {
            abort(404, 'Category not found');
        }
        $products = Product::with('brand')
                    ->where('category_id', $id)
                    ->where('status', 1)       // only available products
                    ->where('show_site', 1)    // only products shown on site
                    ->get()
                    ->groupBy(function ($product) {
                        return $product->brand->name ?? 'Uncategorized';
                    }); 
        $this->data['category_name']=$category_name;
        $this->data['categories']=$categories;
        $this->data['products']=$products;
        return view('layouts.category_products',$this->data);
    }
    public function brand_category($id)
    {     
        $brand_name = Brand::where('id', $id)->value('name');
        $brands = Brand::withCount(['products' => function ($query) {
                $query->where('status', 1) // Optional: only available products
                    ->where('show_site', 1); // Optional: only visible products
            }])
            ->having('products_count', '>', 0)
            ->get();
        $products = Product::with('category')
                    ->where('brand_id', $id)
                    ->where('status', 1)       // only available products
                    ->where('show_site', 1)    // only products shown on site
                    ->get()
                    ->groupBy(function ($product) {
                        return $product->category->name ?? 'Uncategorized';
                    });
        $this->data['brands']=$brands;
        $this->data['brand_name']=$brand_name;
        $this->data['products']=$products;
        return view('layouts.brand_products',$this->data);
    }
    public function product_detail()
    {        
        return view('layouts.product_detail',$this->data);
    }

    public function addToCart(Request $request)
    {
        $request->validate([
            'product_id' => 'required|exists:product_list,id',
            'quantity'   => 'required|integer|min:1'
        ]);

        $productId = $request->product_id;
        $quantity  = $request->quantity;
        $product   = Product::findOrFail($productId);

        $cart = session()->get('cart', []);

        if (isset($cart[$productId])) {
            if($request->type == "minus"){
                $cart[$productId]['quantity'] -= $quantity;
            }else{
                $cart[$productId]['quantity'] += $quantity;
            }
            
        } else {
            $cart[$productId] = [
                'id'     => $productId,
                'name'     => $product->name,
                'price'    => $product->price,
                'image'    => $product->img_path,
                'quantity' => $quantity,
            ];
        }

        session()->put('cart', $cart);

        return response()->json([
            'status'  => 'success',
            'message' => 'Product added to cart',
            'cart_count' => count($cart)
        ]);
    }
    public function removeFromCart($id)
    {
        $cart = session()->get('cart', []);

        if (isset($cart[$id])) {
            unset($cart[$id]);
            session()->put('cart', $cart);
        }

        return response()->json([
            'status'  => 'success',
            'message' => 'Product removed from cart',
            'cart_count' => count($cart)
        ]);
    }
    public function getFromCart()
    {
        $cart = session()->get('cart', []);
        return response()->json([
            'status'  => 'success',
            'message' => 'Cart',
            'cart'      => $cart,
            'cart_count' => count($cart)
        ]);
    }
    public function place_order(Request $request)
    {
        $cart = session('cart', []);
        if (empty($cart)) {
            return back()->with('error', 'Cart is empty!');
        }
        echo $request['billing_first_name'];
            DB::beginTransaction();
            try {
                $order = Order::create([
                    'customer_name'   => $request->billing_first_name,
                    'executive_name'   => $request->sa_executive_name ?? "no-name",
                    'company_name'   => $request->billing_company,
                    'customer_phone'  => $request->billing_phone,
                    'status'    => 'Pending',
                    'user_id' => 3
                ]);

                foreach ($cart as $productId => $item) {
                    OrderItem::create([
                        'order_id'   => $order->id,
                        'product_id' => $productId,
                        'qty'   => $item['quantity'],
                        'user_id' => 3
                    ]);
                }

                DB::commit();
                session()->forget('cart');

                return back()->with('success', 'Order placed successfully!');
            } catch (\Exception $e) {
                DB::rollback();
                return back()->with('error', 'Something went wrong: ' . $e->getMessage());
            }
    }
    public function menu()
    {        
        return view('layouts.menu');
    }
    public function sendMail(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $phone = $request->phone;
        $message = $request->message;
    
        $to = "s.suganyasugan92@gmail.com";
        $subject = "New Enquiry Form";
    
        $body = "
            Name: $name
            Email: $email
            Phone: $phone
            Message: $message
        ";
    
        $headers = "From: website@gkfoods.co.in\r\n";
        $headers .= "Reply-To: $email\r\n";
        $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";
    
        if(mail($to, $subject, $body, $headers)){
            return response()->json(['status' => 'success']);
        } else {
            return response()->json(['status' => 'error']);
        }
    }
}
