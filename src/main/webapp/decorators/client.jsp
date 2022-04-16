<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/Front-end/client/img/favicon.ico'/>">
    <!-- CSS here -->
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/preloader.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/owl.carousel.min.css'/> ">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/animate.min.css'/> ">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/magnific-popup.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/meanmenu.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/animate.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/slick.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/fontawesome-all.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/themify-icons.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/nice-select.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/ui-range-slider.css'/>">
    <link rel="stylesheet" href="<c:url value='/Front-end/client/css/main.css'/>">
    <title>
        <dec:title/>
    </title>
</head>
<body>
<!-- preloader start -->
<div id="loading">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <svg viewBox="0 0 58 58" id="mustard" class="product">
                <g>
                    <path style="fill:#ED7161;" d="M39.869,58H18.131C16.954,58,16,57.046,16,55.869V12.621C16,11.726,16.726,11,17.621,11h22.757
                        C41.274,11,42,11.726,42,12.621v43.248C42,57.046,41.046,58,39.869,58z"></path>
                    <polygon style="fill:#D13834;" points="35,11 23,11 27.615,0 30.385,0 	"></polygon>
                    <rect x="16" y="16" style="fill:#D75A4A;" width="26" height="2"></rect>
                    <rect x="20" y="11" style="fill:#D75A4A;" width="2" height="6"></rect>
                    <rect x="25" y="11" style="fill:#D75A4A;" width="2" height="6"></rect>
                    <rect x="30" y="11" style="fill:#D75A4A;" width="2" height="6"></rect>
                    <rect x="36" y="11" style="fill:#D75A4A;" width="2" height="6"></rect>
                    <circle style="fill:#D13834;" cx="29" cy="36" r="10"></circle>
                </g>
            </svg>
            <svg viewBox="0 0 49.818 49.818" id="meat" class="product">
                <g>
                    <path style="fill:#994530;" d="M0.953,38.891c0,0,3.184,6.921,11.405,9.64c1.827,0.604,3.751,0.751,5.667,0.922
                        c7.866,0.703,26.714-0.971,31.066-18.976c1.367-5.656,0.76-11.612-1.429-17.003C44.51,5.711,37.447-4.233,22.831,2.427
                        c-8.328,3.795-7.696,10.279-5.913,14.787c2.157,5.456-2.243,11.081-8.06,10.316C1.669,26.584-1.825,30.904,0.953,38.891z"></path>
                    <g>
                        <path style="fill:#D75A4A;" d="M4.69,37.18c0.402,0.785,3.058,5.552,9.111,7.554c1.335,0.441,2.863,0.577,4.482,0.72l0.282,0.025
                            c0.818,0.073,1.698,0.11,2.617,0.11c18.18,0,22.854-11.218,24.02-16.041c1.134-4.693,0.706-9.703-1.235-14.488
                            C41.049,7.874,36.856,4.229,31.506,4.229c-2.21,0-4.683,0.615-7.349,1.83c-2.992,1.364-6.676,3.921-4.13,10.36
                            c1.284,3.25,0.912,6.746-1.023,9.591c-2.17,3.191-6.002,4.901-9.895,4.39c-0.493-0.065-0.966-0.099-1.404-0.099
                            c-1.077,0-2.502,0.198-3.173,1.143C3.765,32.524,3.823,34.609,4.69,37.18z"></path>
                        <path style="fill:#C64940;" d="M21.184,46.589c-0.948,0-1.858-0.038-2.706-0.114l-0.283-0.025
                            c-1.674-0.147-3.257-0.287-4.706-0.767c-6.376-2.108-9.188-7.073-9.688-8.047l-0.058-0.137c-0.984-2.917-0.993-5.273-0.026-6.635
                            c0.912-1.285,2.89-1.807,5.524-1.456c3.537,0.466,6.959-1.054,8.936-3.961c1.746-2.565,2.082-5.723,0.921-8.661
                            c-3.189-8.065,2.707-10.754,4.645-11.638c9.68-4.407,16.81-1.155,21.152,9.535c2.021,4.981,2.464,10.202,1.28,15.099
                            C44.953,34.836,40.073,46.589,21.184,46.589z M5.613,36.787c0.401,0.758,2.936,5.155,8.503,6.997
                            c1.229,0.406,2.699,0.536,4.256,0.673l0.284,0.025c0.788,0.07,1.639,0.106,2.527,0.106c17.469,0,21.938-10.683,23.048-15.276
                            c1.084-4.487,0.672-9.286-1.19-13.877C40.29,8.663,36.409,5.229,31.506,5.229c-2.067,0-4.4,0.585-6.934,1.74
                            c-3.02,1.376-5.81,3.532-3.615,9.083c1.408,3.563,0.998,7.398-1.126,10.521c-2.404,3.534-6.563,5.386-10.852,4.818
                            c-1.793-0.236-3.197,0.019-3.632,0.632C4.912,32.636,4.756,34.207,5.613,36.787z"></path>
                    </g>
                    <g>
                        <circle style="fill:#E6E6E6;" cx="32.455" cy="12.779" r="4"></circle>
                        <path style="fill:#7A3726;" d="M32.455,17.779c-2.757,0-5-2.243-5-5s2.243-5,5-5s5,2.243,5,5S35.212,17.779,32.455,17.779z
                            M32.455,9.779c-1.654,0-3,1.346-3,3s1.346,3,3,3s3-1.346,3-3S34.109,9.779,32.455,9.779z"></path>
                    </g>
                    <path style="fill:#C64940;" d="M25.617,45.684l-1.941-0.479c0.435-1.761-1.063-3.216-3.446-4.859
                        c-2.875-1.984-4.817-5.117-5.327-8.595c-0.186-1.266-0.425-2.285-0.428-2.295l1.922-0.548c0.01,0.028,1.09,3.104,3.978,4.314
                        c2.094,0.877,4.667,0.598,7.648-0.832c11.578-5.554,17.102-2.646,17.332-2.52l-0.967,1.752c-0.04-0.021-4.97-2.48-15.5,2.57
                        c-3.53,1.694-6.662,1.984-9.312,0.863c-0.801-0.339-1.49-0.779-2.078-1.265c0.769,1.974,2.11,3.695,3.867,4.907
                        C23.149,39.931,26.472,42.222,25.617,45.684z"></path>
                    <path style="fill:#C64940;" d="M27.074,27.586c-5.37,0-7.605-3.694-7.633-3.74l1.727-1.01l-0.863,0.505l0.859-0.511
                        c0.108,0.179,2.714,4.335,9.738,2.105c1.54-0.794,12.038-6.002,15.619-2.289l-1.439,1.389c-1.979-2.052-9.229,0.576-13.332,2.714
                        l-0.154,0.064C29.892,27.364,28.389,27.586,27.074,27.586z"></path>
                </g>
            </svg>
            <svg viewBox="0 0 49 49" id="soda" class="product">
                <g>
                    <path style="fill:#E22F37;" d="M9.5,27V5.918c0-1.362,0.829-2.587,2.094-3.093l0,0C12.642,2.406,13.5,1.14,13.5,0.011L13.5,0v0
                        l11,0l11,0v0v0.011c0,1.129,0.858,2.395,1.906,2.814l0,0c1.265,0.506,2.094,1.73,2.094,3.093V27v-5v21.082
                        c0,1.362-0.829,2.587-2.094,3.093h0c-1.048,0.419-1.906,1.686-1.906,2.814V49l0,0h-11h-11l0,0l0-0.011
                        c0-1.129-0.858-2.395-1.906-2.814h0c-1.265-0.506-2.094-1.73-2.094-3.093V22"></path>
                    <path style="fill:#F75B57;" d="M18.5,7h-5c-0.553,0-1-0.447-1-1s0.447-1,1-1h5c0.553,0,1,0.447,1,1S19.053,7,18.5,7z"></path>
                    <path style="fill:#F75B57;" d="M35.5,7h-13c-0.553,0-1-0.447-1-1s0.447-1,1-1h13c0.553,0,1,0.447,1,1S36.053,7,35.5,7z"></path>
                    <path style="fill:#994530;" d="M18.5,45h-5c-0.553,0-1-0.447-1-1s0.447-1,1-1h5c0.553,0,1,0.447,1,1S19.053,45,18.5,45z"></path>
                    <path style="fill:#994530;" d="M35.5,45h-13c-0.553,0-1-0.447-1-1s0.447-1,1-1h13c0.553,0,1,0.447,1,1S36.053,45,35.5,45z"></path>
                    <polygon style="fill:#E6E6E6;" points="39.5,32 9.5,42 9.5,20 39.5,10 	"></polygon>
                    <polygon style="fill:#F9D70B;" points="39.5,28 9.5,38 9.5,24 39.5,14 	"></polygon>
                </g>
            </svg>
            <div class="cart-container">
                <svg viewBox="0 0 512 512" id="cart">
                    <circle cx="376.8" cy="440" r="55"></circle>
                    <circle cx="192" cy="440" r="55"></circle>
                    <polygon points="128,0 0.8,0 0.8,32 104.8,32 136.8,124.8 170.4,124.8 "></polygon>
                    <polygon style="fill:#ED7161;" points="250.4,49.6 224,124.8 411.2,124.8 "></polygon>
                    <polygon style="fill:#ee5a46;" points="411.2,124.8 224,124.8 170.4,124.8 136.8,124.8 68,124.8 141.6,361.6 427.2,361.6
                    511.2,124.8 "></polygon>
                    <g>
                        <rect x="166.4" y="185.6" style="fill:#FFFFFF;" width="255.2" height="16"></rect>
                        <rect x="166.4" y="237.6" style="fill:#FFFFFF;" width="166.4" height="16"></rect>
                    </g>
                </svg>
            </div>
        </div>
    </div>
