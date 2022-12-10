@extends('admin.layouts.app')

@section('content')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <div class="page-wrapper">
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">Site Information</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Site Information</li>
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

                                    <form method="POST" action="{{ route('admin.siteinfo.update') }}">
                                        
                                        @csrf


                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">About Us</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="about" name="about">{{ $siteinfo->about }}</textarea>
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Refund Policy</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="refund" name="refund">{{ $siteinfo->refund }}</textarea>
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Company Profile</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="profile" name="profile">{{ $siteinfo->profile }}</textarea>
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Purchase Policy</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="purchase" name="purchase">{{ $siteinfo->purchase }}</textarea>
                                            </div>
                                        </div>



                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Privacy Policy</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="privacy" name="privacy">{{ $siteinfo->privacy }}</textarea>
                                            </div>
                                        </div>


                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Address</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="address" name="address">{{ $siteinfo->address }}</textarea>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Email</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="email" name="email" id="email" value="{{ $siteinfo->email }}" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Android App Link</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name="android" id="android" value="{{ $siteinfo->android }}" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">IOS App Link</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name="ios" id="ios" value="{{ $siteinfo->ios }}" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Facebook Link</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name="facebook" id="facebook" value="{{ $siteinfo->facebook }}" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Twitter Link</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name="twitter" id="twitter" value="{{ $siteinfo->twitter }}" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Instagram</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name="instagram" id="instagram" value="{{ $siteinfo->instagram }}" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Copyright Information</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <textarea class="form-control description" id="copyright" name="copyright">{{ $siteinfo->copyright }}</textarea>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="submit" class="btn btn-primary px-4" value="Edit" />
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

    <script src='https://cdn.tiny.cloud/1/vdqx2klew412up5bcbpwivg1th6nrh3murc6maz8bukgos4v/tinymce/5/tinymce.min.js'
        referrerpolicy="origin">
    </script>
    <script>
        tinymce.init({
            selector: '.description'
        });
    </script>

@endsection
