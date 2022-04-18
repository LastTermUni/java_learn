<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Thanh toán</title>
</head>
<body>
<main>

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area-3 pt-10 pb-20">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="breadcrumb-wrapper-2 text-center">
                        <h1>Thông tin</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Thông tin khách hàng</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->
    <!-- checkout-area start -->
    <section class="checkout-area pb-70">
        <div class="container">

            <div class="row">
                <div class="col-lg-6">
                    <div class="checkbox-form">
                        <form action="./updateProfile" method="post" id="formUpdate"></form>
                        <h3>Thông tin khách hàng</h3>
                        <input type="text" style="display: none" placeholder="" id="maKH" name="maKH"
                               value="${Customer.maKH}"/>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="checkout-form-list">
                                    <label>Tài khoản <span class="required">*</span></label>
                                    <input readonly type="text" placeholder="" id="username" name="username"
                                           value="${Customer.username}"/>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="checkout-form-list">
                                    <label>Email <span class="required">*</span></label>
                                    <input type="email" readonly placeholder="" id="email" name="email"
                                           value="${Customer.email}"/>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="checkout-form-list">
                                    <label>Họ và tên <span class="required">*</span></label>
                                    <input type="text" placeholder="" id="tenKH" name="tenKH"
                                           value="${Customer.tenKH}"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list">
                                    <label>Số điện thoại <span class="required">*</span></label>
                                    <input type="text" placeholder="" id="SDT" name="SDT" value="${Customer.SDT}"/>
                                </div>
                            </div>

                        </div>
                        </form>
                        <button type="submit" class="s-btn s-btn-2" id="update">Cập nhật</button>
                    </div>

                </div>
                <div class="col-lg-6">
                    <div class="your-order mb-30 ">
                        <h3>Thông tin hóa đơn</h3>
                        <div class="your-order-table table-responsive">
                            <table>
                                <thead>
                                <tr>
                                    <th class="product-name">Product</th>
                                    <th class="product-total">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="cart_item">

                                </tbody>

                            </table>
                        </div>

                        <div class="payment-method">
                            <div class="accordion" id="checkoutAccordion">
                                <div>Phương thức thanh toán:</div>
                                <c:forEach var="order" items="${listOrder}">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="paypalThree">
                                        <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse" data-bs-target="#paypal" aria-expanded="false"
                                                aria-controls="paypal">
                                            Ngày đặt : ${order.ngaydathang} - Tổng tiền <fmt:formatNumber
                                                type="number"
                                                maxFractionDigits="3" value="${order.tongtien}"/> VNĐ

                                            - Địa chỉ: ${order.diachi}
                                            - Trạng thái : <c:choose>
                                            <c:when test="${order.status == 1}">
                                                SHIP COD
                                            </c:when>
                                            <c:when test="${order.status == 2}">
                                                Đã thanh toán bằng PayPal
                                            </c:when>
                                            <c:when test="${order.status == 3}">
                                                Đã thanh toán
                                            </c:when>
                                            <c:when test="${order.status == 0}">
                                                Đơn hàng đã hủy
                                            </c:when>
                                        </c:choose>
                                        </button>

                                    </h2>
                                        <%--                                        <div id="paypal" class="accordion-collapse collapse" aria-labelledby="paypalThree" data-bs-parent="#checkoutAccordion">--%>
                                        <%--                                            <div class="accordion-body">--%>
                                        <%--                                                <div class="order-button-payment mt-20">--%>
                                        <%--                                                    <button type="submit"  class="s-btn s-btn-2" id="thanhtoan">Thanh toán bằng Paypal</button>--%>
                                        <%--                                                </div>--%>
                                        <%--                                            </div>--%>
                                        <%--                                        </div>--%>
                                        <%--                                    </div>--%>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                </form>
            </div>
        </div>
    </section>


</main>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>

    $(document).ready(function () {
        $('body').on('click', '#update', function () {
            var formData = {
                maKH: $("#maKH").val(),
                tenKH: $("#tenKH").val(),
                username: $("#username").val(),
                sdt: $("#SDT").val(),
                email: $("#email").val(),
            }

            // var formData = JSON.stringify($("#formUpdate").serializeArray());

            $.ajax({
                type: "POST",
                url: "./updateProfile",
                data: JSON.stringify(formData),
                dataType: "json",
                contentType: "application/json",
                success: function (res) {
                    if (res == 1) {
                        alert("Cập nhật thành công")
                        window.location.reload();
                    } else {
                        alert("Cập nhật thất bại")
                    }

                }
            });
        })
    })


</script>
</body>
</html>
