<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>

</head>
<body>
<main>
  <!-- breadcrumb area start -->
  <div class="breadcrumb-area-2 box-plr-45">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xxl-12">
          <nav aria-label="breadcrumb" class="breadcrumb-list-2">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
              <li class="breadcrumb-item"><a href="product">Sản phẩm</a></li>
              <li class="breadcrumb-item active" aria-current="page">${products.tensp}
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <!-- breadcrumb area end -->

  <!-- product details area start -->
  <section class="product__details-area pb-45 box-plr-45">
    <div class="container-fluid">
      <div class="row">

        <div class="col-xxl-8 col-xl-7 col-lg-5">
          <div class="product__details-grid-thumb">
            <div class="row gy-1 gx-1">
<%--              xuất nhiều hình--%>
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/images/product/${products.hinh}'/>"
                       alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xxl-4 col-xl-5 col-lg-7">
          <div class="product__details-content product__details-content-2 product-details-sidebar-sticky pl-30">
            <h3 class="product__details-title">
              <a >${products.tensp}</a>
            </h3>
            <div class="product__details-price">
              <span class="price"><fmt:formatNumber
                      type = "number"
                      maxFractionDigits = "3" value = "${products.gia}" /> VNĐ</span>
            </div>
            <div class="product__details-meta mb-25">
              <ul>
                <li>
                  <div class="product-availibility">
                    <span>Trạng thái: </span>
                    <p>
                      <span>Còn hàng</span>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="product-sku">

                    <span>Thương hiệu: </span>
                    <p>
                      <span>${products.brand.tenthuonghieu}</span>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="product-sku">
                    <span>Loại:</span>
                    <p>
                      <span>${products.category.tenloai}</span>
                    </p>
                  </div>
                </li>
              </ul>
            </div>
            <div class="product__details-action mb-20">
              <form action="#">
                <div class="product__details-quantity d-sm-flex align-items-center">
                  <div class="product-quantity mb-20 mr-15">
                    <div class="cart-plus-minus"><input type="text" value="1" id="quantityDetails" /></div>
                  </div>
                  <div class="product-add-cart  product-add-cart-2 mb-20">
                    <button class="s-btn s-btn-2 s-btn-big" id="add_cart_details" data-id="${products.id}">Thêm vào giỏ</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="product__details-accordion">
              <div class="accordion" id="productDetailsAccordion">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="productOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#description" aria-expanded="true"
                            aria-controls="description">
                      Thông tin
                    </button>
                  </h2>
                  <div id="description" class="accordion-collapse collapse show"
                       aria-labelledby="productDetailsAccordion"
                       data-bs-parent="#productDetailsAccordion">
                    <div class="accordion-body">
                      <div class="product-description-wrapper">

                          <textarea style="width: 100%" rows="40" disabled> ${products.mota}</textarea>


                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- product details area end -->
  <div class="product-line"></div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

  $(document).ready(function () {

    $('body').on('click', '#add_cart_details', function () {
      var id = $(this).data('id');
      var quantity = $("#quantityDetails").val();
      addCartDetails(id, quantity);
    })
  });

  function addCartDetails(_id, quantity) {
    urls = urlLocation + "/Cart/" + _id +"?num=" + quantity;
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