</div>
<!-- preloader end -->
<!-- header area start -->

<header>
    <div id="header-sticky" class="header-area header-sticky header-sticky-white">
        <div class="header-main header-main-1 header-main-2 header-main-3 header-padding header-border  pl-50 pr-50"
             style="height: inherit">
            <div class="container-fluid" style="height: 85px">
                <div class="row align-items-center align-content-center" style="height: 100%">
                    <div class="col-xxl-3 col-xl-2 col-lg-2 col-md-4 col-sm-6 col-4">
                        <div class="header-left">
                            <div class="logo pl-55 pr-55 d-inline-block " >
                                <a href="home">
                                    <img height="50px " src="<c:url value='/Front-end/images/logo/CameraStore-black.png'/>" alt="#"/>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-6 col-xl-8 col-lg-8 d-none d-lg-block">
                        <div class="main-menu p-rel d-flex align-items-center justify-content-center">
                            <nav id="mobile-menu">
                                <ul>
                                    <li><a href="/home">Trang chủ</a></li>
                                    <li class="static">
                                        <a href="/product">Sản phẩm</a>
                                        <ul class="mega-menu mega-full mega-menu-5-col">
<%--                                            <c:forEach items="${brands}" var="brand">--%>
                                                <li class="has-dropdown">
                                                    <a href="/product">Thương hiệu</a>
                                                    <ul class="has-dropdown">
                                                        <c:forEach items="${cates}" var="cate">
                                                        <li><a role="button" onclick="toCateWBrand(${cate.id});">
                                                                ${cate.tenloai}</a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </li>
