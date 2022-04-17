<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <title>${searchText}</title>
<body>
<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area pt-50 pb-50 mb-20" data-background="<c:url value='/Front-end/images/banner/banner-mix-c.png'/>"
         style="
            background-position: center;
            width: 100%;
            height: fit-content;
            background-repeat: no-repeat; ">
        <div class="container">

            <div class="breadcrumb-title text-center">
                <h3>Tìm kiếm: ${searchText}</h3>
            </div>
            <div class="breadcrumb-list">
                <a href="home">Trang chủ</a>
                <span>Tìm kiếm</span>
            </div>
        </div>
    </div>

    <div class="shop-area">
        <div class="container">
            <div class="row">
                <div class="col-xxl-3 col-xl-3 col-lg-4">
                    <div class="shop-sidebar-area pt-7 pr-60">
                        <div class="single-widget pb-20 mb-50">
                            <h4 class="widget-title">Thương hiệu</h4>
                            <div class="widget-category-list">
                                <form action="#">
                                    <c:forEach items="${cates}" var="cate">
                                        <div class="single-widget-category">
                                            <input type="checkbox" id="brand-item-${cate.id}" name="brand-item" value="${cate.slug}">
                                            <label for="brand-item-${cate.id}">${cate.tenloai}<span></span></label>
                                        </div>
                                    </c:forEach>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-9 col-xl-9 col-lg-8 order-first order-lg-last">
                    <div class="shop-top-area mb-40">
                        <div class="row">
                            <div class="col-xxl-4 col-xl-2 col-md-3 col-sm-3">
                            </div>
                            <div class="col-xxl-4 col-xl-6 col-md-6 col-sm-6">
                            </div>
                            <div class="col-xl-4 col-xl-4 col-md-3 col-sm-3">
                                <div class="text-sm-end">
                                    <div class="select-default">
                                        <select name="short" id="short" class="shorting-select">
                                            <option value="">Mới nhất</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shop-main-area">
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade  show active" id="tab1">
                                <div class="row pb-20">
                                    <c:forEach var="pro" items="${searchResults}">
                                        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6 box-shadow-12  wow fadeInUp"
                                             style="width: calc(17vw - 10px); background-color: #f6f6f6;; padding: 3px; margin: 5px 5px 7px 4px;"
                                             data-wow-delay=".${pro.id}s">
                                            <div class="single-product" >
                                                <div class="product-thumb" style="border-radius: 10px">
                                                    <a href="product-detail/${pro.slug}">
                                                            <%--                                                    <img src="<c:url value='/Front-end/images/product/${pro.hinh}'/>"--%>
                                                            <%--                                                         alt="#">--%>
                                                        <img src="<c:url value='/Front-end/images/product/${pro.hinh}'/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="cart-btn cart-btn-1 p-abs">
                                                        <a href="#">Add to cart</a>
                                                    </div>
                                                </div>
                                                <div class="product-content ml-15">
                                                    <h4 class="pro-title pro-title-1"><a
                                                            href="product-detail/${pro.slug}">
                                                            ${pro.tensp}
                                                    </a>
                                                    </h4>
                                                    <div class="pro-price">
                                                        <span>${pro.gia} VNĐ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                    <div class="shop-pagination m-auto" >--%>
<%--                        <div class="basic-pagination" style="display: flex;--%>
<%--                            justify-content: center;">--%>
<%--                            <nav>--%>
<%--                                <ul style="display: flex; justify-content: center">--%>
<%--                                    <li>--%>
<%--                                        <a href="shop.html">--%>
<%--                                            <i class="far fa-angle-left"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="shop.html">1</a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="shop.html" class="active">2</a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="shop.html">3</a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="shop.html">--%>
<%--                                            <i class="far fa-angle-right"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </nav>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>
