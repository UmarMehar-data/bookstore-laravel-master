<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\SystemSettingController;
use App\Http\Controllers\BoardMemberController;
use App\Http\Controllers\SpecialFlashController;
use App\Http\Controllers\LogoFaviconController;
use App\Http\Controllers\FAQController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


// Web Routes

Route::get('/',[HomeController::class, 'home']);
Route::get('/about',[HomeController::class, 'about']);
Route::get('/author-profile/{id}',[HomeController::class, 'authorprofile']);
Route::get('/contact-us',[HomeController::class, 'contactus']);
Route::get('/faq',[HomeController::class, 'faq']);
Route::get('/news',[HomeController::class, 'news']);
Route::get('/page-not',[HomeController::class, 'pagenot']);
Route::get('/shoping-cart',[HomeController::class, 'shopingcart']);
Route::get('/single-blog/{id}',[HomeController::class, 'singleblog']);
Route::post('/commentPost',[HomeController::class, 'CommentPost']);
Route::get('/book-detail/{id}',[HomeController::class, 'bookdetail']);
Route::get('/all-book',[HomeController::class, 'allbook']);
Route::get('/login',[HomeController::class, 'login']);
Route::post('/loginProcess',[HomeController::class, 'loginProcess']);
Route::post('/RegistrationProcess',[HomeController::class, 'RegistrationProcess']);
Route::get('/logout',[HomeController::class, 'logoutProcess']);


