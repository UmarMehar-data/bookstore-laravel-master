@php
    if(Session::has('onlineuser')):
        $value = Session::get('onlineuser');
    endif;
@endphp
<ul class="accordion-menu m-0">
    <li class="sidebar-title">
        Book Store
    </li>
    @if ($value['usertype'] != 2)
        <li class="">
            <a href="{{URL::to('/admin')}}"><i class="material-icons-outlined">dashboard</i>Dashboard</a>
        </li>
    @endif
    <li>
        <a href="#"><i class="material-icons-outlined">book</i>Book<i class="material-icons has-sub-menu">add</i></a>
        <ul class="sub-menu">
            <li>
                <a href="{{URL::to('/admin/book')}}">Books</a>
            </li>
            @if ($value['usertype'] != 2)
                <li>
                    <a href="{{URL::to('admin/book/category')}}">Book Categories</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/book/sale')}}">Book Sale</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/book/special')}}">Special Offer</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/book/flash')}}">Flash Sale</a>
                </li>
            @endif
        </ul>
    </li>
    <li>
        <a href="#"><i class="material-icons-outlined">article</i>News<i class="material-icons has-sub-menu">add</i></a>
        <ul class="sub-menu">
            <li>
                <a href="{{URL::to('/admin/news')}}">News</a>
            </li>
        </ul>
    </li>
    @if ($value['usertype'] != 2)
        <li>
            <a href="#"><i class="material-icons-outlined">person</i>Users<i class="material-icons has-sub-menu">add</i></a>
            <ul class="sub-menu">
                <li>
                    <a href="{{URL::to('/admin/user')}}">User</a>
                </li>
                <li>
                    <a href="{{URL::to('/admin/client')}}">Client</a>
                </li>
                <li>
                    <a href="{{URL::to('/admin/board-member')}}">Board Member</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#"><i class="material-icons-outlined">person</i>FAQ<i class="material-icons has-sub-menu">add</i></a>
            <ul class="sub-menu">
                <li>
                    <a href="{{URL::to('/admin/faq')}}">FAQ</a>
                </li>
                <li>
                    <a href="{{URL::to('/admin/faq/category')}}">FAQ Categories</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#"><i class="material-icons">settings</i>System Settings<i class="material-icons has-sub-menu">add</i></a>
            <ul class="sub-menu" style="height: 150px;overflow-y:auto;">
                <li>
                    <a href="{{URL::to('admin/system-settings/logo-favicon')}}">Logo & Favicon</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/home-page-content')}}">Home Page Content</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/about')}}">About Page Content</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/footer')}}">Footer Content</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/main-menu')}}">Main Menu</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/main-slider')}}">Main Slider</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/testimonial')}}">Testimonial</a>
                </li>
                <li>
                    <a href="{{URL::to('admin/system-settings/social-media')}}">Social Media</a>
                </li>
            </ul>
        </li>
    @endif
</ul>

