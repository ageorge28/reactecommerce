@extends('admin.layouts.app')

@section('content')

<div class="page-wrapper">
    <div class="page-content">

        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h5 class="mb-0">All Brands</h5>
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
                                <th>Brand Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($brands as $brand)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>
                                    {{ $brand->brand_name }}
                                </td>
                                <td>
                                    <a href="{{ route('admin.brands.edit', $brand->id) }}" class="btn btn-info">Edit</a>
                                    <a id="delete" href="{{ route('admin.brands.delete', $brand->id) }}" class="btn btn-danger">Delete</a>
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