<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Chi tiết đơn đặt hàng</title>
</head>
<body>
<!-- Page Sidebar Ends-->
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Chi tiết đơn đặt hàng</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Hóa đơn</li>
                        <li class="breadcrumb-item active">Chi tiết đơn đặt hàng</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div>
            <div class="row product-page-main p-0">
                <%--                <div class="col-xl-4 xl-cs-65 box-col-12">--%>
                <%--                    <div class="card">--%>
                <%--                        <div class="card-body">--%>
                <%--                            <div class="product-slider owl-carousel owl-theme" id="sync1">--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/01.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/02.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/03.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/04.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/05.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/06.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/07.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/08.jpg'/>" alt=""></div>--%>
                <%--                            </div>--%>
                <%--                            <div class="owl-carousel owl-theme" id="sync2">--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/01.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/02.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/03.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/04.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/05.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/06.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/07.jpg'/>" alt=""></div>--%>
                <%--                                <div class="item"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/08.jpg'/>" alt=""></div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <div class="col-xl-9 xl-100 box-col-12">
                    <div class="card">
                        <div class="card-body">
                            <h3>DANH SÁCH SẢN PHẨM</h3>
                            <hr>
                            <c:forEach var="ord" items="${orderDetail}">
                                <div class="product-page-details">
                                    <h4>${ord.product.tensp}</h4>
                                </div>
                                <div class="product-price">
                                    <fmt:formatNumber
                                            type="number"
                                            maxFractionDigits="3" value="${ord.product.gia}"/> VNĐ
                                </div>
                                <p>Số lượng: ${ord.soluong}</p>
                                <hr>
                            </c:forEach>

                            <h5>Thông tin khách hàng</h5>
                            <hr>
                            <div>
                                <table class="product-page-width">
                                    <tbody>
                                    <tr>
                                        <td><b>Tên khách hàng &nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;</b></td>
                                        <td>${order.customer.tenKH}</td>
                                    </tr>
