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
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="invoice">
                            <div>
                                <div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="media">
                                                <div class="media-left"><img class="media-object img-60" src="<c:url value='/Front-end/images/logo/CameraStore-black-fla.png'/>" alt=""></div>
                                                <div class="media-body m-l-20 text-right">
                                                    <h4 class="media-heading"> Cửa hàng Hyper Camera </h4>
                                                    <p>Email: hypercamera@gmail.com<br><span>SĐT: +84 975 999 666</span></p>
                                                </div>
                                            </div>
                                            <!-- End Info-->
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="text-md-end text-xs-center">
                                                <h3>Số hóa đơn #<span class="counter">${order.madh}</span></h3>
                                                <p>Ngày đặt: <span><fmt:formatDate value="${order.ngaydathang}" type="date" pattern="dd-MM-yyyy"/></span>
<%--                                                    <br> Ngày nhận hàng: <span>${order.ngaynhanhang}</span></p>--%>
                                            </div>
                                            <!-- End Title-->
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <!-- End InvoiceTop-->
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="media">
                                            <div class="media-left"><img class="media-object rounded-circle img-60"
                                                                         src="<c:url value='/Front-end/images/avatar/user.png'/>" alt="user"></div>
                                            <div class="media-body m-l-20">
                                                <h4 class="media-heading">${order.customer.tenKH} (Khách hàng)</h4>
                                                <p>Email: ${order.customer.email}<br><span>SĐT: ${order.customer.SDT}</span></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="text-md-end" id="project">
                                            <h6>Địa chỉ giao hàng</h6>
                                            <p>${order.diachi}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Invoice Mid-->
                                <div>
                                    <div class="table-responsive invoice-table" id="table">
                                        <table class="table table-bordered table-striped">
                                            <tbody>
                                            <tr>
                                                <td  style="text-align: center">
                                                    <h6 class="p-2 mb-0">Ảnh</h6>
                                                </td>
                                                <td style="text-align: center">
                                                    <h6 class="p-2 mb-0">Tên</h6>
                                                </td>
                                                <td style="text-align: center">
                                                    <h6 class="p-2 mb-0">SL</h6>
                                                </td>
                                                <td style="text-align: center">
                                                    <h6 class="p-2 mb-0">Giá</h6>
                                                </td>
                                            </tr>
                                            <c:forEach var="ord" items="${orderDetail}">
                                            <tr>
                                                <td style="text-align: center">
                                                    <div style="    height: 130px;
                                                                     width: 135px;
                                                                    display: flex;
                                                                    justify-content: center;
                                                                    align-items: center;
                                                                    background: white;
                                                                   margin: auto;
                                                                     ">
                                                        <img
                                                                src="<c:url value='/Front-end/images/product/${ord.product.hinh}'/>"
                                                                 style="width: 100%;" alt="">
                                                    </div>

                                                 </td>
                                                <td style="text-align: center;  max-width: 360px;">
                                                    <h4>${ord.product.tensp}</h4>
                                                </td>
                                                <td style="text-align: center">
                                                    <p style="font-size: 20px;
                                                            font-weight: 500;">x ${ord.soluong}</p>
                                                </td>
                                                <td style="text-align: center">
                                                    <p style="font-size: 20px;
                                                            font-weight: 500;">
                                                        <fmt:formatNumber
                                                            type="number"
                                                            maxFractionDigits="3" value="${ord.product.gia}"/> VNĐ</p>
                                                </td>
                                            </tr>
                                                </c:forEach>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td style="text-align: right">
                                                    <h6 class="mb-0 p-2">Tổng tiền:</h6>
                                                </td>
                                                <td style="text-align: center">
                                                    <h6 class="mb-0 p-2"><fmt:formatNumber
                                                            type="number"
                                                            maxFractionDigits="3" value="${order.tongtien}"/> VNĐ</h6>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- End Table-->
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div>
<%--                                                <p class="legal"><strong--%>
<%--                                                >Thank you for your business!--%>
<%--                                                </strong>--%>
<%--                                                   </p>--%>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="text-end">
                                                <c:choose>
                                                    <c:when test="${order.status == 2}">
                                                        <button class="btn btn-success m-r-10" type="button" title=""><i class="fa fa-paypal" aria-hidden="true"></i> Đã thanh toán
                                                        </button>

                                                    </c:when>
<%--                                                    <c:when test="${order.status == 1}">--%>
<%--                                                        <button id="setStatus3" data-id="${order.madh}" class="btn btn-primary m-r-10" type="button" title=""><i class="fa fa-check-circle" aria-hidden="true"></i> Xác nhận thanh toán--%>
<%--                                                        </button>--%>
<%--                                                        <button id="setStatus0" data-id="${order.madh}" class="btn btn-secondary m-r-10" type="button" title=""><i class="fa fa-minus-circle" aria-hidden="true"></i> Hủy đơn hàng--%>
<%--                                                        </button>--%>
<%--                                                    </c:when>--%>
                                                    <c:when test="${order.status == 3}">
                                                        <button class="btn btn-success m-r-10" type="button" title=""><i class="fa fa-money" aria-hidden="true"></i> Đã thanh toán
                                                        </button>
                                                    </c:when>
                                                    <c:when test="${order.status == 0}">
                                                        <button class="btn btn-secondary m-r-10" type="button" title=""><i class="fa fa-minus-circle" aria-hidden="true"></i> Đơn hàng đã hủy
                                                        </button>
                                                    </c:when>
                                                </c:choose> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 text-center mt-3">
                                <c:choose>
                                    <c:when test="${order.status == 2}">
                                        <button class="btn btn btn-primary me-2" type="button" onclick="myFunction()">In hóa đơn</button>

                                    </c:when>
                                    <c:when test="${order.status == 1}">
                                        <button id="setStatus3" data-id="${order.madh}" class="btn btn-primary m-r-10" type="button" title=""><i class="fa fa-check-circle" aria-hidden="true"></i> Xác nhận thanh toán
                                        </button>
                                        <button id="setStatus0" data-id="${order.madh}" class="btn btn-secondary m-r-10" type="button" title=""><i class="fa fa-minus-circle" aria-hidden="true"></i> Hủy đơn hàng
                                        </button>
                                    </c:when>
                                    <c:when test="${order.status == 3}">
                                        <button class="btn btn btn-primary me-2" type="button" onclick="myFunction()">In hóa đơn</button>
                                    </c:when>
                                    <c:when test="${order.status == 0}">

                                    </c:when>
                                </c:choose>

                               <button class="btn btn-secondary" onclick="javascript:history.back()" type="button">Trở về</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--                <div class="col-xl-3 xl-cs-35 box-col-6">--%>
<%--                    <div class="card">--%>
<%--                        <div class="card-body">--%>
<%--                            <div class="collection-filter-block">--%>
<%--                                <ul class="pro-services">--%>
<%--                                    <li>--%>
<%--                                        <div class="media"><i data-feather="credit-card"></i>--%>
<%--                                            <div class="media-body">--%>
<%--                                                <h5>Phương thức thanh toán</h5>--%>
<%--                                                <c:choose>--%>
<%--                                                    <c:when test="${order.status == 2}">--%>
<%--                                                        <p>Paypal </p>--%>
<%--                                                    </c:when>--%>
<%--                                                    <c:otherwise >--%>
<%--                                                        <p>Ship COD </p>--%>
<%--                                                    </c:otherwise>--%>

<%--                                                </c:choose>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
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
