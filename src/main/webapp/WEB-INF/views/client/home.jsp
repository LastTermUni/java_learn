<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <title>Trang chủ</title>
</head>

<body>
<main>

    <!-- slider area start -->
    <section class="slider-area-rel">
        <div class="slider-active slider-active-6 s-dot-style dot-style dot-style-1 dot-bottom-left-2 ">
            <div class="single-slider single-slider-3 slider-height-6 d-flex align-items-center cream-bg">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xxl-6 col-xl-6 col-lg-8 col-md-6 pt-60 pb-10 ">
                            <div class="slider-content-6">
                                <span class="s-subtitle s-subtitle-3 s-subtitle-6 pb-25" > Hot Deal Off The Day</span>
                                <h2 class="s-title s-title-2 s-title-6 pb-28" >Leather Backpack</h2>
                                <p class="s-desc pb-75 slider-p-6">Our robust Reporter Backpack is sure to become an indispensable part  of your accessories repertoire.</p>
                                <div class="p-btn p-btn-5 slider-btn-6">
                                    <a href="shop.html">Discover now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-4 col-md-6">
                            <div class="slider-thumb-6">
                                <img src="<c:url value='/Front-end/client/img/slider/6/slider-thumb-1.png'/>" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider single-slider-3 slider-height-6 d-flex align-items-center light-green-bg">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xxl-6 col-xl-6 col-lg-8 col-md-6 pt-60 pb-10">
                            <div class="slider-content-6">
                                <span class="s-subtitle s-subtitle-3 s-subtitle-6 pb-25" > Top Sale Of The Month</span>
                                <h2 class="s-title s-title-2 s-title-6 pb-28" >Cute Bookbags</h2>
                                <p class="s-desc pb-75 slider-p-6">Top Bags to take "Back To School" that won't remind you of your
                                    high school Backpack.</p>
                                <div class="p-btn p-btn-5 slider-btn-6">
                                    <a href="shop.html">Discover now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-4 col-md-6">
                            <div class="slider-thumb-6">
                                <img src="<c:url value='/Front-end/client/img/slider/6/slider-thumb-2.png'/>" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider single-slider-3 slider-height-6 d-flex align-items-center light-pink-bg">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xxl-6 col-xl-6 col-lg-8 col-md-6 pt-60 pb-10">
                            <div class="slider-content-6">
                                <span class="s-subtitle s-subtitle-3 s-subtitle-6 pb-25" > Featured Products</span>
                                <h2 class="s-title s-title-2 s-title-6 pb-28" >Reporter Backpack</h2>
                                <p class="s-desc pb-75 slider-p-6">Our robust Reporter Backpack is sure to become an indispensable part of your accessories repertoire.</p>
                                <div class="p-btn p-btn-5 slider-btn-6">
                                    <a href="shop.html">Discover now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-4 col-md-6">
                            <div class="slider-thumb-6">
                                <img src="<c:url value='/Front-end/client/img/slider/6/slider-thumb-3.png'/>" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider-scroll-6 p-abs d-none d-sm-block">
            <a href="#category-area"><i class="fal fa-angle-double-down"></i> <span></span></a>
        </div>
    </section>
    <!-- slider area end -->

    <!-- category area start -->
    <div id="category-area" class="category__area category__br-tp gray-bg-5">
        <div class="container-fluid">
            <div class="row row-cols-xxl-5 row-cols-xl-5 row-cols-lg-3 row-cols-md-2 row-cols-sm-2 row-cols-1 gx-0">
