@extends('admin.layouts.app')

@section('content')

<div class="page-wrapper">
    <div class="page-content">

        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h5 class="mb-0">Completed Orders</h5>
                    </div>
                    <div class="font-22 ms-auto"><i class="bx bx-dots-horizontal-rounded"></i>
                    </div>
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table align-middle mb-0">
                        <thead class="table-light">
                            <tr>
                                <th>SL</th>
                                <th>Product Name</th>
                                <th>Invoice No</th>
                                <th>Customer Name</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th>Order Status</th>
                                <th>Order Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($orders as $order)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $order->product_name }}</td>
                                <td>{{ $order->invoice_no }}</td>
                                <td>{{ $order->name }}</td>
                                <td>{{ $order->quantity }}</td>
                                <td>{{ $order->total_price }}</td>
                                <td><span class="badge rounded-pill bg-success">{{ $order->order_status }}</span></td>
                                <td><span class="badge rounded-pill bg-danger">{{ $order->payment_status ? 'PAID' : 'UNPAID' }}</span></td>
                                <td>{{ $order->order_date }}</td>
                                <td>
                                    <a href="{{ route('admin.orders.show', $order->id) }}" class="btn btn-info">Details</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    </div>
</div>




@endsection