<%--                                    <tr>--%>
<%--                                        <td><b>Availability &nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;</b></td>--%>
<%--                                        <td class="txt-success">In stock</td>--%>
<%--                                    </tr>--%>
                                    <tr>
                                        <td><b>Email &nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;</b></td>
                                        <td>${order.customer.email}</td>
                                    </tr>
                                    <tr>
                                        <td><b>Số điện thoại &nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;</b></td>
                                        <td>${order.customer.SDT}</td>
                                    </tr>
                                    <tr>
                                        <td><b>Địa chỉ giao hàng &nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;</b></td>
                                        <td>${order.diachi}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="product-title">Số tiền cần thanh toán: </h4>
                                </div>

                                <div class="col-md-6">
                                    <div>
                                        <h4><fmt:formatNumber
                                                type="number"
                                                maxFractionDigits="3" value="${order.tongtien}"/> VNĐ</h4>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="m-t-15">
                                <c:choose>
                                    <c:when test="${order.status == 2}">
                                        <button class="btn btn-success m-r-10" type="button" title=""><i class="fa fa-paypal" aria-hidden="true"></i> Đã thanh toán
                                        </button>

                                    </c:when>
                                    <c:when test="${order.status == 1}">
                                        <button id="setStatus3" data-id="${order.madh}" class="btn btn-primary m-r-10" type="button" title=""><i class="fa fa-check-circle" aria-hidden="true"></i> Xác nhận thanh toán
                                        </button>
                                        <button id="setStatus0" data-id="${order.madh}" class="btn btn-secondary m-r-10" type="button" title=""><i class="fa fa-minus-circle" aria-hidden="true"></i> Hủy đơn hàng
                                        </button>
                                    </c:when>
                                    <c:when test="${order.status == 3}">
                                        <button class="btn btn-success m-r-10" type="button" title=""><i class="fa fa-money" aria-hidden="true"></i> Đã thanh toán
                                        </button>
                                    </c:when>
                                    <c:when test="${order.status == 0}">
                                        <button class="btn btn-secondary m-r-10" type="button" title=""><i class="fa fa-minus-circle" aria-hidden="true"></i> Đơn hàng đã hủy
                                        </button>
                                    </c:when>
                                </c:choose>



                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 xl-cs-35 box-col-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="collection-filter-block">
                                <ul class="pro-services">
                                    <li>
                                        <div class="media"><i data-feather="credit-card"></i>
                                            <div class="media-body">
                                                <h5>Phương thức thanh toán</h5>
                                                <c:choose>
                                                    <c:when test="${order.status == 2}">
                                                        <p>Paypal </p>
                                                    </c:when>
                                                    <c:otherwise >
                                                        <p>Ship COD </p>
                                                    </c:otherwise>

                                                </c:choose>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- silde-bar colleps block end here-->
                    </div>
                </div>
            </div>
        </div>
        <%--        <div class="card">--%>
        <%--            <div class="row product-page-main">--%>
        <%--                <div class="col-sm-12">--%>
        <%--                    <ul class="nav nav-tabs border-tab mb-0" id="top-tab" role="tablist">--%>
        <%--                        <li class="nav-item"><a class="nav-link active" id="top-home-tab" data-bs-toggle="tab" href="#top-home" role="tab" aria-controls="top-home" aria-selected="false">Febric</a>--%>
        <%--                            <div class="material-border"></div>--%>
        <%--                        </li>--%>
        <%--                        <li class="nav-item"><a class="nav-link" id="profile-top-tab" data-bs-toggle="tab" href="#top-profile" role="tab" aria-controls="top-profile" aria-selected="false">Video</a>--%>
        <%--                            <div class="material-border"></div>--%>
        <%--                        </li>--%>
        <%--                        <li class="nav-item"><a class="nav-link" id="contact-top-tab" data-bs-toggle="tab" href="#top-contact" role="tab" aria-controls="top-contact" aria-selected="true">Details</a>--%>
        <%--                            <div class="material-border"></div>--%>
        <%--                        </li>--%>
        <%--                        <li class="nav-item"><a class="nav-link" id="brand-top-tab" data-bs-toggle="tab" href="#top-brand" role="tab" aria-controls="top-brand" aria-selected="true">Brand</a>--%>
        <%--                            <div class="material-border"></div>--%>
        <%--                        </li>--%>
        <%--                    </ul>--%>
        <%--                    <div class="tab-content" id="top-tabContent">--%>
        <%--                        <div class="tab-pane fade active show" id="top-home" role="tabpanel" aria-labelledby="top-home-tab">--%>
        <%--                            <p class="mb-0 m-t-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>--%>
        <%--                            <p class="mb-0 m-t-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>--%>
        <%--                        </div>--%>
        <%--                        <div class="tab-pane fade" id="top-profile" role="tabpanel" aria-labelledby="profile-top-tab">--%>
        <%--                            <p class="mb-0 m-t-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>--%>
        <%--                        </div>--%>
        <%--                        <div class="tab-pane fade" id="top-contact" role="tabpanel" aria-labelledby="contact-top-tab">--%>
        <%--                            <p class="mb-0 m-t-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>--%>
        <%--                        </div>--%>
        <%--                        <div class="tab-pane fade" id="top-brand" role="tabpanel" aria-labelledby="brand-top-tab">--%>
        <%--                            <p class="mb-0 m-t-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
    </div>
    <!-- Container-fluid Ends-->
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    $(document).ready(function () {

        $('body').on('click', "#setStatus3", function (){
            const id = $(this).data('id');
            $.ajax({
                url: "./changeStatusOrder",
                data: {id: id, status:3},
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res === 1) {
                        location.reload();
                    } else{
                        toastr.info("Thao tác không thành công!");
                    }
                }
            });
        })

        $('body').on('click', "#setStatus0", function (){
            const id = $(this).data('id');
            $.ajax({
                url: "./changeStatusOrder",
                data: {id: id, status:0},
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res === 1) {
                        location.reload();
                    } else{
                        toastr.info("Thao tác không thành công!");
                    }
                }
            });
        })
    });
</script>
</body>
</html>