</div>
<footer class="footer mt-100">
   <div class="container bottom_border">
      <div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-12">
            <h5 class="headin5_amrc col_white_amrc pt2">
                <img src="{{URL::to('storage/app')}}/{{$FooterContent[6]->icon}}" width="100px" height="100px" alt="">
            </h5>
            <!--headin5_amrc-->
            <p class="mb10">{{$FooterContent[6]->description}}</p>
            <h5 class="headin5_amrc col_white_amrc pt2">{{$FooterContent[7]->title}}</h5>
            <div class="d-flex icone-inline">
            @php
                $socialSites = explode('@',$FooterContent[7]->social_media);
                $socialLinks = explode('@',$FooterContent[7]->social_link);
            @endphp
            @for($i = 0; $i < count($socialSites); $i++ )
                @php $site = App\Models\SocialMediaModel::find($socialSites[$i]); @endphp
                <a href="{{$socialLinks[$i]}}" class="GetInTounchanchorStyle"><i class="fa mr-32">@php echo "&#x".$site->icon.";"; @endphp</i></a>
            @endfor


               {{-- <i class="fab fa-youtube youtube mr-2"></i>
               <i class="fab fa-twitter twitter mr-2"></i>
               <i class="fab fa-linkedin linkedin mr-2"></i>
               <i class="fab fa-instagram insta mr-2"></i> --}}
            </div>
         </div>
         <div class="col-lg-3 col-md-3 col-sm-12 col-12">
            <h5 class="pt2">Books Categories</h5>
            <div class="row">
               <div class="col-5">
                  <ul>
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Adventure</a></li>
                     <li><a href="#">Comedy</a></li>
                     <li><a href="#">Crime</a></li>
                     <li><a href="#">Drama</a></li>
                     <li><a href="#">Fantasy</a></li>
                     <li><a href="#">Horror</a></li>
                  </ul>
               </div>
               <div class="col-5">
                  <ul>
                     <li><a href="#">Law</a></li>
                     <li><a href="#">Mystery</a></li>
                     <li><a href="#">Professional</a></li>
                     <li><a href="#">Romance</a></li>
                     <li><a href="#">TV Serials</a></li>
                     <li><a href="#">View More</a></li>
                  </ul>
               </div>
            </div>
         </div>
         <div class="col-lg-2 col-md-2 col-sm-12 col-12 ">
            <h5 class="pt2">Quic Links</h5>
            <div class="row">
               <div class="col-10">
                  <ul>
                     <li><a href="#">About</a></li>
                     <li><a href="#">Contact Us</a></li>
                     <li><a href="#">Products</a></li>
                     <li><a href="#">Login</a></li>
                     <li><a href="#">SignUp</a></li>
                     <li><a href="#">FAQ</a></li>
                     <li><a href="#">Shipment</a></li>
                  </ul>
               </div>
            </div>
         </div>
         <div class=" col-lg-3 col-md-3 col-sm-12 col-12">
            <h5 class="headin5_amrc col_white_amrc pt2">{{$FooterContent[8]->title}}</h5>
            <div class="row">
               <div class="col-10">
                  <ul>
                     <li><a href="#"><img src="{{URL::to('storage/app')}}/{{$FooterContent[8]->icon}}" class="img-fluid" alt="" style="height:84px; width:218px"></a></li>
                     <li><a href="#"><i class="fa mr-3">@php echo "&#x".$FooterContent[9]->icon.";"; @endphp</i>{{$FooterContent[9]->title}}</a></li>
                     <li><a href="#"><i class="fa mr-3">@php echo "&#x".$FooterContent[10]->icon.";"; @endphp</i>{{$FooterContent[10]->title}}</a></li>
                     <li><a href="#"><i class="fa mr-3">@php echo "&#x".$FooterContent[11]->icon.";"; @endphp</i>{{$FooterContent[11]->title}}</a></li>

                  </ul>
               </div>
            </div>
            <!--headin5_amrc ends here-->
            <!--footer_ul2_amrc ends here-->
         </div>
      </div>
   </div>
   <div class="container">
      <!--foote_bottom_ul_amrc ends here-->
      <p class="">Copyright @2021 | Designed With by <a href="#">Book Store Website</a></p>
      <!--social_footer_ul ends here-->
   </div>
</footer>



</body>

<style>
    .footer .col-5 ul li a,.footer .col-10 ul li a {
    display: block;
    padding: 10px 0px;
    font-size: 12px;
    text-transform: capitalize;
    font-weight: bolder;
    color: #46495c;
    text-decoration: none;
}
.footer .col-5 ul li, .footer .col-10 ul li {
    display: block;
}

.footer .col-5 ul, .footer .col-10 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
</style>

    <!-- jquery Cdn -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <!-- OWL CAROUSEL -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

</html>
