<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\CartOrder;
use App\Models\ProductCart;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\BaseUrl;

class CartOrderController extends Controller
{
    public function store(Request $request)
    {
        $city = $request->input('city');
        $payment_method = $request->input('payment_method');
        $yourName = $request->input('name');
        $email = $request->input('email');
        $delivery_address = $request->input('delivery_address');
        $invoice_no = $request->input('invoice_no');
        $delivery_charge = $request->input('delivery_charge');

        date_default_timezone_set('Asia/Kolkata');
        $request_time = date('h:i:sa');
        $request_date = Carbon::now();

        $cartList = ProductCart::where('email', $email)->get();

        foreach($cartList as $cartListItem)
        {
            $cartInsertDeleteResult = null;
            $resultInsert = CartOrder::insertGetId([
                'invoice_no' => "Easy" . $invoice_no,
                'product_name' => $cartListItem->product_name,
                'product_code' => $cartListItem->product_code,
                'size' => $cartListItem->size,
                'color' => $cartListItem->color,
                'quantity' => $cartListItem->quantity,
                'unit_price' => $cartListItem->unit_price,
                'total_price' => $cartListItem->total_price,
                'email' => $cartListItem->email,
                'name' => $yourName,
                'payment_method' => $payment_method,
                'delivery_address' => $delivery_address,
                'city' => $city,
                'delivery_charge' => $delivery_charge,
                'order_date' => $request_date,
                'order_time' => $request_time,
                'order_status' => 'Pending',
                'image' => $cartListItem->image
            ]);

            if($resultInsert >= 1)
            {
                $resultDelete = ProductCart::find($cartListItem->id)->delete();
                if ($resultDelete == 1)
                {
                    $cartInsertDeleteResult = 1;
                }
                else
                {
                    $cartInsertDeleteResult = 0;
                }
            }
            else
            {
                $cartInsertDeleteResult = 0;
            }
        }

        if($cartInsertDeleteResult == 0)
        {
            return $cartInsertDeleteResult;
        }
        else
        {
            return $resultInsert;
        }
    }

    public function index(Request $request)
    {
        $email = $request->email;

        $result = CartOrder::where('email', $email)->orderBy('id', 'DESC')->get();

        $base_url = config('global.thumbnail_url');

        foreach($result as $item)
        {
            $item->image = $base_url . $item->image;
        }

        return $result;
    }

    public function pending()
    {
        $orders = CartOrder::where('order_status', 'Pending')->orderBy('id', 'DESC')->get();
        return view('backend.orders.pending', compact('orders'));
    }

    public function processing()
    {
        $orders = CartOrder::where('order_status', 'Processing')->orderBy('id', 'DESC')->get();
        return view('backend.orders.processing', compact('orders'));
    }

    public function completed()
    {
        $orders = CartOrder::where('order_status', 'Completed')->orderBy('id', 'DESC')->get();
        return view('backend.orders.completed', compact('orders'));
    }
    
    public function show(CartOrder $order)
    {
        return view('backend.orders.show', compact('order'));
    }

    public function process(CartOrder $order)
    {
        $order->order_status = 'Processing';
        $order->updated_at = Carbon::now();
        $order->save();
        $notification = array (
            'message' => 'Order Processed Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function complete(CartOrder $order)
    {
        $order->order_status = 'Completed';
        $order->updated_at = Carbon::now();
        $order->save();
        $notification = array (
            'message' => 'Order Completed Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function paid(CartOrder $order)
    {
        $order->payment_status = true;
        $result = $order->save();
        return $result;
    }
}