<%--                                            </c:forEach>--%>

                                        </ul>
                                    </li>
<%--                                    <li class="static"><a href="{{URL('/tin-tuc')}}">Tin tức</a></li>--%>
<%--                                    <li class="static"><a href="{{URL('/lien-he')}}">Liên hệ</a></li>--%>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-2 col-lg-2 col-md-8 col-sm-6 col-8">
                        <div class="header-right-wrapper d-flex align-items-center justify-content-end">
                            <div class="header-right header-right-2 d-flex align-items-center justify-content-end">
                                <a href="login" class="d-none d-xxl-inline-block">Đăng nhập / Đăng ký</a>
                                <div class="header-icon header-icon-2 d-inline-block ml-30">
                                    <a href="javascript:void(0)" class="search-toggle"><i
                                            class="fal fa-search"></i></a>
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#cartMiniModal" id="openCartList"><i
                                            class="fal fa-shopping-cart"></i><span id="cartNumber">0</span></button>
                                </div>
                            </div>
                            <div class="header-bar ml-20 d-lg-none">
                                <button type="button" class="header-bar-btn header-bar-btn-black"
                                        data-bs-toggle="modal" data-bs-target="#offCanvasModal">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- cart mini area start -->
<div class="cartmini__area">
    <div class="modal fade" id="cartMiniModal" tabindex="-1" aria-labelledby="cartMiniModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="cartmini__wrapper">
                    <div class="cartmini__top d-flex align-items-center justify-content-between">
                        <h4>Giỏ hàng</h4>
                        <div class="cartminit__close">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#cartMiniModal" class="cartmini__close-btn"> <i class="fal fa-times"></i></button>
                        </div>
                    </div>
                    <div class="cartmini__list">
                        <ul id="cartList">
                            <li>Giỏ hàng trống</li>
