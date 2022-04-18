<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
                        <h1>Giỏ hàng</h1>
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
<%--                                    <div class="coupon2">--%>
<%--                                        <button class="s-btn s-btn-2" name="update_cart" type="submit">Cập nhật </button>--%>
<%--                                    </div>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-md-5 ml-auto">
                                <div class="cart-page-total">
                                    <h2>Cart totals</h2>
                                    <ul class="mb-20">
<%--                                        <li>Subtotal <span>$250.00</span></li>--%>
                                        <li>Tổng giá: <span id="totalPrice" style="font-weight: bold">0 VNĐ</span></li>
                                    </ul>
                                    <a class="s-btn s-btn-2" href="/checkout">Tiến hành đặt hàng</a>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

    $(document).ready(function (){
        listInCartPage();
        $('body').on('click', '.removeCartInPage', function (){
            const id = $(this).data('id');
            setTimeout(removeCart(id),200);
            setTimeout(listInCartPage,100);
            setTimeout(getNumberCart,100);
        });
        //
        // $(".numberPro").change(function(){
        //     const id = $(this).data('id');
        //     const quantity = $(this).val();
        //     updateCart(id, quantity);
        //     setTimeout(listInCartPage,100);
        //     setTimeout(getNumberCart,100);
        // })

        $('body').on('click', '.dec',function (){
            const id = $(this).data('id');
            setTimeout(minusCart(id),200);
            setTimeout(listInCartPage,100);
            setTimeout(getNumberCart,100);
        })

        $('body').on('click', '.inc',function (){
            const id = $(this).data('id');
            setTimeout(plusCart(id),200);
            setTimeout(listInCartPage,100);
            setTimeout(getNumberCart,100);
        })
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
                var nf = Intl.NumberFormat();
                var totalPrice = 0;
                for(let i =0 ; i<data.length ; i++)
                {
                    html += "<tr>"
                    html += "<td class='product-thumbnail'><a href='/product-detail/"+ data[i].productRequest.slug +"'><img href='/product-detail/"+ data[i].productRequest.slug +"' src='/Front-end/images/product/" + data[i].productRequest.hinh + "' alt=''></a></td>"
                    html += "<td class='product-name'><a href='/product-detail/"+ data[i].productRequest.slug +"'> "+ data[i].productRequest.tensp +"</a></td>"
                    html += "<td class='product-price'><span class='amount'>"+ nf.format(data[i].productRequest.gia)  +" VNĐ</span></td>"
                    html += "<td class='product-quantity'>"
                    html += "<div class='cart-plus-minus'><input type='text' data-id='"+ data[i].productRequest.id + "' class='numberPro' value='"+ data[i].quantity +"' readonly/>" +
                        "<div class='dec qtybutton' data-id = '"+data[i].productRequest.id+"'>-</div>" +
                        "<div class='inc qtybutton' data-id = '"+data[i].productRequest.id+"' >+</div>" +
                        "</div>"
                    html += "</td>"
                    const dongia = data[i].productRequest.gia*data[i].quantity;
                    html += "<td class='product-subtotal'><span class='amount'>"+nf.format(dongia)  +" VNĐ</span></td>"
                    html += "<td  class='product-remove'><a data-id = '"+data[i].productRequest.id+"' class = 'removeCartInPage' ><i  class='fa fa-times'></i></a></td>"
                    totalPrice+= dongia
                }

                $('#listCart').html(html);
                $('#totalPrice').html(nf.format(totalPrice) + " VNĐ")
            }

        })
    }

    //plus
    function plusCart(id)
    {
        urls = urlLocation + "/plusCart/"+ id;
        $.ajax({
            url: urls,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success:function (data)
            {

            }
        })
    }

    //minus
    function minusCart(id)
    {
        urls = urlLocation + "/minusCart/"+ id;
        $.ajax({
            url: urls,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success:function (data)
            {

            }
        })
    }

    // //change input
    // function updateCart(id, quantity)
    // {
    //     urls = urlLocation + "/updateQuantity/"+ id;
    //     $.ajax({
    //         url: urls,
    //         type: 'GET',
    //         contentType: 'application/json',
    //         dataType: 'json',
    //         data:{
    //             quantity : quantity
    //         },
    //         success:function (data)
    //         {
    //
    //         }
    //     })
    // }



</script>
</body>
</html>