<%--                4 loại (máy ảnh, phụ kiện,...) hoặc 4 nhãn hiệu nổi nhất--%>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="shop.html">
                                <img src="<c:url value='/Front-end/client/img/category/6/category-1.jpg'/>" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="shop.html">#women's</a>
                            </div>
                            <h3 class="category__title">
                                <a href="shop.html">VINTAGE LEATHER bag</a>
                            </h3>
                            <a href="shop.html" class="link-btn">Discover More</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="shop.html">
                                <img src="<c:url value='/Front-end/client/img/category/6/category-2.jpg'/>" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="shop.html">#Kids</a>
                            </div>
                            <h3 class="category__title">
                                <a href="shop.html">Kid leather bag</a>
                            </h3>
                            <a href="shop.html" class="link-btn">Discover More</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="shop.html">
                                <img src="<c:url value='/Front-end/client/img/category/6/category-3.jpg'/>" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="shop.html">#Men’s</a>
                            </div>
                            <h3 class="category__title">
                                <a href="shop.html">Modern leather bag</a>
                            </h3>
                            <a href="shop.html" class="link-btn">Discover More</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="shop.html">
                                <img src="<c:url value='/Front-end/client/img/category/6/category-4.jpg'/>" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="shop.html">#Everybody</a>
                            </div>
                            <h3 class="category__title">
                                <a href="shop.html">Sporty backpack</a>
                            </h3>
                            <a href="shop.html" class="link-btn">Discover More</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item fix">
                        <div class="category__thumb">
                            <a href="shop.html">
                                <img src="<c:url value='/Front-end/client/img/category/6/category-5.jpg'/>" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="shop.html">#Men’s</a>
                            </div>
                            <h3 class="category__title">
                                <a href="shop.html">Men's leather bag</a>
                            </h3>
                            <a href="shop.html" class="link-btn">Discover More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- category area end -->

    <!-- top selling area start -->
    <div class="top-selling-area pb-100 pt-95 gray-bg-4">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="section-title top-selling-title text-center pb-47">
                        <span class="p-subtitle p-subtitle-2">Explore The Lookbook</span>
                        <h3 class="p-title pb-15 mb-0">Những sản phẩm mới nhất</h3>
<%--                        <p class="p-desc"></p>--%>
                    </div>
                </div>
            </div>
            <div class="single-product-6-wrapper">
                <div class="row pb-20 gx-0">
<%--                    show sản phẩm ở đây--%>
                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                        <div class="single-product single-product-6 wow fadeInUp" data-wow-delay=".1s">
                            <div class="product-thumb" >
                                <a href="product-detail">
                                    <img src="<c:url value='/Front-end/client/img/products/product-17.jpg'/>" alt="#">
                                    <img src="<c:url value='/Front-end/client/img/products/product-24.jpg'/>" alt="#">
                                </a>
                                <div class="cart-btn cart-btn-1 p-abs">
                                    <a href="#">Thêm vào giỏ</a>
                                </div>
