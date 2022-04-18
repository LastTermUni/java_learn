<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <h3>Thanh Toán</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Giỏ hàng</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Thanh Toán</li>
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
                            <h3>Thông tin khách hàng</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Họ và tên <span class="required">*</span></label>
                                        <input readonly type="text" placeholder="" value="${tenKH}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Số điện thoại <span class="required">*</span></label>
                                        <input readonly type="text" placeholder="" value="${SDT}" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Email <span class="required">*</span></label>
                                        <input readonly type="email" placeholder="" value="${Email}" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="checkout-form-list">
                                        <label>Địa chỉ <span class="required">*</span></label>
                                        <form action="./pay" method="post" id="formpay">
                                        <input id = "address" name="address" type="text" placeholder="Địa chỉ ..." />
                                        </form>
                                    </div>
                                </div>
                            </div>
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
                                    <c:forEach var = "product" items = "${cartList}">
                                    <tr class="cart_item">
                                        <td class="product-name">
                                            ${product.productRequest.tensp} <strong class="product-quantity"> × ${product.quantity}</strong>
                                        </td>
                                        <c:set var="subtotal" value="${product.productRequest.gia*product.quantity}"></c:set>
                                        <td class="product-total">
                                            <span class="amount">${subtotal}</span>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>

                                    <c:set var="total" value="${totalPrice}"></c:set>
                                    <tr class="order-total">
                                        <th>Tổng tiền hóa đơn</th>
                                        <td><strong><span class="amount">${total} VNĐ</span></strong>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>

                            <div class="payment-method">
                                <div class="accordion" id="checkoutAccordion">
                                    <div>Phương thức thanh toán:</div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="checkoutOne">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#bankOne" aria-expanded="false" aria-controls="bankOne">
                                                COD
                                            </button>
                                        </h2>
                                        <div id="bankOne" class="accordion-collapse collapse" aria-labelledby="checkoutOne" data-bs-parent="#checkoutAccordion">
                                            <div class="accordion-body">
                                                <div class="order-button-payment mt-20">
                                                    <button type="submit"  class="s-btn s-btn-2" id="thanhtoanCOD">Thanh bằng COD</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="paymentTwo">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#payment" aria-expanded="false" aria-controls="payment">
                                                Momo
                                            </button>
                                        </h2>
                                        <div id="payment" class="accordion-collapse collapse" aria-labelledby="paymentTwo" data-bs-parent="#checkoutAccordion">
                                            <div class="accordion-body">
                                                <div class="order-button-payment mt-20">
                                                    <button type="submit"  class="s-btn s-btn-2" id="thanhtoanMomo">Thanh bằng Momo</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="paypalThree">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#paypal" aria-expanded="false" aria-controls="paypal">
                                               PayPal
                                            </button>
                                        </h2>
                                        <div id="paypal" class="accordion-collapse collapse" aria-labelledby="paypalThree" data-bs-parent="#checkoutAccordion">
                                            <div class="accordion-body">
                                                <div class="order-button-payment mt-20">
                                                    <button type="submit"  class="s-btn s-btn-2" id="thanhtoan">Thanh bằng Paypal</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- checkout-area end -->


</main>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    $(document).ready(function (){

        $("body").on("click", "#thanhtoan", function (){
            var address = $("#address").val();
           if(address !== ""){
               document.getElementById("formpay").submit();
           }
           else {
               alert("Vui lòng nhập địa chỉ!!");
           }
        });
    });
    function checkout(address){
        urls = urlLocation + "/pay/";
        var formData = {
            address:address
        }
        $.ajax({
            url:urls,
            type: "POST",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(formData),
            success:function (data){

            }
        })
    }
</script>
</body>
</html>
