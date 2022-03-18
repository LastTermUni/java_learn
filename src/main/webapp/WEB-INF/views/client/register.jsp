<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<main>

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area-2 pt-240 pb-245 include-bg" data-background="<c:url value='/Front-end/client/img/page-title/page-title-1.jpg'/>>">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="breadcrumb-wrapper-2 text-center">
                        <h3>register</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">register</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- login area start -->
    <section class="login-area pt-100 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="basic-login">
                        <h3 class="text-center mb-60">Signup From Here</h3>
                        <form action="#">
                            <label for="name">Username <span>**</span></label>
                            <input id="name" type="text" placeholder="Enter Username" />
                            <label for="email-id">Email Address <span>**</span></label>
                            <input id="email-id" type="text" placeholder="Email address..." />
                            <label for="pass">Password <span>**</span></label>
                            <input id="pass" type="password" placeholder="Enter password..." />
                            <div class="mt-10"></div>
                            <button class="s-btn s-btn-4 w-100">Register Now</button>
                            <div class="or-divide"><span>or</span></div>
                            <a href="login.html" class="s-btn s-btn-2 w-100">login Now</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login area end -->

    <!-- product modal area start -->
    <div class="product__modal-area modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="product__modal-inner position-relative">
                    <div class="product__modal-close">
                        <button data-bs-dismiss="modal" aria-label="Close">
                            <i class="ti-close"></i>
                        </button>
                    </div>
                    <div class="product__modal-left">
                        <div class="tab-content mb-10" id="productModalThumb">
                            <div class="tab-pane fade show active" id="pro-1" role="tabpanel" aria-labelledby="pro-1-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-1.jpg'/>>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pro-2" role="tabpanel" aria-labelledby="pro-2-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-2.jpg'/>>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pro-3" role="tabpanel" aria-labelledby="pro-3-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-3.jpg'/>>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pro-4" role="tabpanel" aria-labelledby="pro-4-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-4.jpg'/>>" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="product__modal-nav">
                            <ul class="nav nav-tabs" id="productModalNav" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pro-1-tab" data-bs-toggle="tab" data-bs-target="#pro-1" type="button" role="tab" aria-controls="pro-1" aria-selected="true">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-1.jpg'/>>" alt="">
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pro-2-tab" data-bs-toggle="tab" data-bs-target="#pro-2" type="button" role="tab" aria-controls="pro-2" aria-selected="false">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-2.jpg'/>>" alt="">
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pro-3-tab" data-bs-toggle="tab" data-bs-target="#pro-3" type="button" role="tab" aria-controls="pro-3" aria-selected="false">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-3.jpg'/>>" alt="">
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pro-4-tab" data-bs-toggle="tab" data-bs-target="#pro-4" type="button" role="tab" aria-controls="pro-4" aria-selected="false">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-4.jpg'/>>" alt="">
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__modal-right">
                        <h3 class="product__modal-title">
                            <a href="product-details.html">Living Room Lighting</a>
                        </h3>
                        <div class="product__modal-rating d-flex align-items-center">
                            <ul class="mr-10">
                                <li>
                                    <a href="#"><i class="ti-star"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ti-star"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ti-star"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ti-star"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ti-star"></i></a>
                                </li>
                            </ul>
                            <div class="customer-review">
                                <a href="#">(1 customer review)</a>
                            </div>
                        </div>
                        <div class="product__modal-price mb-10">
                            <span class="price new-price">$700.00</span>

                            <span class="price old-price">$899.99</span>
                        </div>
                        <div class="product__modal-available">
                            <p> Availability: <span>In Stock</span> </p>
                        </div>
                        <div class="product__modal-sku">
                            <p> Sku: <span> 0026AG90-1</span> </p>
                        </div>
                        <div class="product__modal-des">
                            <p>Typi non habent claritatem insitam, est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod legunt saepius.…</p>
                        </div>
                        <div class="product__modal-quantity mb-15">
                            <h5>Quantity:</h5>
                            <form action="#">
                                <div class="pro-quan-area d-lg-flex align-items-center">
                                    <div class="product-quantity mr-20 mb-25">
                                        <div class="cart-plus-minus p-relative"><input type="text" value="1" /></div>
                                    </div>
                                    <div class="product__modal-cart mb-25">
                                        <button class="product-modal-cart-btn " type="submit">Add to cart</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="product__modal-categories d-flex align-items-center">
                            <span>Categories: </span>
                            <ul>
                                <li><a href="#">Decor, </a></li>
                                <li><a href="#">Lamp, </a></li>
                                <li><a href="#">Lighting</a></li>
                            </ul>
                        </div>
                        <div class="product__modal-categories d-flex align-items-center">
                            <span>Tags: </span>
                            <ul>
                                <li><a href="#">Furniture, </a></li>
                                <li><a href="#">Lighting, </a></li>
                                <li><a href="#">Living Room, </a></li>
                                <li><a href="#">Table</a></li>
                            </ul>
                        </div>
                        <div class="product__modal-share d-flex align-items-center">
                            <span>Share this product: </span>
                            <ul>
                                <li>
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- product modal area start -->

    <!-- subscribe area start -->
    <div class="subscribe-area pb-100 gray-bg-2 pt-95">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="section-title text-center">
                        <span class="p-subtitle">OUR NEWSLETTER</span>
                        <h3 class="p-title pb-15 mb-0">join our newsletter</h3>
                        <p class="p-desc  pb-15">Subscribe to the Puik Store mailing list to receive updates on new
                            arrivals, special offers<br>
                            and other discount information.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-xxl-8 col-xl-8">
                    <div class="subscribe-form text-center">
                        <form action="#">
                            <input type="text" placeholder="Your email address...">
                            <button type="submit" class="subscribe-btn subscribe-btn-1">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- subscribe area end -->

    <!-- popup area start -->
    <div class="subscribe-popup d-none">
        <div class="subscribe-wrapper s-popup-padding h-100">
            <div class="pl-75 pr-75">
                <div class="row">
                    <div class="col-xxl-6">
                        <div class="subscribe-content">
                            <div class="logo mb-65">
                                <a href="index.html"><img src="<c:url value='/Front-end/client/img/logo/logo-black.png'/>" alt=""></a>
                            </div>
                            <h4 class="popup-title">Comming Soon</h4>
                            <p class="popup-desc">We’ll be here soon with our new<br>
                                awesome site, subscribe to be notified.</p>
                            <div class="comming-countdown  pb-45">
                                <div class="countdown-inner" data-countdown="" data-date="Mar 02 2024 20:20:22">
                                    <ul>
                                        <li><span data-days="">401</span> Days</li>
                                        <li><span data-hours="">1</span> hours</li>
                                        <li><span data-minutes="">29</span> mins</li>
                                        <li><span data-seconds="">40</span> secs</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="subscribe-form-2 mb-30">
                                <input type="email" placeholder="Enter your email...">
                                <button class="p-btn border-0">Subscribe</button>
                            </div>
                            <div class="popup-social">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                <a href="#"><i class="fal fa-basketball-ball"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="subscribe-thumb" data-background="<c:url value='/Front-end/client/img/popup/subscribe-bg.jpg'/>"></div>
    </div>
    <!-- popup area end -->

</main>
</body>
</html>
