<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
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
                <h1>Tất cả sản phẩm</h1>
            </div>
            <div class="breadcrumb-list">
                <a href="home">Trang chủ</a>
                <span>Danh sách sản phẩm</span>
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
                                    <c:forEach items="${brands}" var="brand">
                                    <div class="single-widget-category">
                                        <input type="checkbox" id="brand-item-${brand.id}" name="brand-item" value="${brand.slug}">
                                        <label for="brand-item-${brand.id}"><a role="button" href="/product?id_brand=${brand.id}">
                                                ${brand.tenthuonghieu}
                                        </a><span></span></label>
                                    </div>
                                    </c:forEach>
                                </form>
                            </div>
                            <h4 class="widget-title">Loại</h4>
                            <div class="widget-category-list">
                                <form action="#">
                                    <c:forEach items="${cates}" var="cate">
                                        <div class="single-widget-category">
                                            <input type="checkbox" id="brand-item-${cate.id}" name="brand-item" value="${cate.slug}">
                                            <label for="brand-item-${cate.id}"><a role="button" href="/product?id_cate=${cate.id}">
                                                    ${cate.tenloai}
                                            </a><span></span></label>
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
                                    <c:set value="${products}" var="productPageList" scope="session"/>
                                    <c:forEach var="pro" items="${productPageList}">
                                    <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6 box-shadow-12  wow fadeInUp"
                                         style="width: calc(17vw - 10px); background-color: #f6f6f6;; padding: 3px; margin: 5px 5px 7px 4px;"
                                         data-wow-delay=".${pro.id}s">
                                        <div class="single-product" >
                                            <div class="product-thumb" style="border-radius: 10px">
                                                <div style="height: 280px;
                                                           display: flex;
                                                            justify-content: center;
                                                            align-items: center;
                                                            background: white;">
                                                <a href="product-detail/${pro.slug}">
<%--                                                    <img src="<c:url value='/Front-end/images/product/${pro.hinh}'/>"--%>
<%--                                                         alt="#">--%>
                                                    <img src="<c:url value='/Front-end/images/product/${pro.hinh}'/>"
                                                         alt="#">
                                                </a>
                                                </div>
                                                <div class="cart-btn cart-btn-1 p-abs addtoCart"  data-id="${pro.id}">
                                                    <a>Thêm vào giỏ</a>
                                                </div>
                                            </div>
                                            <div class="product-content ml-15">
                                                <h4 class="pro-title pro-title-1"><a
                                                        href="product-detail/${pro.slug}">
                                                    ${pro.tensp}
                                                </a>
                                                </h4>
                                                <div class="pro-price">

                                                    <span><fmt:formatNumber
                                                            type = "number"
                                                            maxFractionDigits = "3" value = "${pro.gia}" /> VNĐ</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shop-pagination m-auto" >
                        <div class="basic-pagination" style="display: flex;
                                                    justify-content: center;">
                            <nav>
                                <ul style="display: flex; justify-content: center">
                    <c:choose>
                        <%-- Show Prev as link if not on first page --%>
                        <c:when test="${paging.firstPage}">
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a onclick="nextPage(${paging.page });" >
                                    <i class="far fa-angle-left"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach begin="1" end="${paging.pageCount}" step="1"  varStatus="tagStatus">
                        <c:choose>
                            <%-- In PagedListHolder page count starts from 0 --%>
                            <c:when test="${(paging.page + 1) == tagStatus.index}">
                                <li >
                                    <a class="active">${tagStatus.index}</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                    <li>
                                        <a onclick="nextPage(${tagStatus.index});">${tagStatus.index}</a>
                                    </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:choose>
                        <%-- Show Next as link if not on last page --%>
                        <c:when test="${paging.lastPage}">
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a  onclick="nextPage(${paging.page + 2 });" >
                                    <i class="far fa-angle-right"></i>
                                </a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
       function nextPage(page){
           let urlParams = new URL(window.location.href);
           urlParams.searchParams.set('page', page);
            window.location.href=(urlParams);
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        var urlLocation = window.location.protocol + "//" + window.location.host;
        $(document).ready(function () {

            $('body').on('click', '.addtoCart', function () {
                var id = $(this).data('id');
                addCart(id);
            })
        });

        function addCart(_id) {
            urls = urlLocation + "/Cart/" + _id;
            $.ajax({
                url: urls,
                type: 'GET',
                contentType: 'application/json',
                dataType: 'json',
                success: function (data) {
                    $('#cartNumber').html(data);
                }
            })
        }
    </script>
</main>
</body>
</html>
