<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Giỏ hàng</title>
</head>
<body>
<main>

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area-3 pt-20 pb-20">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="breadcrumb-wrapper-2 text-center">
                        <h3>Giỏ hàng</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- Cart Area Strat-->
    <section class="cart-area pt-20 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#">
                        <div class="table-content table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="product-thumbnail">Hình ảnh</th>
                                    <th class="cart-product-name">Tên</th>
                                    <th class="product-price">Đơn giá</th>
                                    <th class="product-quantity">Số lượng</th>
                                    <th class="product-subtotal">Tổng</th>
                                    <th class="product-remove">Loại bỏ</th>
                                </tr>
                                </thead>
                                <tbody id="listCart">
<%--                                <tr>--%>
<%--                                    <td class="product-thumbnail"><a href="product-details.html"><img src="<c:url value='/Front-end/client/img/products/1-1.jpg'/>" alt=""></a></td>--%>
<%--                                    <td class="product-name"><a href="product-details.html">T shirt for men</a></td>--%>
<%--                                    <td class="product-price"><span class="amount">$130.00</span></td>--%>
<%--                                    <td class="product-quantity">--%>
<%--                                        <div class="cart-plus-minus"><input type="text" value="1" /></div>--%>
<%--                                    </td>--%>
<%--                                    <td class="product-subtotal"><span class="amount">$130.00</span></td>--%>
<%--                                    <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td class="product-thumbnail"><a href="product-details.html"><img src="<c:url value='/Front-end/client/img/products/2-1.jpg'/>"  alt=""></a></td>--%>
<%--                                    <td class="product-name"><a href="product-details.html">Red scart for women</a></td>--%>
<%--                                    <td class="product-price"><span class="amount">$120.50</span></td>--%>
<%--                                    <td class="product-quantity">--%>
<%--                                        <div class="cart-plus-minus"><input type="text" value="1" /></div>--%>
<%--                                    </td>--%>
<%--                                    <td class="product-subtotal"><span class="amount">$120.50</span></td>--%>
<%--                                    <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>--%>
<%--                                </tr>--%>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="coupon-all">
<%--                                    <div class="coupon">--%>
<%--                                        <input id="coupon_code" class="input-text" name="coupon_code" value=""--%>
<%--                                               placeholder="Coupon code" type="text">--%>
<%--                                        <button class="s-btn s-btn-2" name="apply_coupon" type="submit">Apply--%>
<%--                                            coupon</button>--%>
<%--                                    </div>--%>
                                    <div class="coupon2">
                                        <button class="s-btn s-btn-2" name="update_cart" type="submit">Cập nhật </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-md-5 ml-auto">
                                <div class="cart-page-total">
                                    <h2>Cart totals</h2>
                                    <ul class="mb-20">
<%--                                        <li>Subtotal <span>$250.00</span></li>--%>
                                        <li>Tổng giá: <span>$250.00</span></li>
                                    </ul>
                                    <a class="s-btn s-btn-2" href="checkout.html">Thanh toán</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Cart Area End-->



</main>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

    $(document).ready(function (){
        listInCartPage();
        $('body').on('click', '.removeCartInPage', function (){
            const id = $(this).data('id');
            setTimeout(removeCart(id),200);
            setTimeout(listInCartPage,100);
            setTimeout(getNumberCart,100);
        });
    });

    function listInCartPage(){
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
                    html += "<tr>"
                    html += "<td class='product-thumbnail'><a href='product-details.html'><img src='/Front-end/images/product/" + data[i].productRequest.hinh + "' alt=''></a></td>"
                    html += "<td class='product-name'><a href='product-details.html'> "+ data[i].productRequest.tensp +"</a></td>"
                    html += "<td class='product-price'><span class='amount'>"+ data[i].productRequest.gia +"</span></td>"
                    html += "<td class='product-quantity'>"
                    html += "<div class='cart-plus-minus'><input type='text' value='"+ data[i].quantity +"' />" +
                        "<div class='dec qtybutton'>-</div>" +
                        "<div class='inc qtybutton'>+</div>" +
                        "</div>"
                    html += "</td>"
                    const dongia = data[i].productRequest.gia*data[i].quantity;
                    html += "<td class='product-subtotal'><span class='amount'>"+ dongia +"</span></td>"
                    html += "<td  class='product-remove'><a data-id = '"+data[i].productRequest.id+"' class = 'removeCartInPage' ><i  class='fa fa-times'></i></a></td>"

                }

                $('#listCart').html(html);
            }

        })
    }



</script>
</body>
</html>
