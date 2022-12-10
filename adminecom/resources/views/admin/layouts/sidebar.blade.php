<div class="sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
        <div>
            <img src="{{ asset('backend/assets/images/logo-icon.png') }}" class="logo-icon"
                alt="logo icon">
        </div>
        <div>
            <h4 class="logo-text">Easy Shop</h4>
        </div>
        <div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
        </div>
    </div>
    <!--navigation-->
    <ul class="metismenu" id="menu">

        <li>
            <a href="{{ route('dashboard') }}">
                <div class="parent-icon"><i class='bx bx-home-circle'></i>
                </div>
                <div class="menu-title">Dashboard</div>
            </a>
        </li>


        <li class="menu-label">UI Elements</li>
        <li>
            <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class='bx bx-cart'></i>
                </div>
                <div class="menu-title">Categories</div>
            </a>
            <ul>
                <li> 
                    <a href="{{ route('admin.categories') }}"><i class="bx bx-right-arrow-alt"></i>All Categories</a>
                </li>
                <li> 
                    <a href="{{ route('admin.categories.create') }}"><i class="bx bx-right-arrow-alt"></i>Add Category</a>
                </li>
            </ul>
        </li>

        <li>
            <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class='bx bx-cart'></i>
                </div>
                <div class="menu-title">Subcategories</div>
            </a>
            <ul>
                <li> 
                    <a href="{{ route('admin.subcategories') }}"><i class="bx bx-right-arrow-alt"></i>All Subcategories</a>
                </li>
                <li> 
                    <a href="{{ route('admin.subcategories.create') }}"><i class="bx bx-right-arrow-alt"></i>Add Subcategory</a>
                </li>
            </ul>
        </li>


        <li>
            <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class='bx bx-cart'></i>
                </div>
                <div class="menu-title">Brands</div>
            </a>
            <ul>
                <li> 
                    <a href="{{ route('admin.brands') }}"><i class="bx bx-right-arrow-alt"></i>All Brands</a>
                </li>
                <li> 
                    <a href="{{ route('admin.brands.create') }}"><i class="bx bx-right-arrow-alt"></i>Add Brand</a>
                </li>
            </ul>
        </li>


        <li>
            <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class='bx bx-cart'></i>
                </div>
                <div class="menu-title">Sliders</div>
            </a>
            <ul>
                <li> 
                    <a href="{{ route('admin.sliders') }}"><i class="bx bx-right-arrow-alt"></i>All Sliders</a>
                </li>
                <li> 
                    <a href="{{ route('admin.sliders.create') }}"><i class="bx bx-right-arrow-alt"></i>Add Slider</a>
                </li>
            </ul>
        </li>


        <li>
            <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class='bx bx-cart'></i>
                </div>
                <div class="menu-title">Products</div>
            </a>
            <ul>
                <li> 
                    <a href="{{ route('admin.products') }}"><i class="bx bx-right-arrow-alt"></i>All Products</a>
                </li>
                <li> 
                    <a href="{{ route('admin.products.create') }}"><i class="bx bx-right-arrow-alt"></i>Add Product</a>
                </li>
            </ul>
        </li>


        <li>
            <a href="{{ route('admin.contacts') }}">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Contact Messages</div>
            </a>
        </li>


        <li>
            <a href="{{ route('admin.reviews') }}">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Product Reviews</div>
            </a>
        </li>



        <li>
            <a href="{{ route('admin.siteinfo.edit') }}">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Site Information</div>
            </a>
        </li>


        <li class="menu-label">Customer Orders</li>
        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-message-square-edit'></i>
                </div>
                <div class="menu-title">Manage Orders</div>
            </a>
            <ul>
                <li> <a href="{{ route('admin.orders.pending') }}"><i class="bx bx-right-arrow-alt"></i>Pending Orders</a>
                </li>
                <li> <a href="{{ route('admin.orders.processing') }}"><i class="bx bx-right-arrow-alt"></i>Processing Orders</a>
                </li>
                <li> <a href="{{ route('admin.orders.completed') }}"><i class="bx bx-right-arrow-alt"></i>Completed Orders</a>
                </li>
            </ul>
        </li>
       
    </ul>
    <!--end navigation-->
</div>