<%--                            <li class="cartmini__item p-rel d-flex align-items-start">--%>
<%--                                <div class="cartmini__thumb mr-15">--%>
<%--                                    <a href="product-details.html">--%>
<%--                                        <img src="<c:url value='/Front-end/client/img/products/product-1.jpg'/>" alt="">--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                                <div class="cartmini__content">--%>
<%--                                    <h3 class="cartmini__title">--%>
<%--                                        <a href="product-details.html">Form Armchair Walnut Base</a>--%>
<%--                                    </h3>--%>
<%--                                    <span class="cartmini__price">--%>
<%--                                        <span class="price">1 × $70.00</span>--%>
<%--                                    </span>--%>
<%--                                </div>--%>
<%--                                <a href="#" class="cartmini__remove">--%>
<%--                                    <i class="fal fa-times"></i>--%>
<%--                                </a>--%>
<%--                            </li>--%>
                        </ul>
                    </div>
                    <div class="cartmini__total d-flex align-items-center justify-content-between">
                        <h5>Tổng cộng:</h5>
                        <span id="ttPrice"></span>
                    </div>
                    <div class="cartmini__bottom">
                        <a href="cart" class="s-btn w-100 mb-20">Chi tiết giỏ hàng</a>
                        <a href="checkout" class="s-btn s-btn-2 w-100">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- cart mini area end -->
<!-- search area start -->
<div class="search__area">
    <div class="search__close">
        <button type="button" class="search__close-btn search-close-btn"><i class="fal fa-times"></i></button>
    </div>
    <div class="search__wrapper">
        <h4>Searching</h4>
        <div class="search__form">
            <form action="/search" method="POST">
                <div class="search__input">
                    <input type="text" name="searchTextf" placeholder="Tìm kiếm ...">
                    <button type="submit">
                        <i class="far fa-search"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- search area end -->
