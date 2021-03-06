<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <title>Trang chủ</title>
</head>

<body>
<main>

    <!-- slider area start -->
    <section class="slider-area-rel">
        <div class="slider-active slider-active-6 s-dot-style dot-style dot-style-1 dot-bottom-left-2 ">
            <div style="background: white" class="single-slider single-slider-3 slider-height-4 d-flex align-items-center light-green-bg">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xxl-6 col-xl-6 col-lg-8 col-md-6 pt-60 pb-10">
                            <div class="slider-content-6">
                                <span class="s-subtitle s-subtitle-3 s-subtitle-6 pb-25"> Sản phẩm mới</span>
                                <h2 class="s-title s-title-2 s-title-6 pb-28">${productNewest.tensp}</h2>
                                <p class="s-desc pb-75 slider-p-6">
                                    Hãng: ${productNewest.brand.tenthuonghieu} </p>
                                <div class="p-btn p-btn-5 slider-btn-6">
                                    <a href="/product-detail/${productNewest.slug}">Chi tiết</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-4 col-md-6">
                            <div class="slider-thumb-6">
                                <img src="<c:url value='/Front-end/images/product/${productNewest.hinh}'/>" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- slider area end -->
<%--    <!-- category area start -->--%>
<%--    <div id="category-area" class="category__area category__br-tp gray-bg-5">--%>
<%--        <div class="container-fluid">--%>
<%--            <div class="row row-cols-xxl-5 row-cols-xl-5 row-cols-lg-3 row-cols-md-2 row-cols-sm-2 row-cols-1 gx-0">--%>
<%--                &lt;%&ndash;5 ô&ndash;%&gt;--%>
<%--                    <c:forEach var="category" items="${cates}">--%>
<%--                <div class="col">--%>

<%--                        <div class="category__item category__br-right fix">--%>
<%--                            <div class="category__thumb">--%>
<%--                                <a href="">--%>
<%--                                    <img src="<c:url value='/Front-end/client/img/brand/img.png'/>" alt="">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="category__content text-center">--%>
<%--                                <div class="category__tag mb-10">--%>
<%--                                    <a href=""></a>--%>
<%--                                </div>--%>
<%--                                <a href="" class="link-btn">Sản phẩm ${category.tenloai}</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                </div>--%>
<%--                    </c:forEach>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- category area end -->--%>
    <div class="top-selling-area pb-100 pt-95 gray-bg-4 ">
        <div class="container ">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="section-title top-selling-title text-center pb-47">
                        <span class="p-subtitle p-subtitle-2">Máy ảnh</span>
                        <h3 class="p-title pb-15 mb-0">Những sản phẩm mới nhất</h3>
                        <p class="p-desc"></p>
                    </div>
                </div>
            </div>
            <div class="single-product-6-wrapper border-none">
                <div class="row pb-20 justify-content-center">
                    <c:forEach var="pro" items="${products}">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6 col-sm-6 box-shadow-12  wow fadeInUp"
                             data-wow-delay=".${pro.id}s"
                             style="width: calc(23vw - 10px); background-color: #f6f6f6; padding: 3px; margin: 8px;">
                            <div class="single-product single-product-6" style="border:none">
                                <div class="product-thumb">
                                    <div style="height: 280px;
                                               display: flex;
                                                justify-content: center;
                                                align-items: center;
                                                background: white;">
                                    <a href="/product-detail/${pro.slug}">

                                        <img src="<c:url value='/Front-end/images/product/${pro.hinh}'/>"
                                             style="border-radius:10px " alt="">
                                    </a>
                                    </div>
                                    <div class="cart-btn cart-btn-1 p-abs">
                                        <a type="button" class="cart-item" data-id="${pro.id}">Thêm vào giỏ</a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4 class="pro-title pro-title-1"><a href="/product-detail/${slug}">
                                            ${pro.tensp}
                                    </a></h4>
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
                <div class="row">
                    <div class="col-xxl-12">
                        <div class="btn-area mt-30 text-center wow fadeInUp mb-20" data-wow-delay=".3s">
                            <div class="p-btn p-btn-1">
                                <a href="/product">Hiển thị tất cả sản phẩm </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- border -->
        <div class="hr-border"></div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    var urlLocation = window.location.protocol + "//" + window.location.host;
    $(document).ready(function () {

        $('body').on('click', '.cart-item', function () {
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
</body>

</html>