<%--                                <span class="discount discount-2 p-abs">new</span>--%>
<%--                                <span class="discount discount-3 p-abs">-20%</span>--%>
<%--                                <div class="product-action product-action-1 p-abs">--%>
<%--                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">--%>
<%--                                        <i class="fal fa-eye"></i>--%>
<%--                                        <i class="fal fa-eye"></i>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="icon-box icon-box-1">--%>
<%--                                        <i class="fal fa-heart"></i>--%>
<%--                                        <i class="fal fa-heart"></i>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="icon-box icon-box-1">--%>
<%--                                        <i class="fal fa-layer-group"></i>--%>
<%--                                        <i class="fal fa-layer-group"></i>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-1"><a href="product-detail">Simple Stylish Women Backpack</a></h4>
                                <div class="pro-price">
                                    <span>3.000.000 VNĐ</span>
                                    <del>3.500.000 VNĐ</del>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <div class="row">
                <div class="col-xxl-12">
                    <div class="btn-area mt-30 text-center wow fadeInUp mb-20" data-wow-delay="1.2s">
                        <div class="p-btn p-btn-1">
                            <a href="product">Hiển thị tất cả sản phẩm </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- top selling area end -->

    <!-- loockbook area start -->
    <div class="lookbook-area-2">
        <div class="container-fluid p-0">
            <div class="row gx-0">
                <div class="col-xxl-12">
                    <div class="lookbook-slider include-bg owl-carousel" data-background="<c:url value='/Front-end/client/img/lookbook/lookbook-img-1.jpg'/>">
                        <div class="loockbook-item p-rel fix lookbook-height" >
                            <div class="lookbook-thumb p-abs" data-animation="fadeInLeft" data-delay=".3s" data-background="<c:url value='/Front-end/client/img/lookbook/lookbook-img-2.jpg'/>">
                            </div>
                            <div class="lookbook-content">
                                <span  data-animation="fadeInLeft" data-delay=".5s">Explore The Lookbook</span>
                                <h4 class="lookbook-title"  data-animation="fadeInLeft" data-delay=".7s">LookBook</h4>
                                <p  data-animation="fadeInLeft" data-delay=".8s">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many.</p>

                                <a href="shop.html" class="s-btn s-btn-3"  data-animation="fadeInLeft" data-delay=".9s">Discover now</a>
                                <a href="https://www.youtube.com/watch?v=Z4VQKlwOGOo" class="play-btn pulse-btn popup-video" data-animation="fadeInLeft" data-delay="1.1s"><i class="fas fa-play"></i></a>
                            </div>
                        </div>
                        <div class="loockbook-item p-rel fix lookbook-height" >
                            <div class="lookbook-thumb p-abs" data-animation="fadeInLeft" data-delay=".3s" data-background="<c:url value='/Front-end/client/img/lookbook/lookbook-img-3.jpg'/>">
                            </div>
                            <div class="lookbook-content">
                                <span  data-animation="fadeInLeft" data-delay=".5s">Explore The Lookbook</span>
                                <h4 class="lookbook-title"  data-animation="fadeInLeft" data-delay=".7s">LookBook</h4>
                                <p  data-animation="fadeInLeft" data-delay=".8s">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many.</p>

                                <a href="shop.html" class="s-btn s-btn-3"  data-animation="fadeInLeft" data-delay=".9s">Discover now</a>
                                <a href="https://www.youtube.com/watch?v=Z4VQKlwOGOo" class="play-btn pulse-btn popup-video" data-animation="fadeInLeft" data-delay="1.1s"><i class="fas fa-play"></i></a>
                            </div>
                        </div>
                        <div class="loockbook-item p-rel fix lookbook-height" >
                            <div class="lookbook-thumb p-abs" data-animation="fadeInLeft" data-delay=".3s" data-background="<c:url value='/Front-end/client/img/lookbook/lookbook-img-4.jpg'/>">
                            </div>
                            <div class="lookbook-content">
                                <span  data-animation="fadeInLeft" data-delay=".5s">Explore The Lookbook</span>
                                <h4 class="lookbook-title"  data-animation="fadeInLeft" data-delay=".7s">LookBook</h4>
                                <p  data-animation="fadeInLeft" data-delay=".8s">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many.</p>

                                <a href="shop.html" class="s-btn s-btn-3"  data-animation="fadeInLeft" data-delay=".9s">Discover now</a>
                                <a href="https://www.youtube.com/watch?v=Z4VQKlwOGOo" class="play-btn pulse-btn popup-video" data-animation="fadeInLeft" data-delay="1.1s"><i class="fas fa-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- loockbook area end -->


    <!-- top selling product area start -->
    <div class="top-selling-product pb-95 gray-bg-4 pt-95">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="section-title text-center pb-47">
                        <span class="p-subtitle p-subtitle-2">Explore The Lookbook</span>
                        <h3 class="p-title pb-15 mb-0">trending Products</h3>
                        <p class="p-desc">Commodo sociosqu venenatis cras dolor sagittis integer luctus sem primis eget maecenas.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-12">
                    <div class="top-selling-active-2 owl-carousel">
                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
                            <div class="product-thumb">
                                <img src="<c:url value='/Front-end/client/img/products/product-12.jpg'/>" alt="#">
                                <img src="<c:url value='/Front-end/client/img/products/product-17.jpg'/>" alt="#">
                                <div class="cart-btn cart-btn-2 p-abs">
                                    <a href="#">Add to cart</a>
                                </div>
<%--                                <span class="discount discount-2 p-abs">New</span>--%>
<%--                                <span class="discount discount-3 p-abs">-23%</span>--%>
<%--                                <div class="product-action product-action-1 p-abs">--%>
<%--                                    <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">--%>
<%--                                        <i class="fal fa-eye"></i>--%>
<%--                                        <i class="fal fa-eye"></i>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="icon-box icon-box-2">--%>
<%--                                        <i class="fal fa-heart"></i>--%>
<%--                                        <i class="fal fa-heart"></i>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="icon-box icon-box-2">--%>
<%--                                        <i class="fal fa-layer-group"></i>--%>
<%--                                        <i class="fal fa-layer-group"></i>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-2"><a href="product-detail">Simple Stylish Women Backpack</a></h4>
                                <div class="pro-price">
                                    <span>£1.296.00</span>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
                            <div class="product-thumb">
                                <img src="<c:url value='/Front-end/client/img/products/product-13.jpg'/>" alt="#">
                                <img src="<c:url value='/Front-end/client/img/products/product-18.jpg'/>" alt="#">
                                <div class="cart-btn cart-btn-2 p-abs">
                                    <a href="#">Thêm vào giỏ</a>
                                </div>
                                <span class="discount discount-2 p-abs">New</span>
                                <div class="product-action product-action-1 p-abs">
                                    <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                                        <i class="fal fa-eye"></i>
                                        <i class="fal fa-eye"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-heart"></i>
                                        <i class="fal fa-heart"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-layer-group"></i>
                                        <i class="fal fa-layer-group"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-2"><a href="product-details.html">Royal Gallery</a></h4>
                                <div class="pro-price">
                                    <span>£146.00</span>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
                            <div class="product-thumb">
                                <img src="<c:url value='/Front-end/client/img/products/product-14.jpg'/>" alt="#">
                                <img src="<c:url value='/Front-end/client/img/products/product-19.jpg'/>" alt="#">
                                <div class="cart-btn cart-btn-2 p-abs">
                                    <a href="#">Add to cart</a>
                                </div>
                                <div class="product-action product-action-1 p-abs">
                                    <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                                        <i class="fal fa-eye"></i>
                                        <i class="fal fa-eye"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-heart"></i>
                                        <i class="fal fa-heart"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-layer-group"></i>
                                        <i class="fal fa-layer-group"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-2"><a href="product-details.html">Blacker's Complete Home Furn</a></h4>
                                <div class="pro-price">
                                    <span>£146.00</span>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
                            <div class="product-thumb">
                                <img src="<c:url value='/Front-end/client/img/products/product-15.jpg'/>" alt="#">
                                <img src="<c:url value='/Front-end/client/img/products/product-20.jpg'/>" alt="#">
                                <div class="cart-btn cart-btn-2 p-abs">
                                    <a href="#">Add to cart</a>
                                </div>
                                <span class="discount discount-3 p-abs">-20%</span>
                                <div class="product-action product-action-1 p-abs">
                                    <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                                        <i class="fal fa-eye"></i>
                                        <i class="fal fa-eye"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-heart"></i>
                                        <i class="fal fa-heart"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-layer-group"></i>
                                        <i class="fal fa-layer-group"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-2"><a href="product-details.html">Marlborough Barn</a></h4>
                                <div class="pro-price">
                                    <span>£136.00</span>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
                            <div class="product-thumb">
                                <img src="<c:url value='/Front-end/client/img/products/product-16.jpg'/>" alt="#">
                                <img src="<c:url value='/Front-end/client/img/products/product-21.jpg'/>" alt="#">
                                <div class="cart-btn cart-btn-2 p-abs">
                                    <a href="#">Add to cart</a>
                                </div>
                                <span class="discount discount-2 p-abs">New</span>
                                <div class="product-action product-action-1 p-abs">
                                    <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                                        <i class="fal fa-eye"></i>
                                        <i class="fal fa-eye"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-heart"></i>
                                        <i class="fal fa-heart"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-layer-group"></i>
                                        <i class="fal fa-layer-group"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-2"><a href="product-details.html">Royal Gallery</a></h4>
                                <div class="pro-price">
                                    <span>£146.00</span>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
                            <div class="product-thumb">
                                <img src="<c:url value='/Front-end/client/img/products/product-14.jpg'/>" alt="#">
                                <img src="<c:url value='/Front-end/client/img/products/product-22.jpg'/>" alt="#">
                                <div class="cart-btn cart-btn-2 p-abs">
                                    <a href="#">Add to cart</a>
                                </div>
                                <div class="product-action product-action-1 p-abs">
                                    <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                                        <i class="fal fa-eye"></i>
                                        <i class="fal fa-eye"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-heart"></i>
                                        <i class="fal fa-heart"></i>
                                    </a>
                                    <a href="#" class="icon-box icon-box-2">
                                        <i class="fal fa-layer-group"></i>
                                        <i class="fal fa-layer-group"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-2"><a href="product-details.html">Blacker's Complete Home Furn</a></h4>
                                <div class="pro-price">
                                    <span>£146.00</span>
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star"></i>
                                    <i class="fal fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- top selling product area end -->

    <!-- border -->
    <div class="hr-border"></div>



<%--    <!-- product modal area start -->--%>
<%--    <div class="product__modal-area modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModal" aria-hidden="true">--%>
<%--        <div class="modal-dialog modal-dialog-centered" role="document">--%>
<%--            <div class="modal-content">--%>
<%--                <div class="product__modal-inner position-relative">--%>
<%--                    <div class="product__modal-close">--%>
<%--                        <button data-bs-dismiss="modal" aria-label="Close">--%>
<%--                            <i class="ti-close"></i>--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                    <div class="product__modal-left">--%>
<%--                        <div class="tab-content mb-10" id="productModalThumb">--%>
<%--                            <div class="tab-pane fade show active" id="pro-1" role="tabpanel" aria-labelledby="pro-1-tab">--%>
<%--                                <div class="product__modal-thumb w-img">--%>
<%--                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-1.jpg'/>" alt="">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="tab-pane fade" id="pro-2" role="tabpanel" aria-labelledby="pro-2-tab">--%>
<%--                                <div class="product__modal-thumb w-img">--%>
<%--                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-2.jpg'/>" alt="">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="tab-pane fade" id="pro-3" role="tabpanel" aria-labelledby="pro-3-tab">--%>
<%--                                <div class="product__modal-thumb w-img">--%>
<%--                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-3.jpg'/>" alt="">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="tab-pane fade" id="pro-4" role="tabpanel" aria-labelledby="pro-4-tab">--%>
<%--                                <div class="product__modal-thumb w-img">--%>
<%--                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-4.jpg'/>" alt="">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-nav">--%>
<%--                            <ul class="nav nav-tabs" id="productModalNav" role="tablist">--%>
<%--                                <li class="nav-item" role="presentation">--%>
<%--                                    <button class="nav-link active" id="pro-1-tab" data-bs-toggle="tab" data-bs-target="#pro-1" type="button" role="tab" aria-controls="pro-1" aria-selected="true">--%>
<%--                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-1.jpg'/>" alt="">--%>
<%--                                    </button>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item" role="presentation">--%>
<%--                                    <button class="nav-link" id="pro-2-tab" data-bs-toggle="tab" data-bs-target="#pro-2" type="button" role="tab" aria-controls="pro-2" aria-selected="false">--%>
<%--                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-2.jpg'/>" alt="">--%>
<%--                                    </button>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item" role="presentation">--%>
<%--                                    <button class="nav-link" id="pro-3-tab" data-bs-toggle="tab" data-bs-target="#pro-3" type="button" role="tab" aria-controls="pro-3" aria-selected="false">--%>
<%--                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-3.jpg'/>" alt="">--%>
<%--                                    </button>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item" role="presentation">--%>
<%--                                    <button class="nav-link" id="pro-4-tab" data-bs-toggle="tab" data-bs-target="#pro-4" type="button" role="tab" aria-controls="pro-4" aria-selected="false">--%>
<%--                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-4.jpg'/>" alt="">--%>
<%--                                    </button>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product__modal-right">--%>
<%--                        <h3 class="product__modal-title">--%>
<%--                            <a href="product-details.html">Living Room Lighting</a>--%>
<%--                        </h3>--%>
<%--                        <div class="product__modal-rating d-flex align-items-center">--%>
<%--                            <ul class="mr-10">--%>
<%--                                <li>--%>
<%--                                    <a href="#"><i class="ti-star"></i></a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#"><i class="ti-star"></i></a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#"><i class="ti-star"></i></a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#"><i class="ti-star"></i></a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#"><i class="ti-star"></i></a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                            <div class="customer-review">--%>
<%--                                <a href="#">(1 customer review)</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-price mb-10">--%>
<%--                            <span class="price new-price">$700.00</span>--%>

<%--                            <span class="price old-price">$899.99</span>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-available">--%>
<%--                            <p> Availability: <span>In Stock</span> </p>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-sku">--%>
<%--                            <p> Sku: <span> 0026AG90-1</span> </p>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-des">--%>
<%--                            <p>Typi non habent claritatem insitam, est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod legunt saepius.…</p>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-quantity mb-15">--%>
<%--                            <h5>Quantity:</h5>--%>
<%--                            <form action="#">--%>
<%--                                <div class="pro-quan-area d-sm-flex align-items-center">--%>
<%--                                    <div class="product-quantity mr-20 mb-25">--%>
<%--                                        <div class="cart-plus-minus p-relative"><input type="text" value="1" /></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__modal-cart mb-25">--%>
<%--                                        <button class="product-modal-cart-btn " type="submit">Add to cart</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-categories d-sm-flex align-items-center">--%>
<%--                            <span>Categories: </span>--%>
<%--                            <ul>--%>
<%--                                <li><a href="#">Decor, </a></li>--%>
<%--                                <li><a href="#">Lamp, </a></li>--%>
<%--                                <li><a href="#">Lighting</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="product__modal-categories d-sm-flex align-items-center">--%>
<%--                            <span>Tags: </span>--%>
<%--                            <ul>--%>
<%--                                <li><a href="#">Furniture, </a></li>--%>
<%--                                <li><a href="#">Lighting, </a></li>--%>
<%--                                <li><a href="#">Living Room, </a></li>--%>
<%--                                <li><a href="#">Table</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>  --%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- product modal area start -->--%>

</main>
</body>

</html>