// admin controllers
Route::get('/admin',[UserController::class,"Login"]);
Route::post('/admin',[UserController::class,"ProcessLoginRequest"]);
Route::prefix('admin')->middleware("IsLogin")->group(function () {
    Route::get("logout",[Usercontroller::class,"Logout"]);
    Route::get("change-password",[Usercontroller::class,"changePassword"]);
    Route::post("change-password",[Usercontroller::class,"changePasswordProcess"]);
    Route::get("change-details",[Usercontroller::class,"changeDetail"]);
    Route::post("change-details",[Usercontroller::class,"changeDetailProcess"]);

    // User
    Route::prefix('user')->group(function () {
        Route::get("/",[Usercontroller::class,"View"]);
        Route::get("/add",[Usercontroller::class,"Add"]);
        Route::post("/add",[Usercontroller::class,"AddProcess"]);
        Route::get("/delete/{id}",[Usercontroller::class,"Delete"]);
        Route::get("/update/{id}",[Usercontroller::class,"Edit"]);
        Route::post("/update/{id}",[Usercontroller::class,"EditProcess"]);
    });
    // board Member
    Route::prefix('board-member')->group(function () {
        Route::get("/",[BoardMemberController::class,"View"]);
        Route::get("/add",[BoardMemberController::class,"Add"]);
        Route::post("/add",[BoardMemberController::class,"AddProcess"]);
        Route::get("/delete/{id}",[BoardMemberController::class,"Delete"]);
        Route::get("/update/{id}",[BoardMemberController::class,"Edit"]);
        Route::post("/update/{id}",[BoardMemberController::class,"EditProcess"]);
    });

    // Client
    Route::prefix('client')->group(function () {
        Route::get("/",[Usercontroller::class,"ViewClient"]);
        Route::get("/add",[Usercontroller::class,"AddClient"]);
        Route::post("/add",[Usercontroller::class,"AddClientProcess"]);
        Route::get("/block/{id}",[Usercontroller::class,"BlockClient"]);
        Route::get("/unblock/{id}",[Usercontroller::class,"UnBlockClient"]);
        Route::get("/update/{id}",[Usercontroller::class,"EditClient"]);
        Route::post("/update/{id}",[Usercontroller::class,"EditClientProcess"]);
    });

    // book
    Route::prefix('book')->group(function () {
        Route::get("/",[BookController::class,"Index"]);
        Route::post("/",[BookController::class,"GetALLFeatureDelete"]);
        Route::get("/add",[BookController::class,"Add"]);
        Route::post("/add",[BookController::class,"AddProcess"]);
        Route::get("/delete/{id}",[BookController::class,"Delete"]);
        Route::get("/allow/{id}",[BookController::class,"Allow"]);
        Route::get("/update/{id}",[BookController::class,"Edit"]);
        Route::post("/update/{id}",[BookController::class,"EditProcess"]);
        Route::post("/feature/{id}",[BookController::class,"FeatureProcess"]);
        // book Category
        Route::prefix('category')->group(function () {
            Route::get("/",[BookController::class,"ViewCategory"]);
            Route::post("/",[BookController::class,"GetALLFeatureDeleteCategory"]);
            Route::get("/add",[BookController::class,"AddCategory"]);
            Route::post("/add",[BookController::class,"AddCategoryProcess"]);
            Route::get("/delete/{id}",[BookController::class,"DeleteCategory"]);
            Route::get("/update/{id}",[BookController::class,"EditCategory"]);
            Route::post("/update/{id}",[BookController::class,"EditCategoryProcess"]);
        });
        // book Sale
        Route::prefix('sale')->group(function () {
            Route::get("/",[BookController::class,"ViewSale"]);
            Route::post("/",[BookController::class,"GetALLFeatureDeleteSale"]);
            Route::get("/add",[BookController::class,"AddSale"]);
            Route::post("/add",[BookController::class,"AddSaleProcess"]);
            Route::get("/delete/{id}",[BookController::class,"DeleteSale"]);
            Route::get("/update/{id}",[BookController::class,"EditSale"]);
            Route::post("/update/{id}",[BookController::class,"EditSaleProcess"]);
        });
        // book Flash Sale
        Route::prefix('flash')->group(function () {
            Route::get("/",[SpecialFlashController::class,"ViewFlash"]);
            Route::post("/",[SpecialFlashController::class,"GetALLFeatureDeleteFlash"]);
            Route::get("/add",[SpecialFlashController::class,"AddFlash"]);
            Route::post("/add",[SpecialFlashController::class,"AddFlashProcess"]);
            Route::get("/delete/{id}",[SpecialFlashController::class,"DeleteFlash"]);
            Route::get("/update/{id}",[SpecialFlashController::class,"EditFlash"]);
            Route::post("/update/{id}",[SpecialFlashController::class,"EditFlashProcess"]);
        });
        // book Special Sale
        Route::prefix('special')->group(function () {
            Route::get("/",[SpecialFlashController::class,"ViewSpecial"]);
            Route::post("/",[SpecialFlashController::class,"GetALLFeatureDeleteSpecial"]);
            Route::get("/add",[SpecialFlashController::class,"AddSpecial"]);
            Route::post("/add",[SpecialFlashController::class,"AddSpecialProcess"]);
            Route::get("/delete/{id}",[SpecialFlashController::class,"DeleteSpecial"]);
            Route::get("/update/{id}",[SpecialFlashController::class,"EditSpecial"]);
            Route::post("/update/{id}",[SpecialFlashController::class,"EditSpecialProcess"]);
        });
    });
    // faq
    Route::prefix('faq')->group(function () {
        Route::get("/",[FAQController::class,"Index"]);
        Route::post("/",[FAQController::class,"GetALLFeatureDelete"]);
        Route::get("/add",[FAQController::class,"Add"]);
        Route::post("/add",[FAQController::class,"AddProcess"]);
        Route::get("/delete/{id}",[FAQController::class,"Delete"]);
        Route::get("/update/{id}",[FAQController::class,"Edit"]);
        Route::post("/update/{id}",[FAQController::class,"EditProcess"]);
        // faq Category
        Route::prefix('category')->group(function () {
            Route::get("/",[FAQController::class,"ViewCategory"]);
            Route::post("/",[FAQController::class,"GetALLFeatureDeleteCategory"]);
            Route::get("/add",[FAQController::class,"AddCategory"]);
            Route::post("/add",[FAQController::class,"AddCategoryProcess"]);
            Route::get("/delete/{id}",[FAQController::class,"DeleteCategory"]);
            Route::get("/update/{id}",[FAQController::class,"EditCategory"]);
            Route::post("/update/{id}",[FAQController::class,"EditCategoryProcess"]);
        });
    });

    // Author
    Route::prefix('author')->group(function () {
        Route::get("/",[AuthorController::class,"ViewAuthor"]);
        Route::post("/",[AuthorController::class,"GetALLFeatureDeleteAuthor"]);
        Route::get("/add",[AuthorController::class,"AddAuthor"]);
        Route::post("/add",[AuthorController::class,"AddAuthorProcess"]);
        Route::get("/delete/{id}",[AuthorController::class,"DeleteAuthor"]);
        Route::get("/update/{id}",[AuthorController::class,"EditAuthor"]);
        Route::post("/update/{id}",[AuthorController::class,"EditAuthorProcess"]);
    });

    // News
    Route::prefix('news')->group(function () {
        Route::get("/",[NewsController::class,"ViewNews"]);
        Route::post("/",[NewsController::class,"GetALLFeatureDeleteNews"]);
        Route::get("/add",[NewsController::class,"AddNews"]);
        Route::post("/add",[NewsController::class,"AddNewsProcess"]);
        Route::get("/delete/{id}",[NewsController::class,"DeleteNews"]);
        Route::get("/allow/{id}",[NewsController::class,"AllowNews"]);
        Route::get("/update/{id}",[NewsController::class,"EditNews"]);
        Route::post("/update/{id}",[NewsController::class,"EditNewsProcess"]);
    });

    // system-setting
    Route::prefix('system-settings')->group(function () {
        // Logo & Favicon
        Route::prefix('logo-favicon')->group(function () {
            Route::get("/",[LogoFaviconController::class,"View"]);
            Route::post("/add",[LogoFaviconController::class,"AddProcess"]);
            Route::get("/delete/{id}",[LogoFaviconController::class,"Delete"]);
            Route::get("/update/{id}",[LogoFaviconController::class,"Edit"]);
            Route::post("/update/{id}",[LogoFaviconController::class,"EditProcess"]);
            Route::post("/active/{id}",[LogoFaviconController::class,"Active"]);
        });
            Route::get("/logo/add",[LogoFaviconController::class,"LogoAdd"]);
            Route::get("/favicon/add",[LogoFaviconController::class,"FaviconAdd"]);
        // home-page-content
        Route::prefix('home-page-content')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewPageContent"]);
            Route::post("/",[SystemSettingController::class,"ViewPageContentProcess"]);
        });
        // footer
        Route::prefix('footer')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewFooterContent"]);
            Route::post("/",[SystemSettingController::class,"ViewFooterContentProcess"]);
        });
        // About
        Route::prefix('about')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewAboutContent"]);
            Route::post("/",[SystemSettingController::class,"ViewAboutContentProcess"]);
        });
        // testimonial
        Route::prefix('testimonial')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewTestimonial"]);
            Route::post("/",[SystemSettingController::class,"GetALLFeatureDeleteTestimonial"]);
            Route::get("/add",[SystemSettingController::class,"AddTestimonial"]);
            Route::post("/add",[SystemSettingController::class,"AddTestimonialProcess"]);
            Route::get("/delete/{id}",[SystemSettingController::class,"DeleteTestimonial"]);
            Route::get("/update/{id}",[SystemSettingController::class,"EditTestimonial"]);
            Route::post("/update/{id}",[SystemSettingController::class,"EditTestimonialProcess"]);
        });
        // social-media
        Route::prefix('social-media')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewSocial"]);
            Route::post("/",[SystemSettingController::class,"GetALLFeatureDeleteSocial"]);
            Route::get("/add",[SystemSettingController::class,"AddSocial"]);
            Route::post("/add",[SystemSettingController::class,"AddSocialProcess"]);
            Route::get("/delete/{id}",[SystemSettingController::class,"DeleteSocial"]);
            Route::get("/update/{id}",[SystemSettingController::class,"EditSocial"]);
            Route::post("/update/{id}",[SystemSettingController::class,"EditSocialProcess"]);
        });
        // main menu
        Route::prefix('main-menu')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewMenu"]);
            Route::post("/",[SystemSettingController::class,"GetALLFeatureDeleteMenu"]);
            Route::get("/add",[SystemSettingController::class,"AddMenu"]);
            Route::post("/add",[SystemSettingController::class,"AddMenuProcess"]);
            Route::get("/delete/{id}",[SystemSettingController::class,"DeleteMenu"]);
            Route::get("/update/{id}",[SystemSettingController::class,"EditMenu"]);
            Route::post("/update/{id}",[SystemSettingController::class,"EditMenuProcess"]);
        });
        // main slider
        Route::prefix('main-slider')->group(function () {
            Route::get("/",[SystemSettingController::class,"ViewSlider"]);
            Route::post("/",[SystemSettingController::class,"GetALLFeatureDeleteSlider"]);
            Route::get("/add",[SystemSettingController::class,"AddSlider"]);
            Route::post("/add",[SystemSettingController::class,"AddSliderProcess"]);
            Route::get("/delete/{id}",[SystemSettingController::class,"DeleteSlider"]);
            Route::get("/update/{id}",[SystemSettingController::class,"EditSlider"]);
            Route::post("/update/{id}",[SystemSettingController::class,"EditSliderProcess"]);
        });
    });
});
