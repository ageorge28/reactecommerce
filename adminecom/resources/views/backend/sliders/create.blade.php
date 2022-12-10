@extends('admin.layouts.app')

@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<div class="page-wrapper">
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Sliders</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Add Slider</li>
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

                                <form method="POST" action="{{ route('admin.sliders.store') }}" enctype="multipart/form-data">
                                @csrf

                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Slider Image</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input class="form-control" type="file" id="slider_image" name="slider_image">                                    
                                        @error('slider_image')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                    </div>   
                                </div>

                                <div class="row mb-3">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <img id="showImage" style="width:100px; height:100px" src="{{ asset('upload/no_image.jpg') }}"/>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="submit" class="btn btn-primary px-4" value="Add Slider" />
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

<script type="text/javascript">
    $(document).ready(function() {
        $('#slider_image').change(function(e) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#showImage').attr('src', e.target.result); 
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });
</script>

@endsection