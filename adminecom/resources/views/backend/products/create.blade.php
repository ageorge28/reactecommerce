@extends('admin.layouts.app')

@section('content')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <div class="page-wrapper">
        <div class="page-content">

            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">Products</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Add New Product</li>
                        </ol>
                    </nav>
                </div>

            </div>
            <!--end breadcrumb-->

            <div class="card">
                <div class="card-body p-4">
                    <h5 class="card-title">Add New Product</h5>
                    <hr />
                    <form method="POST" action="{{ route('admin.products.store') }}" enctype="multipart/form-data">

                        @csrf

                        <div class="form-body mt-4">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="border border-3 p-4 rounded">

                                        <div class="mb-3">
                                            <label for="title" class="form-label">Product Title</label>
                                            <input type="text" class="form-control" id="title" name="title"
                                                placeholder="Enter product title">
                                            @error('title')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="product_code" class="form-label">Product Code</label>
                                            <input type="text" class="form-control" id="product_code" name="product_code"
                                                placeholder="Enter product code">
                                            @error('product_code')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="image" class="form-label">Product Thumbnail</label>
                                            <input class="form-control" type="file" id="image" name="image">
                                            @error('image')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <img id="showImage" style="width:100px; height:100px"
                                                src="{{ asset('upload/no_image.jpg') }}" />
                                        </div>

                                        <div class="mb-3">
                                            <label for="image1" class="form-label">Image 1</label>
                                            <small class="text-danger">(Same as Thumbnail Image)</small>
                                            <input class="form-control" type="file" id="image1" name="image1">
                                            @error('image1')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="image2" class="form-label">Image 2</label>
                                            <input class="form-control" type="file" id="image2" name="image2">
                                            @error('image2')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="image3" class="form-label">Image 3</label>
                                            <input class="form-control" type="file" id="image3" name="image3">
                                            @error('image3')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="image4" class="form-label">Image 4</label>
                                            <input class="form-control" type="file" id="image4" name="image4">
                                            @error('image4')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="short_description" class="form-label">Short Description</label>
                                            <textarea class="form-control" id="short_description" name="short_description" rows="3"></textarea>
                                            @error('short_description')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="long_description" class="form-label">Long Description</label>
                                            <textarea class="form-control" id="long_description" name="long_description" rows="3"></textarea>
                                            @error('long_description')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror

                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="border border-3 p-4 rounded">
                                        <div class="row g-3">
                                            <div class="col-md-6">
                                                <label for="price" class="form-label">Price</label>
                                                <input type="number" step="0.01" class="form-control" id="price"
                                                    name="price" placeholder="00.00">
                                                @error('price')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror

                                            </div>
                                            <div class="col-md-6">
                                                <label for="special_price" class="form-label">Special Price</label>
                                                <input type="number" step="0.01" class="form-control" id="special_price"
                                                    name="special_price" placeholder="00.00">
                                                @error('special_price')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror

                                            </div>

                                            <div class="col-12">
                                                <label for="category" class="form-label">Product Category</label>
                                                <select class="form-select" id="category" name="category">
                                                    <option>-- Select Category --</option>
                                                    @foreach ($categories as $category)
                                                        <option value="{{ $category->category_name }}">
                                                            {{ $category->category_name }}</option>
                                                    @endforeach
                                                </select>

                                                @error('category')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>

                                            <div class="col-12">
                                                <label for="subcategory" class="form-label">Product Subcategory</label>
                                                <select class="form-select" id="subcategory" name="subcategory">
                                                    <option>-- Select Subcategory --</option>
                                                </select>

                                                @error('subcategory')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>

                                            <div class="col-12">
                                                <label for="brand" class="form-label">Brand</label>
                                                <select class="form-select" id="brand" name="brand">
                                                    <option>-- Select Brand --</option>
                                                    @foreach ($brands as $brand)
                                                        <option value="{{ $brand->brand_name }}">
                                                            {{ $brand->brand_name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('brand')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>

                                            <div class="col-12">
                                                <label for="remark" class="form-label">Remark</label>

                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="remark" id="Featured"
                                                        value="FEATURED">
                                                    <label class="form-check-label" for="flexRadioDefault1">FEATURED</label>
                                                </div>

                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="remark" id="New"
                                                        value="NEW">
                                                    <label class="form-check-label" for="New">NEW</label>
                                                </div>

                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="remark"
                                                        id="Collection" value="COLLECTION">
                                                    <label class="form-check-label" for="Collection">COLLECTION</label>
                                                </div>

                                                @error('remark')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror


                                            </div>

                                            <div class="col-12">
                                                <label for="size" class="form-label">Product Size</label>
                                                <input type="text" class="form-control" id="size" name="size"
                                                    data-role="tagsinput" placeholder="Enter Product Sizes"
                                                    value="Small,Medium,Large,Extra Large">
                                            </div>

                                            <div class="col-12">
                                                <label for="color" class="form-label">Product Color</label>
                                                <input type="text" class="form-control" id="color" name="color"
                                                    data-role="tagsinput" placeholder="Enter Product Colors">
                                            </div>

                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <button type="submit" class="btn btn-primary">Save Product</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end row-->
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>

    <script src='https://cdn.tiny.cloud/1/vdqx2klew412up5bcbpwivg1th6nrh3murc6maz8bukgos4v/tinymce/5/tinymce.min.js'
        referrerpolicy="origin">
    </script>
    <script>
        tinymce.init({
            selector: '#long_description'
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {

            $('#image').change(function(e) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#showImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            });

            $('select[name="category"]').on('change', function() {
                var category = $(this).val();
                if (category) {
                    $.ajax({
                        url: "{{ url('/subcategories/ajax') }}/" + category,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $('select[name="subcategory"]').empty();
                            $('select[name="subsubcategory"]').html('');
                            $.each(data, function(key, value) {
                                $('select[name="subcategory"]').append(
                                    '<option value="' + value.subcategory_name + '">' + value
                                    .subcategory_name + '</option>')
                            });
                        }
                    });
                }
            });



        });
    </script>
@endsection
