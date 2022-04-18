<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Danh sách hóa đơn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Danh sách hóa đơn</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Danh sách hóa đơn</li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <!-- Individual column searching (text inputs) Starts-->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive product-table">
                            <table class="display" style="width: 100%;" id="basic-10">
                                <thead>
                                <tr style="    text-align: center;">
                                    <th>STT</th>
                                    <th>Khách hàng</th>
                                    <th>Địa chỉ</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày đặt hàng</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="stt" value="0"/>
                                <c:forEach var="order" items="${orderList}">
                                    <tr style="    text-align: center;">
                                        <c:set var="stt" value="${stt + 1}"/>
                                        <td>${stt}</td>
                                        <td>${order.customer.tenKH}</td>
                                        <td>${order.diachi}</td>
                                            <%--                                        <td>--%>
                                            <%--                                            <h6> Red Lipstick </h6><span>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</span>--%>
                                            <%--                                        </td>--%>
                                        <td><fmt:formatNumber
                                                type="number"
                                                maxFractionDigits="3" value="${order.tongtien}"/> VNĐ
                                        </td>
                                        <td><fmt:formatDate value="${order.ngaydathang}" type="date" pattern="dd-MM-yyyy"/></td>
                                        <c:choose>
                                            <c:when test="${order.status == 0}">
                                                <td class="font-danger">Đã hủy</td>
                                            </c:when>
                                            <c:when test="${order.status == 1}">
                                                <td class="font-info">Chờ xác nhận <br> (Ship COD)</td>
                                            </c:when>
                                            <c:when test="${order.status == 2}">
                                                <td class="font-success">Đã thanh toán <br> (PayPal)</td>
                                            </c:when>
                                            <c:when test="${order.status == 3}">
                                                <td class="font-success">Đã thanh toán <br> (COD)</td>
                                            </c:when>

                                        </c:choose>
                                        <td>
                                            <c:choose>
                                            <c:when test="${order.status == 0}">
                                        <a href="./order-detail?id=${order.madh}">
                                            <button class="btn btn-danger btn-xs"
                                                    data-original-title="btn btn-danger btn-xs" title="">
                                                Xem chi tiết
                                            </button>
                                        </a>
                                        </c:when>
                                        <c:when test="${order.status == 1}">
                                            <a href="./order-detail?id=${order.madh}">
                                                <button class="btn btn-primary btn-xs"
                                                        data-original-title="btn btn-danger btn-xs" title="">
                                                    Xác nhận
                                                </button>
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="./order-detail?id=${order.madh}">
                                                <button class="btn btn-success btn-xs"
                                                        data-original-title="btn btn-danger btn-xs" title="">
                                                    Xem chi tiết
                                                </button>
                                            </a>
                                        </c:otherwise>

                                        </c:choose>

                                        </td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Container-fluid Ends-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<%--<script>--%>
<%--    $(document).ready(function () {--%>

<%--        $('.changeStatus').click(function (e) {--%>
<%--            e.preventDefault();--%>
<%--            const id = $(this).data('id');--%>
<%--            const _this = $(this);--%>
<%--            $.ajax({--%>
<%--                url: "./changeStatusProduct",--%>
<%--                data: {id: id},--%>
<%--                dataType: 'json',--%>
<%--                type: 'POST',--%>
<%--                success: function (res) {--%>
<%--                    if (res === 1) {--%>
<%--                        _this.prop('checked', true);--%>
<%--                        toastr.success("Hiển thị sản phẩm thành công!!");--%>
<%--                    } else if (res === 0) {--%>
<%--                        _this.prop('checked', false);--%>
<%--                        toastr.info("Tắt hiển thị sản phẩm thành công!!");--%>
<%--                    }--%>
<%--                }--%>
<%--            });--%>
<%--        });--%>

<%--        $('body').on('click', '.deleteProduct', function(){--%>
<%--            const id = $(this).data('id');--%>
<%--            $.ajax({--%>
<%--                url: "./deleteProduct/",--%>
<%--                data: {id: id},--%>
<%--                dataType: 'json',--%>
<%--                type: 'POST',--%>
<%--                success: function (res) {--%>
<%--                    if (res === 2) {--%>
<%--                        location.reload();--%>
<%--                    }--%>
<%--                }--%>
<%--            })--%>
<%--        });--%>

<%--    });--%>

<%--</script>--%>

</body>

</html>