<!-- sidebar area start -->
<section class="offcanvas__area">
    <div class="modal fade" id="offCanvasModal" tabindex="-1" aria-labelledby="offCanvasModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="offcanvas__wrapper">
                    <div class="offcanvas__top d-flex align-items-center mb-60 justify-content-between">
                        <div class="logo">
                            <a href="index.html">
                                <img src="<c:url value='/Front-end/client/img/logo/logo-black.png'/>" alt="logo">
                            </a>
                        </div>
                        <div class="offcanvas__close">
                            <button class="offcanvas__close-btn" data-bs-toggle="modal" data-bs-target="#offCanvasModal">
                                <svg viewBox="0 0 22 22">
                                    <path d="M12.41,11l5.29-5.29c0.39-0.39,0.39-1.02,0-1.41s-1.02-0.39-1.41,0L11,9.59L5.71,4.29c-0.39-0.39-1.02-0.39-1.41,0
                                    s-0.39,1.02,0,1.41L9.59,11l-5.29,5.29c-0.39,0.39-0.39,1.02,0,1.41C4.49,17.9,4.74,18,5,18s0.51-0.1,0.71-0.29L11,12.41l5.29,5.29
                                    C16.49,17.9,16.74,18,17,18s0.51-0.1,0.71-0.29c0.39-0.39,0.39-1.02,0-1.41L12.41,11z"></path>
                                </svg>
                            </button>
                        </div>
                    </div>
                    <div class="offcanvas__content p-relative z-index-1">
                        <div class="canvas__menu fix ">
                            <div class="mobile-menu"></div>
                        </div>
                        <div class="offcanvas__action mb-15">
                            <a href="login">Đăng nhập</a>
                        </div>
                        <div class="offcanvas__action mb-15 ">
                            <a href="wishlist.html" class="has-tag">
                                <svg viewBox="0 0 22 22">
                                    <path d="M20.26,11.3c2.31-2.36,2.31-6.18-0.02-8.53C19.11,1.63,17.6,1,16,1c0,0,0,0,0,0c-1.57,0-3.05,0.61-4.18,1.71c0,0,0,0,0,0
                                    L11,3.41l-0.81-0.69c0,0,0,0,0,0C9.06,1.61,7.58,1,6,1C4.4,1,2.89,1.63,1.75,2.77c-2.33,2.35-2.33,6.17-0.02,8.53
                                    c0,0,0,0.01,0.01,0.01l0.01,0.01c0,0,0,0,0,0c0,0,0,0,0,0L11,20.94l9.25-9.62c0,0,0,0,0,0c0,0,0,0,0,0L20.26,11.3
                                    C20.26,11.31,20.26,11.3,20.26,11.3z M3.19,9.92C3.18,9.92,3.18,9.92,3.19,9.92C3.18,9.92,3.18,9.91,3.18,9.91
                                    c-1.57-1.58-1.57-4.15,0-5.73C3.93,3.42,4.93,3,6,3c1.07,0,2.07,0.42,2.83,1.18C8.84,4.19,8.85,4.2,8.86,4.21
                                    c0.01,0.01,0.01,0.02,0.03,0.03l1.46,1.25c0.07,0.06,0.14,0.09,0.22,0.13c0.01,0,0.01,0.01,0.02,0.01c0.13,0.06,0.27,0.1,0.41,0.1
                                    c0.08,0,0.16-0.03,0.25-0.05c0.03-0.01,0.07-0.01,0.1-0.02c0.07-0.03,0.13-0.07,0.2-0.11c0.03-0.02,0.07-0.03,0.1-0.06l1.46-1.24
                                    c0.01-0.01,0.02-0.02,0.03-0.03c0.01-0.01,0.03-0.01,0.04-0.02C13.93,3.42,14.93,3,16,3c0,0,0,0,0,0c1.07,0,2.07,0.42,2.83,1.18
                                    c1.56,1.58,1.56,4.15,0,5.73c0,0,0,0.01-0.01,0.01c0,0,0,0,0,0L11,18.06L3.19,9.92z"></path>
                                </svg>
                                <span class="tag">2</span>
                            </a>
                        </div>
                        <div class="offcanvas__action mb-15 d-sm-block">
                            <a href="cart" class="has-tag">
                                <i class="far fa-shopping-bag"></i>
                                <span class="tag">4</span>
                            </a>
                        </div>
                        <div class="offcanvas__social mt-15">
                            <ul>
                                <li>
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<dec:body/>

