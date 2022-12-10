@extends('admin.layouts.app')

@section('content')

<div class="page-wrapper">
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Subcategories</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Edit Subcategory</li>
                    </ol>
                </nav>
            </div>

        </div>
        <!--end breadcrumb-->
        <div class="container">
            <div class="main-body">
                <div class="row">

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">

                                <form method="POST" action="{{ route('admin.subcategories.update', $subcategory->id) }}">
                                
                                @csrf

                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Category Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">

                                        <select class="form-control" id="category_name" name="category_name">
                                            <option>-- Select Category --</option>
                                            @foreach($categories as $category)
                                                <option value="{{ $category->category_name }}" {{ $category->category_name == $subcategory->category_name ? ' selected' : '' }}>
                                                    {{ $category->category_name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        
                                        @error('category_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Subcategory Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text" name="subcategory_name" id="subcategory_name" class="form-control" value="{{ $subcategory->subcategory_name }}" />
                                        @error('subcategory_name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="submit" class="btn btn-primary px-4" value="Edit Subcategory" />
                                    </div>
                                </div>

                            </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection