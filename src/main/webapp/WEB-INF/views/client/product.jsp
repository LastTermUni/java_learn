<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<main>

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area pt-155 pb-165 mb-50" data-background="<c:url value='/Front-end/client/img/banner/breadcrumb.jpg'/>" style="background-size: cover; ">
        <div class="container">
            <div class="breadcrumb-title text-center">
                <h2>Shop</h2>
            </div>
            <div class="breadcrumb-list">
                <a href="home">Trang chủ</a>
                <span>Danh sách sản phẩm</span>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- shop area start -->
    <div class="shop-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-xxl-3 col-xl-3 col-lg-4">
                    <div class="shop-sidebar-area pt-7 pr-60">
                        <div class="single-widget pb-50 mb-50">
                            <h4 class="widget-title">Thương hiệu</h4>
                            <div class="widget-category-list">
                                <form action="#">
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="cat-item-1" name="cat-item">
                                        <label for="cat-item-1">Sony<span>(12)</span></label>
                                    </div>
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="cat-item-2" name="cat-item">
                                        <label for="cat-item-2">Nikon<span>(60)</span></label>
                                    </div>
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="cat-item-3" name="cat-item">
                                        <label for="cat-item-3">Computers & Technologies <span>(41)</span></label>
                                    </div>
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="cat-item-4" name="cat-item">
                                        <label for="cat-item-4">Phones & Accessories <span>(28)</span></label>
                                    </div>

                                </form>
                            </div>
                        </div>
                        <div class="single-widget mb-50">
                            <h4 class="widget-title title-price-space">Lọc theo giá</h4>
                            <form action="#">
                                <div class="ui-price-slider mb-40">
                                    <div class="slider-range">
                                        <div id="slider-range" class="mb-20"></div>
                                        <div class="row">
                                            <div class="col-9">
                                                <p>
                                                    <label for="amount">Giá:</label>
                                                    <input type="text" id="amount" readonly>
                                                </p>
                                            </div>
                                            <div class="col-3">
                                                <div class="text-end">
                                                    <a href="#" class="widget-title">Lọc</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="single-widget pb-50 mb-50">
                            <h4 class="widget-title">Lọc theo mục</h4>
                            <div class="widget-color-list widget-color-box scroll-box-default">
                                <form action="#">
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="color-item-1" name="cat-item">
                                        <label for="color-item-1" class="color-black-bg">Máy ảnh <span>(12)</span></label>
                                    </div>
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="color-item-2" name="cat-item">
                                        <label for="color-item-2" class="color-green-bg">Ống kính<span>(02)</span></label>
                                    </div>
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="color-item-3" name="cat-item">
                                        <label for="color-item-3" class="color-blue-bg">Đèn flash<span>(06)</span></label>
                                    </div>

                                </form>
                            </div>
                        </div>
<%--                        <div class="single-widget pb-50 mb-50">--%>
<%--                            <h4 class="widget-title">Filter By Size</h4>--%>
<%--                            <div class="widget-category-list scroll-box-default">--%>
<%--                                <form action="#">--%>
<%--                                    <div class="single-widget-category">--%>
<%--                                        <input type="checkbox" id="size-item-1" name="cat-item">--%>
<%--                                        <label for="size-item-1">S <span>(02)</span></label>--%>
<%--                                    </div>--%>
<%--                                    <div class="single-widget-category">--%>
<%--                                        <input type="checkbox" id="size-item-2" name="cat-item">--%>
<%--                                        <label for="size-item-2">M <span>(08)</span></label>--%>
<%--                                    </div>--%>
<%--                                    <div class="single-widget-category">--%>
<%--                                        <input type="checkbox" id="size-item-3" name="cat-item">--%>
<%--                                        <label for="size-item-3">L <span>(19)</span></label>--%>
<%--                                    </div>--%>
<%--                                    <div class="single-widget-category">--%>
<%--                                        <input type="checkbox" id="size-item-4" name="cat-item">--%>
<%--                                        <label for="size-item-4">XL <span>(21)</span></label>--%>
<%--                                    </div>--%>
<%--                                    <div class="single-widget-category">--%>
<%--                                        <input type="checkbox" id="size-item-5" name="cat-item">--%>
<%--                                        <label for="size-item-5">XXL <span>(09)</span></label>--%>
<%--                                    </div>--%>
<%--                                    <div class="single-widget-category">--%>
<%--                                        <input type="checkbox" id="size-item-6" name="cat-item">--%>
<%--                                        <label for="size-item-6">XXXL <span>(06)</span></label>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>b
                    </div>
                </div>
                <div class="col-xxl-9 col-xl-9 col-lg-8 order-first order-lg-last">
                    <div class="shop-top-area mb-40">
                        <div class="row">
                            <div class="col-xxl-4 col-xl-2 col-md-3 col-sm-3">
                                <div class="shop-top-left">
                                    <span class="label mr-15">Kiểu xem:</span>
                                    <div class="nav d-inline-block tab-btn-group" id="nav-tab" role="tablist">
                                        <button class="active" data-bs-toggle="tab" data-bs-target="#tab1" type="button"><i class="fas fa-border-none"></i></button>
                                        <button data-bs-toggle="tab" data-bs-target="#tab2" type="button"><i class="fas fa-list"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-xl-6 col-md-6 col-sm-6">
<%--                                <p class="show-total-result text-sm-center">Showing 1–12 of 24 results</p>--%>
                            </div>
                            <div class="col-xl-4 col-xl-4 col-md-3 col-sm-3">
                                <div class="text-sm-end">
                                    <div class="select-default">
                                        <select name="short" id="short" class="shorting-select">
                                            <option value="">Mới nhất</option>
                                            <option value="">Giá tăng dần</option>
                                            <option value="">Giá giảm dần</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /. shop top area -->
                    <div class="shop-main-area">
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade  show active" id="tab1">
                                <div class="row pb-20">
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/1.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/1-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-1 p-abs">-20%</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" data-bs-toggle="modal" data-bs-target="#productModal" class="icon-box icon-box-1">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Simple Stylish Women Backpack</a></h4>
                                                <div class="pro-price">
                                                    <span>£1.296.00</span>
                                                    <del>£96.00</del>
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
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/2.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/2-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-1 p-abs">-23%</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Loose Oversized Shirt </a></h4>
                                                <div class="pro-price">
                                                    <span>£188.00</span>
                                                    <del>£66.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".6s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/3.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/3-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Cotton Jersey Loose </a></h4>
                                                <div class="pro-price">
                                                    <span>£122.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".9s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/4.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/4-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-2 p-abs">New</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Voluptatem quaerat nesciunt</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/5.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/5-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-2 p-abs">New</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Quod laboriosam, recusandae</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/6.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/6-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">At corporis quas in </a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".6s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/7.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/7-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Fashion in the world</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".9s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/8.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/fashion/8-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Folores facere molestias</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/1.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/1-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-3 p-abs">-20%</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Simple Stylish Women Backpack</a></h4>
                                                <div class="pro-price">
                                                    <span>£1.296.00</span>
                                                    <del>£96.00</del>
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
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/21.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/21-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-3 p-abs">-23%</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Loose Oversized Shirt </a></h4>
                                                <div class="pro-price">
                                                    <span>£188.00</span>
                                                    <del>£66.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".6s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/3.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/3-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Cotton Jersey Loose </a></h4>
                                                <div class="pro-price">
                                                    <span>£122.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".9s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/4.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/4-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-2 p-abs">New</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Voluptatem quaerat nesciunt</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/5.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/5-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <span class="discount discount-2 p-abs">New</span>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Quod laboriosam, recusandae</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/6.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/6-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">At corporis quas in </a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".6s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/7.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/7-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">furniture in the world</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".9s">
                                            <div class="product-thumb">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/8.jpg'/>" alt="#">
                                                <img src="<c:url value='/Front-end/client/img/products/furniture/8-1.jpg'/>" alt="#">
                                                <div class="cart-btn cart-btn-1 p-abs">
                                                    <a href="#">Add to cart</a>
                                                </div>
                                                <div class="product-action product-action-1 p-abs">
                                                    <a href="#" class="icon-box icon-box-1" data-bs-toggle="modal" data-bs-target="#productModal">
                                                        <i class="fal fa-eye"></i>
                                                        <i class="fal fa-eye"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-heart"></i>
                                                        <i class="fal fa-heart"></i>
                                                    </a>
                                                    <a href="#" class="icon-box icon-box-1">
                                                        <i class="fal fa-layer-group"></i>
                                                        <i class="fal fa-layer-group"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4 class="pro-title pro-title-1"><a href="product-details.html">Folores facere molestias</a></h4>
                                                <div class="pro-price">
                                                    <span>£223.00</span>
                                                    <del>£64.00</del>
                                                </div>
                                                <div class="rating">
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star active"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab2">
                                <div class="product-wrap">
                                    <div class="single-product mb-30 puik-list-product-wrap">
                                        <div class="row align-items-xl-center">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4">
                                                <div class="product-thumb mr-30 product-thumb-list">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/20.jpg'/>" alt="#">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/20-1.jpg'/>" alt="#">
                                                </div>
                                            </div>
                                            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8">
                                                <div class="puik-product-content puik-product-list-content">
                                                    <h4 class="pro-title pro-title-1"><a href="product-details.html">Simple Stylish Women Backpack</a></h4>
                                                    <div class="pro-price">
                                                        <span>£188.00</span>
                                                        <del>£66.00</del>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                    </div>
                                                    <p>Claritas est etiam processus A Capitalize on low hanging fruit to identify a ballpark value added activity to
                                                        beta test. Override the digital divide with additional clickthroughs from DevOps. Typi non habent claritatem
                                                        insitam, est usus legentis in iis qui facit eorum [...]</p>
                                                    <div class="puik-shop-product-actions">
                                                        <a href="#" class="puik-cart-btn">Add to cart</a>
                                                        <a href="#" class="puik-proudct-btn-boxed" style="padding: 12px;"><i class="fal fa-heart"></i></a>
                                                        <a href="#" class="puik-proudct-btn-boxed" style="padding: 12px;"><i class="fal fa-layer-group"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product mb-30 puik-list-product-wrap">
                                        <div class="row align-items-xl-center">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4">
                                                <div class="product-thumb mr-30 product-thumb-list">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/1.jpg'/>" alt="#">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/1-1.jpg'/>" alt="#">
                                                </div>
                                            </div>
                                            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8">
                                                <div class="puik-product-content puik-product-list-content">
                                                    <h4 class="pro-title pro-title-1"><a href="product-details.html">Loose Oversized Shirt</a></h4>
                                                    <div class="pro-price">
                                                        <span>£28.00</span>
                                                        <del>£44.00</del>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                    </div>
                                                    <p>Claritas est etiam processus A Capitalize on low hanging fruit to identify a ballpark value added activity to
                                                        beta test. Override the digital divide with additional clickthroughs from DevOps. Typi non habent claritatem
                                                        insitam, est usus legentis in iis qui facit eorum [...]</p>
                                                    <div class="puik-shop-product-actions">
                                                        <a href="#" class="puik-cart-btn">Add to cart</a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-heart"></i></a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-layer-group"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product mb-30 puik-list-product-wrap">
                                        <div class="row align-items-xl-center">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4">
                                                <div class="product-thumb mr-30 product-thumb-list">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/2.jpg'/>" alt="#">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/2-1.jpg'/>" alt="#">
                                                </div>
                                            </div>
                                            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8">
                                                <div class="puik-product-content puik-product-list-content">
                                                    <h4 class="pro-title pro-title-1"><a href="product-details.html">Cotton Jersey Loose</a></h4>
                                                    <div class="pro-price">
                                                        <span>£57.00</span>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                    </div>
                                                    <p>Claritas est etiam processus A Capitalize on low hanging fruit to identify a ballpark value added activity to
                                                        beta test. Override the digital divide with additional clickthroughs from DevOps. Typi non habent claritatem
                                                        insitam, est usus legentis in iis qui facit eorum [...]</p>
                                                    <div class="puik-shop-product-actions">
                                                        <a href="#" class="puik-cart-btn">Add to cart</a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-heart"></i></a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-layer-group"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product mb-30 puik-list-product-wrap">
                                        <div class="row align-items-xl-center">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4">
                                                <div class="product-thumb mr-30 product-thumb-list">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/3.jpg'/>" alt="#">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/3-1.jpg'/>" alt="#">
                                                </div>
                                            </div>
                                            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8">
                                                <div class="puik-product-content puik-product-list-content">
                                                    <h4 class="pro-title pro-title-1"><a href="product-details.html">Quod laboriosam, recusandae</a></h4>
                                                    <div class="pro-price">
                                                        <span>£124.00</span>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                    </div>
                                                    <p>Claritas est etiam processus A Capitalize on low hanging fruit to identify a ballpark value added activity to
                                                        beta test. Override the digital divide with additional clickthroughs from DevOps. Typi non habent claritatem
                                                        insitam, est usus legentis in iis qui facit eorum [...]</p>
                                                    <div class="puik-shop-product-actions">
                                                        <a href="#" class="puik-cart-btn">Add to cart</a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-heart"></i></a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-layer-group"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product mb-30 puik-list-product-wrap">
                                        <div class="row align-items-xl-center">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4">
                                                <div class="product-thumb mr-30 product-thumb-list">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/4.jpg'/>" alt="#">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/4-1.jpg'/>" alt="#">
                                                </div>
                                            </div>
                                            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8">
                                                <div class="puik-product-content puik-product-list-content">
                                                    <h4 class="pro-title pro-title-1"><a href="product-details.html">Voluptatem quaerat nesciunt</a></h4>
                                                    <div class="pro-price">
                                                        <span>£199.00</span>
                                                        <del>£266.00</del>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                    </div>
                                                    <p>Claritas est etiam processus A Capitalize on low hanging fruit to identify a ballpark value added activity to
                                                        beta test. Override the digital divide with additional clickthroughs from DevOps. Typi non habent claritatem
                                                        insitam, est usus legentis in iis qui facit eorum [...]</p>
                                                    <div class="puik-shop-product-actions">
                                                        <a href="#" class="puik-cart-btn">Add to cart</a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-heart"></i></a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-layer-group"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product mb-30 puik-list-product-wrap">
                                        <div class="row align-items-xl-center">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4">
                                                <div class="product-thumb mr-30 product-thumb-list">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/5.jpg'/>" alt="#">
                                                    <img src="<c:url value='/Front-end/client/img/products/fashion/5-1.jpg'/>" alt="#">
                                                </div>
                                            </div>
                                            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8">
                                                <div class="puik-product-content puik-product-list-content">
                                                    <h4 class="pro-title pro-title-1"><a href="product-details.html">furniture in the world</a></h4>
                                                    <div class="pro-price">
                                                        <span>£150.00</span>
                                                    </div>
                                                    <div class="rating">
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star active"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                        <i class="fal fa-star"></i>
                                                    </div>
                                                    <p>Claritas est etiam processus A Capitalize on low hanging fruit to identify a ballpark value added activity to
                                                        beta test. Override the digital divide with additional clickthroughs from DevOps. Typi non habent claritatem
                                                        insitam, est usus legentis in iis qui facit eorum [...]</p>
                                                    <div class="puik-shop-product-actions">
                                                        <a href="#" class="puik-cart-btn">Add to cart</a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-heart"></i></a>
                                                        <a href="#" class="puik-proudct-btn-boxed"><i class="fal fa-layer-group"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="shop-pagination">
                        <div class="basic-pagination">
                            <nav>
                                <ul>
                                    <li>
                                        <a href="shop.html">
                                            <i class="far fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="shop.html">1</a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="active">2</a>
                                    </li>
                                    <li>
                                        <a href="shop.html">3</a>
                                    </li>
                                    <li>
                                        <a href="shop.html">
                                            <i class="far fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- /. shop main area -->
                </div>
            </div>
        </div>
    </div>
    <!-- shop area end -->

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
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-1.jpg'/>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pro-2" role="tabpanel" aria-labelledby="pro-2-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-2.jpg'/>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pro-3" role="tabpanel" aria-labelledby="pro-3-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-3.jpg'/>" alt="">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pro-4" role="tabpanel" aria-labelledby="pro-4-tab">
                                <div class="product__modal-thumb w-img">
                                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-4.jpg'/>" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="product__modal-nav">
                            <ul class="nav nav-tabs" id="productModalNav" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pro-1-tab" data-bs-toggle="tab" data-bs-target="#pro-1" type="button" role="tab" aria-controls="pro-1" aria-selected="true">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-1.jpg'/>" alt="">
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pro-2-tab" data-bs-toggle="tab" data-bs-target="#pro-2" type="button" role="tab" aria-controls="pro-2" aria-selected="false">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-2.jpg'/>" alt="">
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pro-3-tab" data-bs-toggle="tab" data-bs-target="#pro-3" type="button" role="tab" aria-controls="pro-3" aria-selected="false">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-3.jpg'/>" alt="">
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pro-4-tab" data-bs-toggle="tab" data-bs-target="#pro-4" type="button" role="tab" aria-controls="pro-4" aria-selected="false">
                                        <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-4.jpg'/>" alt="">
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

</main>
</body>
</html>