<footer class="footer-area footer-1 black-bg pb-0 gray-bg-2">
    <div class="container">
        <div class="footer-border-top pt-95 pb-40">
            <div class="row justify-content-center">
                <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="widget f-widget pb-30 wow fadeInUp" data-wow-delay=".4s">
                        <h5 class="f-widget-title white-color">Thông tin</h5>
                        <ul>
                            <li><a href="#">Về chúng tôi</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="widget footer-ml--20 f-widget pb-30 wow fadeInUp" data-wow-delay=".6s">
                        <h5 class="f-widget-title white-color">Chính sách</h5>
                        <ul>
                            <li><a href="#">Chính sách giao hàng</a></li>
                            <li><a href="#">Hình thức thanh toán</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="widget f-widget pb-30  wow fadeInUp" data-wow-delay=".8s">
                        <h5 class="f-widget-title white-color">Mạng xã hội</h5>
                        <ul><li>
                            <a href="#">Facebook</a>
                        </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area">
        <div class="copyright-text copyright-text-6 copyright-border copyright-text-4 pt-20">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-6 col-lg-6">
                        <p>
                            © Camera Store | Đã đăng ký bản quyền. Phát triển bởi GOD Team</p>
                    </div>
                    <div class="col-xxl-6 col-lg-6">
                        <div class="copyright-actions text-lg-end">
                            <a href="#">Điều khoản sử dụng</a>
                            <a href="#">Chính sách bảo mật</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /.copyright area end -->
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    var urlLocation = window.location.protocol +"//"+window.location.host;

    $(document).ready(function (){
        //Lấy số sp trong giỏ hàng
        getNumberCart();

        $('body').on('click', '#openCartList', function (){
            cartList();
        })
    });
    function cartList(){
        var html = "";
        urls = urlLocation + "/cartList/";
        $.ajax({
            url : urls,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success:function(data)
            {
                var totalPrice = 0;
                for(let i =0 ; i<data.length ; i++)
                {
                    html += "<li class='cartmini__item p-rel d-flex align-items-start'>"
                    html += "<div class='cartmini__thumb mr-15'>"
                    html += "<a href='product-details.html'>"
                    html += "<img src='/Front-end/images/product/" + data[i].productRequest.hinh + "' alt=''>"
                    html += "</a>"
                    html += "</div>"
                    html += "<div class='cartmini__content'>"
                    html += "<h3 class='cartmini__title'>"
                    html += "<a href='product-details.html'>" + data[i].productRequest.tensp + "</a>"
                    html += "</h3>"
                    html += "<span class='cartmini__price'>"
                    html += "<span class='price'>" + data[i].quantity + " × " + data[i].productRequest.gia + " VNĐ</span>"
                    html += "</span>"
                    html += "</div>"
                    html += "<a href='#' class='cartmini__remove'>"
                    html += "<i class='fal fa-times'></i>"
                    html += "</a>"
                    html += "</li>"
                    // html += i + ": " + data[i].productRequest.tensp + " x " + data[i].quantity + "<br>";
                    totalPrice += data[i].quantity * data[i].productRequest.gia;
                }
                $('#cartList').html(html);
                $('#ttPrice').html(totalPrice +" VNĐ")
            }

        })
    }

    function getNumberCart(){
        urls = urlLocation + "/cartList/";
        $.ajax({
            url : urls,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success:function(data)
            {
                $('#cartNumber').html(data.length);
            }

        })
    }


</script>

<!-- JS here -->
<script>
    function toCateWBrand(idCate){
        let url = window.location.protocol +"//"+window.location.host+"/product";
        let urls = new URL(url);
        urls.searchParams.set("id_cate",idCate);
        window.location.href = (urls);
    }
</script>
<script src="<c:url value='/Front-end/client/js/jquery.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/waypoints.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/tweenmax.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/slick.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/jquery-ui-slider-range.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/jquery.meanmenu.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/wow.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/jquery.scrollUp.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/countdown.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/jquery.magnific-popup.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/parallex.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/imagesloaded.pkgd.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/jquery.nice-select.min.js'/>"></script>
<script src="<c:url value='/Front-end/client/js/main.js'/>"></script>
</body>

</html>