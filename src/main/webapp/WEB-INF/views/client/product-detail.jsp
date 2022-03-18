
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item"><a href="shop.html">Shop</a></li>
              <li class="breadcrumb-item active" aria-current="page">Simple Stylish Women Backpack</li>
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
          <div class="product__details-grid-thumb pr-50">
            <div class="row gy-1 gx-1">
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/client/img/products/details/grid/product-grid-1.jpg'/>" alt="">
                </div>
              </div>
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/client/img/products/details/grid/product-grid-2.jpg'/>" alt="">
                </div>
              </div>
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/client/img/products/details/grid/product-grid-3.jpg'/>" alt="">
                </div>
              </div>
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/client/img/products/details/grid/product-grid-4.jpg'/>" alt="">
                </div>
              </div>
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/client/img/products/details/grid/product-grid-5.jpg'/>" alt="">
                </div>
              </div>
              <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-6">
                <div class="product-thumb-grid w-img">
                  <img src="<c:url value='/Front-end/client/img/products/details/grid/product-grid-6.jpg'/>" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xxl-4 col-xl-5 col-lg-7">
          <div class="product__details-content product__details-content-2 product-details-sidebar-sticky pl-30">
            <h3 class="product__details-title">
              <a href="product-details.html">Simple Stylish Women Backpack</a>
            </h3>
            <div class="product__details-price">
              <span class="price">£1.296.00</span>
            </div>
            <div class="product__details-rating d-flex align-items-center mb-15">
              <ul class="mr-10">
                <li><a href="#"><i class="fal fa-star"></i></a></li>
                <li><a href="#"><i class="fal fa-star"></i></a></li>
                <li><a href="#"><i class="fal fa-star"></i></a></li>
                <li><a href="#"><i class="fal fa-star"></i></a></li>
                <li><a href="#"><i class="fal fa-star"></i></a></li>
              </ul>
              <div class="product__details-customer">
                <span><a href="#">04 Customer Reviews</a></span>
              </div>
            </div>
            <p class="product-des">Typi non habent claritatem insitam est usus legentis in facit eorum claritatem. Investigationes demonstraverunt lectores...</p>

            <div class="product__details-color d-sm-flex align-items-center mb-25">
              <span>Color:</span>
              <ul>
                <li><a href="#" class="black"></a></li>
                <li><a href="#" class="active brown"></a></li>
                <li><a href="#" class="blue"></a></li>
                <li><a href="#" class="red"></a></li>
                <li><a href="#" class="white"></a></li>
              </ul>
            </div>
            <div class="product__details-size d-sm-flex align-items-center mb-30">
              <span>Size: </span>
              <ul class="mr-30">
                <li>
                  <a href="#" class="unavailable">S</a>
                </li>
                <li>
                  <a href="#" >M</a>
                </li>
                <li>
                  <a href="#">L</a>
                </li>
                <li>
                  <a href="#">XL</a>
                </li>
                <li>
                  <a href="#">2XL</a>
                </li>
                <li>
                  <a href="#">3XL</a>
                </li>
              </ul>
              <button type="button" class="product-size-guide-btn float-sm-end" data-bs-toggle="modal" data-bs-target="#productSizeModal">Size Guide</button>
            </div>
            <div class="product__countdown-wrapper gray-bg-4 mb-30">
              <h3 class="product__countdown-title">Hurry Up! Offer Ends In:</h3>
              <div class="product__countdown" data-countdown="" data-date="Mar 02 2022 20:20:22">
                <ul class="d-sm-flex">
                  <li><span data-days="">401</span> Days</li>
                  <li><span class="colon">:</span></li>
                  <li><span data-hours="">1</span> hours</li>
                  <li><span class="colon">:</span></li>
                  <li><span data-minutes="">29</span> mins</li>
                  <li><span class="colon">:</span></li>
                  <li><span data-seconds="">40</span> secs</li>
                </ul>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" data-width="70%"></div>
              </div>
              <div class="product__countdown-sold d-flex align-items-center">
                <span>Sold:</span>
                <p>820/1960</p>
              </div>
            </div>
            <div class="product__details-action">
              <form action="#">
                <div class="product__details-quantity d-sm-flex align-items-center">
                  <div class="product-quantity mb-20 mr-15">
                    <div class="cart-plus-minus"><input type="text" value="1" /></div>
                  </div>
                  <div class="product-add-cart  product-add-cart-2 mb-20">
                    <button class="s-btn s-btn-2 s-btn-big">add to cart</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="product__details-compare">
              <ul>
                <li>
                  <a href="#"><i class="fal fa-heart"></i>Add to Wishlist</a>
                </li>
                <li>
                  <a href="#"><i class="fal fa-layer-group"></i>Add to Compare</a>
                </li>
              </ul>
            </div>
            <div class="product__details-meta mb-25">
              <ul>
                <li>
                  <div class="product-availibility">
                    <span>Availability</span>
                    <p>
                      <span>In Stock</span>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="product-sku">
                    <span>Sku:</span>
                    <p>
                      <span>0026AG90</span>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="product-sku">
                    <span>Categories:</span>
                    <p>
                      <a href="#">Lighting,</a>
                      <a href="#">Lamp,</a>
                      <a href="#">Decor</a>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="product-sku">
                    <span>Tags:</span>
                    <p>
                      <a href="#">PinK Store,</a>
                      <a href="#">Furniture,</a>
                      <a href="#">Livingroom,</a>
                      <a href="#">Table</a>
                    </p>
                  </div>
                </li>
              </ul>
            </div>
            <div class="product__details-social mb-70 d-sm-flex align-items-center">
              <span>Share: </span>
              <ul>
                <li>
                  <a href="#"><i class="fab fa-facebook-f"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-twitter"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-pinterest-p"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-google-plus-g"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </li>
              </ul>
            </div>
            <div class="product__details-accordion">
              <div class="accordion" id="productDetailsAccordion">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="productOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#description" aria-expanded="true" aria-controls="description">
                      Description
                    </button>
                  </h2>
                  <div id="description" class="accordion-collapse collapse show" aria-labelledby="productDetailsAccordion" data-bs-parent="#productDetailsAccordion">
                    <div class="accordion-body">
                      <div class="product-description-wrapper">
                        <p>Designed by Hans J. Wegner in 1949 as one of the first models created especially for Carl Hansen & Son, and produced since 1950. The last of a series of chairs Wegner designed based on inspiration from antique Chinese armchairs. </p>

                        <div class="product-description-list mb-25">
                          <ul>
                            <li>
                              <i class="fal fa-plus"></i>
                              Measurement: 56 x 52 x 80 cm high. The seat height is 44 cm.
                            </li>
                            <li>
                              <i class="fal fa-plus"></i>
                              Manufacturer: Normann Copenhagen
                            </li>
                            <li>
                              <i class="fal fa-plus"></i>
                              Designer: Simon Legald.
                            </li>
                            <li>
                              <i class="fal fa-plus"></i>
                              Made in: Dongguan, China. See the factory
                            </li>
                            <li>
                              <i class="fal fa-plus"></i>
                              Questions about fit?
                            </li>
                          </ul>
                        </div>
                        <div class="product-description-thumb w-img">
                          <div class="row">
                            <div class="col-sm-6">
                              <img class="mb-25" src="<c:url value='/Front-end/client/img/products/details/accordion/product-details-accordion-img-1.jpg'/>" alt="">
                            </div>
                            <div class="col-sm-6">
                              <img class="mb-25" src="<c:url value='/Front-end/client/img/products/details/accordion/product-details-accordion-img-2.jpg'/>" alt="">
                            </div>
                          </div>
                        </div>
                        <p>The gently rounded top together with the back and seat offers a variety of comfortable seating positions, ideal for both long visits to the dining table and relaxed lounging. A light chair, easy to move around the dining table and about the room.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="productTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#additionalInfo" aria-expanded="true" aria-controls="additionalInfo">
                      Additional Information
                    </button>
                  </h2>
                  <div id="additionalInfo" class="accordion-collapse collapse" aria-labelledby="productDetailsAccordion" data-bs-parent="#productDetailsAccordion">
                    <div class="accordion-body">
                      <div class="product__details-info">
                        <ul>
                          <li>
                            <h4>Weight</h4>
                            <span>2 lbs</span>
                          </li>
                          <li>
                            <h4>Dimensions</h4>
                            <span>12 × 16 × 19 in</span>
                          </li>
                          <li>
                            <h4>Product</h4>
                            <span>Purchase this product on rag-bone.com</span>
                          </li>
                          <li>
                            <h4>Color</h4>
                            <span>Gray, Black</span>
                          </li>
                          <li>
                            <h4>Size</h4>
                            <span>S, M, L, XL</span>
                          </li>
                          <li>
                            <h4>Model</h4>
                            <span>Model	</span>
                          </li>
                          <li>
                            <h4>Shipping</h4>
                            <span>Standard shipping: $5,95</span>
                          </li>
                          <li>
                            <h4>Care Info</h4>
                            <span>Machine Wash up to 40ºC/86ºF Gentle Cycle</span>
                          </li>
                          <li>
                            <h4>Brand</h4>
                            <span>Kazen</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="productThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#productReview" aria-expanded="true" aria-controls="productReview">
                      Reviews (4)
                    </button>
                  </h2>
                  <div id="productReview" class="accordion-collapse collapse" aria-labelledby="productDetailsAccordion" data-bs-parent="#productDetailsAccordion">
                    <div class="accordion-body">
                      <div class="produc-review-wrapper product__details-review">
                        <div class="product-review-item-wrapper">
                          <div class="product-review-item">
                            <div class="product-review-top d-flex align-items-center justify-content-between">
                              <div class="product-review-name d-sm-flex align-items-center">
                                <h4 class="mr-10">Shahnewaz Sakil</h4>
                                <span class="date">September 06, 2020</span>
                              </div>
                              <div class="product-review-rating">
                                <ul>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                </ul>
                              </div>
                            </div>
                            <p>Many desktop publishing packages and web page editors now use lorem ipsum as default model text, and a search for “lorem ipsum” will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
                          </div>
                          <div class="product-review-item">
                            <div class="product-review-top d-flex align-items-center justify-content-between">
                              <div class="product-review-name d-sm-flex align-items-center">
                                <h4 class="mr-10">Anya Ivanova</h4>
                                <span class="date">September 06, 2020</span>
                              </div>
                              <div class="product-review-rating">
                                <ul>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                </ul>
                              </div>
                            </div>
                            <p>Many desktop publishing packages and web page editors now use lorem ipsum as default model text, and a search for “lorem ipsum” will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
                          </div>
                          <div class="product-review-item">
                            <div class="product-review-top d-flex align-items-center justify-content-between">
                              <div class="product-review-name d-sm-flex align-items-center">
                                <h4 class="mr-10">Evan Bohringer</h4>
                                <span class="date">September 06, 2020</span>
                              </div>
                              <div class="product-review-rating">
                                <ul>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                </ul>
                              </div>
                            </div>
                            <p>Many desktop publishing packages and web page editors now use lorem ipsum as default model text, and a search for “lorem ipsum” will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
                          </div>
                          <div class="product-review-item">
                            <div class="product-review-top d-flex align-items-center justify-content-between">
                              <div class="product-review-name d-sm-flex align-items-center">
                                <h4 class="mr-10">Eren Topher</h4>
                                <span class="date">September 06, 2020</span>
                              </div>
                              <div class="product-review-rating">
                                <ul>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                  <li><a href="#"><i class="far fa-star"></i></a></li>
                                </ul>
                              </div>
                            </div>
                            <p>Many desktop publishing packages and web page editors now use lorem ipsum as default model text, and a search for “lorem ipsum” will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>
                          </div>
                        </div>
                        <div class="product-review-form">
                          <form action="#">
                            <h3 class="product-review-title">YOU'RE REVIEWING: <span>“Simple Stylish Women Backpack”</span></h3>
                            <p class="product-review-form-des">Your email address will not be published. Required fields are marked *</p>
                            <div class="product-review-form-rating mb-40">
                              <p>Your Rating</p>
                              <ul>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                              </ul>
                            </div>
                            <div class="product-review-form-wrapper">
                              <div class="row">
                                <div class="col-xxl-12">
                                  <div class="product-review-input">
                                    <label>Your Review *</label>
                                    <textarea></textarea>
                                  </div>
                                </div>
                                <div class="col-xxl-6">
                                  <div class="product-review-input">
                                    <label>Name *</label>
                                    <input type="text">
                                  </div>
                                </div>
                                <div class="col-xxl-6">
                                  <div class="product-review-input">
                                    <label>Email *</label>
                                    <input type="email">
                                  </div>
                                </div>
                                <div class="col-xxl-12">
                                  <div class="product-review-agree d-flex align-items-center mb-45">
                                    <input type="checkbox" id="agree">
                                    <label for="agree">Save my name, email, and website in this browser for the next time I comment.</label>
                                  </div>
                                </div>
                                <div class="col-xxl-12">
                                  <div class="product-review-btn">
                                    <button type="submit" class="s-btn s-btn-2 s-btn-big-2">Submit Review</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </form>
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
    </div>
  </section>
  <!-- product details area end -->


  <div class="product-line"></div>

  <!-- top selling product area start -->
  <div class="top-selling-product pt-95 pb-65">
    <div class="container">
      <div class="row">
        <div class="col-xxl-12">
          <div class="product-details-section-title text-center mb-75">
            <h3>YOU MAY ALSO LIKE</h3>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xxl-12">
          <div class="top-selling-active-2 owl-carousel">
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/1.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/1-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-2 p-abs">New</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Simple Stylish Women Backpack</a></h4>
                <div class="pro-price">
                  <span>£1.296.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/13.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/13-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-2 p-abs">New</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Royal Gallery</a></h4>
                <div class="pro-price">
                  <span>£146.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/3.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/3-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Blacker's Complete Home Furn</a></h4>
                <div class="pro-price">
                  <span>£146.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/4.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/4-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-3 p-abs">-20%</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Marlborough Barn</a></h4>
                <div class="pro-price">
                  <span>£136.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/13.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/13-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-2 p-abs">New</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Royal Gallery</a></h4>
                <div class="pro-price">
                  <span>£146.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/3.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/3-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Blacker's Complete Home Furn</a></h4>
                <div class="pro-price">
                  <span>£146.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/4.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/4-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-3 p-abs">-20%</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Marlborough Barn</a></h4>
                <div class="pro-price">
                  <span>£136.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/1.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/1-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-2 p-abs">New</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Simple Stylish Women Backpack</a></h4>
                <div class="pro-price">
                  <span>£1.296.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".3s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/13.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/13-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-2 p-abs">New</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Royal Gallery</a></h4>
                <div class="pro-price">
                  <span>£146.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/3.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/3-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Blacker's Complete Home Furn</a></h4>
                <div class="pro-price">
                  <span>£146.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".5s">
              <div class="product-thumb">
                <img src="<c:url value='/Front-end/client/img/products/furniture/4.jpg'/>" alt="#">
                <img src="<c:url value='/Front-end/client/img/products/furniture/4-1.jpg'/>" alt="#">
                <div class="cart-btn cart-btn-2 p-abs">
                  <a href="#">Add to cart</a>
                </div>
                <span class="discount discount-3 p-abs">-20%</span>
                <div class="product-action product-action-1 p-abs">
                  <a href="#" class="icon-box icon-box-2" data-bs-toggle="modal" data-bs-target="#productModal">
                    <i class="fal fa-eye"></i>
                    <i class="fal fa-eye"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-heart"></i>
                    <i class="fal fa-heart"></i>
                  </a>
                  <a href="#" class="icon-box icon-box-2">
                    <i class="fal fa-layer-group"></i>
                    <i class="fal fa-layer-group"></i>
                  </a>
                </div>
              </div>
              <div class="product-content">
                <h4 class="pro-title pro-title-2"><a href="product-details.html">Marlborough Barn</a></h4>
                <div class="pro-price">
                  <span>£136.00</span>
                </div>
                <div class="rating">
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star active"></i>
                  <i class="fal fa-star"></i>
                  <i class="fal fa-star"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- top selling product area end -->

  <!-- product modal area start -->
  <div class="product__modal-area modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="product__modal-inner position-relative">
          <div class="product__modal-close">
            <button data-bs-dismiss="modal" aria-label="Close">
              <i class="ti-close"></i>
            </button>
          </div>
          <div class="product__modal-left">
            <div class="tab-content mb-10" id="productModalThumb">
              <div class="tab-pane fade show active" id="pro-1" role="tabpanel" aria-labelledby="pro-1-tab">
                <div class="product__modal-thumb w-img">
                  <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-1.jpg'/>" alt="">
                </div>
              </div>
              <div class="tab-pane fade" id="pro-2" role="tabpanel" aria-labelledby="pro-2-tab">
                <div class="product__modal-thumb w-img">
                  <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-2.jpg'/>" alt="">
                </div>
              </div>
              <div class="tab-pane fade" id="pro-3" role="tabpanel" aria-labelledby="pro-3-tab">
                <div class="product__modal-thumb w-img">
                  <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-3.jpg'/>" alt="">
                </div>
              </div>
              <div class="tab-pane fade" id="pro-4" role="tabpanel" aria-labelledby="pro-4-tab">
                <div class="product__modal-thumb w-img">
                  <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-4.jpg'/>" alt="">
                </div>
              </div>
            </div>
            <div class="product__modal-nav">
              <ul class="nav nav-tabs" id="productModalNav" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="pro-1-tab" data-bs-toggle="tab" data-bs-target="#pro-1" type="button" role="tab" aria-controls="pro-1" aria-selected="true">
                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-1.jpg'/>" alt="">
                  </button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pro-2-tab" data-bs-toggle="tab" data-bs-target="#pro-2" type="button" role="tab" aria-controls="pro-2" aria-selected="false">
                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-2.jpg'/>" alt="">
                  </button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pro-3-tab" data-bs-toggle="tab" data-bs-target="#pro-3" type="button" role="tab" aria-controls="pro-3" aria-selected="false">
                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-3.jpg'/>" alt="">
                  </button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pro-4-tab" data-bs-toggle="tab" data-bs-target="#pro-4" type="button" role="tab" aria-controls="pro-4" aria-selected="false">
                    <img src="<c:url value='/Front-end/client/img/products/modal/product-modal-sm-4.jpg'/>" alt="">
                  </button>
                </li>
              </ul>
            </div>
          </div>
          <div class="product__modal-right">
            <h3 class="product__modal-title">
              <a href="product-details.html">Living Room Lighting</a>
            </h3>
            <div class="product__modal-rating d-flex align-items-center">
              <ul class="mr-10">
                <li>
                  <a href="#"><i class="ti-star"></i></a>
                </li>
                <li>
                  <a href="#"><i class="ti-star"></i></a>
                </li>
                <li>
                  <a href="#"><i class="ti-star"></i></a>
                </li>
                <li>
                  <a href="#"><i class="ti-star"></i></a>
                </li>
                <li>
                  <a href="#"><i class="ti-star"></i></a>
                </li>
              </ul>
              <div class="customer-review">
                <a href="#">(1 customer review)</a>
              </div>
            </div>
            <div class="product__modal-price mb-10">
              <span class="price new-price">$700.00</span>

              <span class="price old-price">$899.99</span>
            </div>
            <div class="product__modal-available">
              <p> Availability: <span>In Stock</span> </p>
            </div>
            <div class="product__modal-sku">
              <p> Sku: <span> 0026AG90-1</span> </p>
            </div>
            <div class="product__modal-des">
              <p>Typi non habent claritatem insitam, est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod legunt saepius.…</p>
            </div>
            <div class="product__modal-quantity mb-15">
              <h5>Quantity:</h5>
              <form action="#">
                <div class="pro-quan-area d-lg-flex align-items-center">
                  <div class="product-quantity mr-20 mb-25">
                    <div class="cart-plus-minus p-relative"><input type="text" value="1" /></div>
                  </div>
                  <div class="product__modal-cart mb-25">
                    <button class="product-modal-cart-btn " type="submit">Add to cart</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="product__modal-categories d-flex align-items-center">
              <span>Categories: </span>
              <ul>
                <li><a href="#">Decor, </a></li>
                <li><a href="#">Lamp, </a></li>
                <li><a href="#">Lighting</a></li>
              </ul>
            </div>
            <div class="product__modal-categories d-flex align-items-center">
              <span>Tags: </span>
              <ul>
                <li><a href="#">Furniture, </a></li>
                <li><a href="#">Lighting, </a></li>
                <li><a href="#">Living Room, </a></li>
                <li><a href="#">Table</a></li>
              </ul>
            </div>
            <div class="product__modal-share d-flex align-items-center">
              <span>Share this product: </span>
              <ul>
                <li>
                  <a href="#"><i class="fab fa-facebook-f"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-twitter"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-pinterest-p"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-google-plus-g"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- product modal area start -->

  <!-- product question modal start -->
  <div class="product__details-sizetab-modal modal fade" id="productSizeModal" tabindex="-1"  aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="product__details-sizetab">
          <div class="product__details-sizetab-top text-center mb-30">
            <span><img src="<c:url value='/Front-end/client/img/logo/logo-black.png'/>" alt=""></span>
            <h3 class="product__details-sizetab-title">Size Charts</h3>
          </div>
          <div class="product__details-sizetab-content">
            <div class="product-details-sizetab-nav mb-20 text-center">
              <ul>
                <li>
                  <a href="#">women</a>
                </li>
                <li>
                  <a href="#">men</a>
                </li>
                <li>
                  <a href="#">girls</a>
                </li>
                <li>
                  <a href="#">boys</a>
                </li>
              </ul>
            </div>
            <!-- product details size tab btn -->
            <div class="product-details-sizetab-nav-2 tab-content" id="productSizeContent">
              <ul class="nav nav-tabs justify-content-center" id="productInnerTab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="tops-tab" data-bs-toggle="tab" data-bs-target="#tops" type="button" role="tab" aria-controls="tops" aria-selected="true">Tops</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="bottoms-tab" data-bs-toggle="tab" data-bs-target="#bottoms" type="button" role="tab" aria-controls="bottoms" aria-selected="false">Bottoms</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="suiting-tab" data-bs-toggle="tab" data-bs-target="#suiting" type="button" role="tab" aria-controls="suiting" aria-selected="false">Suiting</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="outerwear-tab" data-bs-toggle="tab" data-bs-target="#outerwear" type="button" role="tab" aria-selected="false">Outerwear</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="sports-tab" data-bs-toggle="tab" data-bs-target="#sports" type="button" role="tab"  aria-selected="false">Sports</button>
                </li>
              </ul>
            </div>
            <!-- product details size tab content -->
            <div class="product__details-sizetab-accordion">
              <div class="tab-content" id="productSizeAccordion">

                <!-- product details size tab for tops -->
                <div class="tab-pane fade show active" id="tops" role="tabpanel" aria-labelledby="tops-tab">
                  <div class="accordion" id="accordionMeasurements">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="measurementsbtn">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#measurementsOne" aria-expanded="true" aria-controls="measurementsOne">
                          Measurements
                        </button>
                      </h2>
                      <div id="measurementsOne" class="accordion-collapse collapse show" aria-labelledby="measurementsbtn" data-bs-parent="#accordionMeasurements">
                        <div class="accordion-body">
                          <div class="product-measurements-content">
                            <div class="product-measurements-top d-flex align-items-center justify-content-between mb-20">
                              <h3 class="product-measurements-title">Size charts Outerwear</h3>
                              <div class="product-measurements-cm">
                                <ul class="nav nav-tabs" id="prooductCmTab" role="tablist">
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="inch-tab" data-bs-toggle="tab" data-bs-target="#inch" type="button" role="tab" aria-controls="inch" aria-selected="true">inch</button>
                                  </li>
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="cm-tab" data-bs-toggle="tab" data-bs-target="#cm" type="button" role="tab" aria-controls="cm" aria-selected="true">cm</button>
                                  </li>
                                </ul>

                              </div>
                            </div>
                            <div class="tab-content" id="productCmContent">
                              <div class="tab-pane fade show active" id="inch" role="tabpanel" aria-labelledby="inch-tab">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tab-pane fade" id="cm" role="tabpanel" aria-labelledby="cm-tab">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="guidebtn">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#guideOne" aria-expanded="true" aria-controls="guideOne">
                          Measuring Guide
                        </button>
                      </h2>
                      <div id="guideOne" class="accordion-collapse collapse " aria-labelledby="guidebtn" data-bs-parent="#accordionMeasurements">
                        <div class="accordion-body">
                          <div class="product-guide d-md-flex align-items-center">
                            <div class="product-guide-thumb mr-30">
                              <img src="<c:url value='/Front-end/client/img/products/measurement-guide.jpg'/>" alt="">
                            </div>
                            <div class="product-guide-content">
                              <div class="chest mb-25">
                                <h3>Chest</h3>
                                <p>Measure under your arms around the fullest part of your chest.</p>
                              </div>
                              <div class="arm mb-25">
                                <h3>Arm Length</h3>
                                <p>Bend your elbow 90 degrees and place your hand on your hip. Hold the tape at the center back of your neck. Measure across your shoulder to your elbow and down to your wrist. The total length is your arm length.</p>
                              </div>
                              <div class="neck mb-25">
                                <h3>Neck</h3>
                                <p>Measure around the middle of your neck (at the Adam’s apple), keeping tape a bit loose.</p>
                              </div>
                              <div class="waist">
                                <h3>Waist</h3>
                                <p>Measure around your natural waistline, keeping the tape a bit loose.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="sizeConversionbtn">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sizeConversionOne" aria-expanded="true">
                          Size Conversions
                        </button>
                      </h2>
                      <div id="sizeConversionOne" class="accordion-collapse collapse " aria-labelledby="sizeConversionbtn" data-bs-parent="#accordionMeasurements">
                        <div class="accordion-body">
                          <div class="product-size-table product-size-table-2">
                            <p>All conversions are approximate. Fits may vary by style or personal preference; sizes may vary by manufacturer.</p>
                            <table class="table text-center">
                              <thead>
                              <tr>
                                <th>Size (US)</th>
                                <th>Numeric Size (US)</th>
                                <th>UK</th>
                                <th>EU</th>
                                <th>Japan </th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                <td>X</td>
                                <td>34</td>
                                <td>34</td>
                                <td>44</td>
                                <td>X</td>
                              </tr>
                              <tr>
                                <td>S</td>
                                <td>36</td>
                                <td>36</td>
                                <td>46</td>
                                <td>S</td>
                              </tr>
                              <tr>
                                <td>M</td>
                                <td>38</td>
                                <td>38</td>
                                <td>48</td>
                                <td>M</td>
                              </tr>
                              <tr>
                                <td>L</td>
                                <td>40</td>
                                <td>40</td>
                                <td>50</td>
                                <td>L</td>
                              </tr>
                              <tr>
                                <td>XL</td>
                                <td>42</td>
                                <td>42</td>
                                <td>52</td>
                                <td>XL</td>
                              </tr>
                              <tr>
                                <td>XXL</td>
                                <td>44</td>
                                <td>44</td>
                                <td>54</td>
                                <td>XXL</td>
                              </tr>
                              <tr>
                                <td>XXXL</td>
                                <td>46</td>
                                <td>46</td>
                                <td>56</td>
                                <td>XXXL</td>
                              </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- product details size tab for bottoms -->
                <div class="tab-pane fade" id="bottoms" role="tabpanel" aria-labelledby="bottoms-tab">
                  <div class="accordion" id="accordionMeasurements2">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="measurementsbtn2">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#measurementsTwo" aria-expanded="true" aria-controls="measurementsTwo">
                          Measurements
                        </button>
                      </h2>
                      <div id="measurementsTwo" class="accordion-collapse collapse show" aria-labelledby="measurementsbtn2" data-bs-parent="#accordionMeasurements2">
                        <div class="accordion-body">
                          <div class="product-measurements-content">
                            <div class="product-measurements-top d-flex align-items-center justify-content-between mb-20">
                              <h3 class="product-measurements-title">Size charts Outerwear</h3>
                              <div class="product-measurements-cm">
                                <ul class="nav nav-tabs" id="prooductCmTab2" role="tablist">
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="inch-tab-2" data-bs-toggle="tab" data-bs-target="#inch2" type="button" role="tab" aria-controls="inch2" aria-selected="true">inch</button>
                                  </li>
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="cm-tab-2" data-bs-toggle="tab" data-bs-target="#cm2" type="button" role="tab" aria-controls="cm2" aria-selected="true">cm</button>
                                  </li>
                                </ul>
                              </div>
                            </div>
                            <div class="tab-content" id="productCmContent2">
                              <div class="tab-pane fade show active" id="inch2" role="tabpanel" aria-labelledby="inch-tab-2">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tab-pane fade" id="cm2" role="tabpanel" aria-labelledby="cm-tab-2">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="guidebtn2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#guideTwo" aria-expanded="true" aria-controls="guideTwo">
                          Measuring Guide
                        </button>
                      </h2>
                      <div id="guideTwo" class="accordion-collapse collapse " aria-labelledby="guidebtn2" data-bs-parent="#accordionMeasurements2">
                        <div class="accordion-body">
                          <div class="product-guide d-md-flex align-items-center">
                            <div class="product-guide-thumb mr-30">
                              <img src="<c:url value='/Front-end/client/img/products/measurement-guide.jpg'/>" alt="">
                            </div>
                            <div class="product-guide-content">
                              <div class="chest mb-25">
                                <h3>Chest</h3>
                                <p>Measure under your arms around the fullest part of your chest.</p>
                              </div>
                              <div class="arm mb-25">
                                <h3>Arm Length</h3>
                                <p>Bend your elbow 90 degrees and place your hand on your hip. Hold the tape at the center back of your neck. Measure across your shoulder to your elbow and down to your wrist. The total length is your arm length.</p>
                              </div>
                              <div class="neck mb-25">
                                <h3>Neck</h3>
                                <p>Measure around the middle of your neck (at the Adam’s apple), keeping tape a bit loose.</p>
                              </div>
                              <div class="waist">
                                <h3>Waist</h3>
                                <p>Measure around your natural waistline, keeping the tape a bit loose.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="sizeConversionbtn2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sizeConversionTwo" aria-expanded="true">
                          Size Conversions
                        </button>
                      </h2>
                      <div id="sizeConversionTwo" class="accordion-collapse collapse " aria-labelledby="sizeConversionbtn2" data-bs-parent="#accordionMeasurements2">
                        <div class="accordion-body">
                          <div class="product-size-table product-size-table-2">
                            <p>All conversions are approximate. Fits may vary by style or personal preference; sizes may vary by manufacturer.</p>
                            <table class="table text-center">
                              <thead>
                              <tr>
                                <th>Size (US)</th>
                                <th>Numeric Size (US)</th>
                                <th>UK</th>
                                <th>EU</th>
                                <th>Japan </th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                <td>X</td>
                                <td>34</td>
                                <td>34</td>
                                <td>44</td>
                                <td>X</td>
                              </tr>
                              <tr>
                                <td>S</td>
                                <td>36</td>
                                <td>36</td>
                                <td>46</td>
                                <td>S</td>
                              </tr>
                              <tr>
                                <td>M</td>
                                <td>38</td>
                                <td>38</td>
                                <td>48</td>
                                <td>M</td>
                              </tr>
                              <tr>
                                <td>L</td>
                                <td>40</td>
                                <td>40</td>
                                <td>50</td>
                                <td>L</td>
                              </tr>
                              <tr>
                                <td>XL</td>
                                <td>42</td>
                                <td>42</td>
                                <td>52</td>
                                <td>XL</td>
                              </tr>
                              <tr>
                                <td>XXL</td>
                                <td>44</td>
                                <td>44</td>
                                <td>54</td>
                                <td>XXL</td>
                              </tr>
                              <tr>
                                <td>XXXL</td>
                                <td>46</td>
                                <td>46</td>
                                <td>56</td>
                                <td>XXXL</td>
                              </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- product details size tab for suiting -->
                <div class="tab-pane fade" id="suiting" role="tabpanel" aria-labelledby="suiting-tab">
                  <div class="accordion" id="accordionMeasurements3">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="measurementsbtn3">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#measurementsThree" aria-expanded="true" aria-controls="measurementsThree">
                          Measurements
                        </button>
                      </h2>
                      <div id="measurementsThree" class="accordion-collapse collapse show" aria-labelledby="measurementsbtn3" data-bs-parent="#accordionMeasurements3">
                        <div class="accordion-body">
                          <div class="product-measurements-content">
                            <div class="product-measurements-top d-flex align-items-center justify-content-between mb-20">
                              <h3 class="product-measurements-title">Size charts Outerwear</h3>
                              <div class="product-measurements-cm">
                                <ul class="nav nav-tabs" id="prooductCmTab3" role="tablist">
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="inch-tab-3" data-bs-toggle="tab" data-bs-target="#inch3" type="button" role="tab" aria-controls="inch3" aria-selected="true">inch</button>
                                  </li>
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="cm-tab-3" data-bs-toggle="tab" data-bs-target="#cm3" type="button" role="tab" aria-controls="cm3" aria-selected="true">cm</button>
                                  </li>
                                </ul>
                              </div>
                            </div>
                            <div class="tab-content" id="productCmContent3">
                              <div class="tab-pane fade show active" id="inch3" role="tabpanel" aria-labelledby="inch-tab-3">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tab-pane fade" id="cm3" role="tabpanel" aria-labelledby="cm-tab-3">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="guidebtn3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#guideThree" aria-expanded="true" aria-controls="guideOne">
                          Measuring Guide
                        </button>
                      </h2>
                      <div id="guideThree" class="accordion-collapse collapse " aria-labelledby="guidebtn3" data-bs-parent="#accordionMeasurements3">
                        <div class="accordion-body">
                          <div class="product-guide d-md-flex align-items-center">
                            <div class="product-guide-thumb mr-30">
                              <img src="<c:url value='/Front-end/client/img/products/measurement-guide.jpg'/>" alt="">
                            </div>
                            <div class="product-guide-content">
                              <div class="chest mb-25">
                                <h3>Chest</h3>
                                <p>Measure under your arms around the fullest part of your chest.</p>
                              </div>
                              <div class="arm mb-25">
                                <h3>Arm Length</h3>
                                <p>Bend your elbow 90 degrees and place your hand on your hip. Hold the tape at the center back of your neck. Measure across your shoulder to your elbow and down to your wrist. The total length is your arm length.</p>
                              </div>
                              <div class="neck mb-25">
                                <h3>Neck</h3>
                                <p>Measure around the middle of your neck (at the Adam’s apple), keeping tape a bit loose.</p>
                              </div>
                              <div class="waist">
                                <h3>Waist</h3>
                                <p>Measure around your natural waistline, keeping the tape a bit loose.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="sizeConversionbtn3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sizeConversionThree" aria-expanded="true">
                          Size Conversions
                        </button>
                      </h2>
                      <div id="sizeConversionThree" class="accordion-collapse collapse " aria-labelledby="sizeConversionbtn3" data-bs-parent="#accordionMeasurements3">
                        <div class="accordion-body">
                          <div class="product-size-table product-size-table-2">
                            <p>All conversions are approximate. Fits may vary by style or personal preference; sizes may vary by manufacturer.</p>
                            <table class="table text-center">
                              <thead>
                              <tr>
                                <th>Size (US)</th>
                                <th>Numeric Size (US)</th>
                                <th>UK</th>
                                <th>EU</th>
                                <th>Japan </th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                <td>X</td>
                                <td>34</td>
                                <td>34</td>
                                <td>44</td>
                                <td>X</td>
                              </tr>
                              <tr>
                                <td>S</td>
                                <td>36</td>
                                <td>36</td>
                                <td>46</td>
                                <td>S</td>
                              </tr>
                              <tr>
                                <td>M</td>
                                <td>38</td>
                                <td>38</td>
                                <td>48</td>
                                <td>M</td>
                              </tr>
                              <tr>
                                <td>L</td>
                                <td>40</td>
                                <td>40</td>
                                <td>50</td>
                                <td>L</td>
                              </tr>
                              <tr>
                                <td>XL</td>
                                <td>42</td>
                                <td>42</td>
                                <td>52</td>
                                <td>XL</td>
                              </tr>
                              <tr>
                                <td>XXL</td>
                                <td>44</td>
                                <td>44</td>
                                <td>54</td>
                                <td>XXL</td>
                              </tr>
                              <tr>
                                <td>XXXL</td>
                                <td>46</td>
                                <td>46</td>
                                <td>56</td>
                                <td>XXXL</td>
                              </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- product details size tab for outerwear -->
                <div class="tab-pane fade" id="outerwear" role="tabpanel" aria-labelledby="outerwear-tab">
                  <div class="accordion" id="accordionMeasurements4">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="measurementsbtn4">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#measurementsFour" aria-expanded="true" aria-controls="measurementsFour">
                          Measurements
                        </button>
                      </h2>
                      <div id="measurementsFour" class="accordion-collapse collapse show" aria-labelledby="measurementsbtn4" data-bs-parent="#accordionMeasurements4">
                        <div class="accordion-body">
                          <div class="product-measurements-content">
                            <div class="product-measurements-top d-flex align-items-center justify-content-between mb-20">
                              <h3 class="product-measurements-title">Size charts Outerwear</h3>
                              <div class="product-measurements-cm">
                                <ul class="nav nav-tabs" id="prooductCmTab4" role="tablist">
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="inch-tab-4" data-bs-toggle="tab" data-bs-target="#inch4" type="button" role="tab"  aria-selected="true">inch</button>
                                  </li>
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="cm-tab-4" data-bs-toggle="tab" data-bs-target="#cm4" type="button" role="tab"  aria-selected="true">cm</button>
                                  </li>
                                </ul>
                              </div>
                            </div>
                            <div class="tab-content" id="productCmContent4">
                              <div class="tab-pane fade show active" id="inch4" role="tabpanel" aria-labelledby="inch-tab-4">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tab-pane fade" id="cm4" role="tabpanel" aria-labelledby="cm-tab-4">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="guidebtn4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#guideFour" aria-expanded="true" aria-controls="guideFour">
                          Measuring Guide
                        </button>
                      </h2>
                      <div id="guideFour" class="accordion-collapse collapse " aria-labelledby="guidebtn4" data-bs-parent="#accordionMeasurements4">
                        <div class="accordion-body">
                          <div class="product-guide d-md-flex align-items-center">
                            <div class="product-guide-thumb mr-30">
                              <img src="<c:url value='/Front-end/client/img/products/measurement-guide.jpg'/>" alt="">
                            </div>
                            <div class="product-guide-content">
                              <div class="chest mb-25">
                                <h3>Chest</h3>
                                <p>Measure under your arms around the fullest part of your chest.</p>
                              </div>
                              <div class="arm mb-25">
                                <h3>Arm Length</h3>
                                <p>Bend your elbow 90 degrees and place your hand on your hip. Hold the tape at the center back of your neck. Measure across your shoulder to your elbow and down to your wrist. The total length is your arm length.</p>
                              </div>
                              <div class="neck mb-25">
                                <h3>Neck</h3>
                                <p>Measure around the middle of your neck (at the Adam’s apple), keeping tape a bit loose.</p>
                              </div>
                              <div class="waist">
                                <h3>Waist</h3>
                                <p>Measure around your natural waistline, keeping the tape a bit loose.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="sizeConversionbtn4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sizeConversionFour" aria-expanded="true">
                          Size Conversions
                        </button>
                      </h2>
                      <div id="sizeConversionFour" class="accordion-collapse collapse " aria-labelledby="sizeConversionbtn4" data-bs-parent="#accordionMeasurements4">
                        <div class="accordion-body">
                          <div class="product-size-table product-size-table-2">
                            <p>All conversions are approximate. Fits may vary by style or personal preference; sizes may vary by manufacturer.</p>
                            <table class="table text-center">
                              <thead>
                              <tr>
                                <th>Size (US)</th>
                                <th>Numeric Size (US)</th>
                                <th>UK</th>
                                <th>EU</th>
                                <th>Japan </th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                <td>X</td>
                                <td>34</td>
                                <td>34</td>
                                <td>44</td>
                                <td>X</td>
                              </tr>
                              <tr>
                                <td>S</td>
                                <td>36</td>
                                <td>36</td>
                                <td>46</td>
                                <td>S</td>
                              </tr>
                              <tr>
                                <td>M</td>
                                <td>38</td>
                                <td>38</td>
                                <td>48</td>
                                <td>M</td>
                              </tr>
                              <tr>
                                <td>L</td>
                                <td>40</td>
                                <td>40</td>
                                <td>50</td>
                                <td>L</td>
                              </tr>
                              <tr>
                                <td>XL</td>
                                <td>42</td>
                                <td>42</td>
                                <td>52</td>
                                <td>XL</td>
                              </tr>
                              <tr>
                                <td>XXL</td>
                                <td>44</td>
                                <td>44</td>
                                <td>54</td>
                                <td>XXL</td>
                              </tr>
                              <tr>
                                <td>XXXL</td>
                                <td>46</td>
                                <td>46</td>
                                <td>56</td>
                                <td>XXXL</td>
                              </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- product details size tab for sports -->
                <div class="tab-pane fade" id="sports" role="tabpanel" aria-labelledby="sports-tab">
                  <div class="accordion" id="accordionMeasurements5">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="measurementsbtn5">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#measurementsFive" aria-expanded="true" >
                          Measurements
                        </button>
                      </h2>
                      <div id="measurementsFive" class="accordion-collapse collapse show" aria-labelledby="measurementsbtn5" data-bs-parent="#accordionMeasurements5">
                        <div class="accordion-body">
                          <div class="product-measurements-content">
                            <div class="product-measurements-top d-flex align-items-center justify-content-between mb-20">
                              <h3 class="product-measurements-title">Size charts Outerwear</h3>
                              <div class="product-measurements-cm">
                                <ul class="nav nav-tabs" id="prooductCmTab5" role="tablist">
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="inch-tab-5" data-bs-toggle="tab" data-bs-target="#inch5" type="button" role="tab" aria-selected="true">inch</button>
                                  </li>
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="cm-tab-5" data-bs-toggle="tab" data-bs-target="#cm5" type="button" role="tab" aria-selected="true">cm</button>
                                  </li>
                                </ul>
                              </div>
                            </div>
                            <div class="tab-content" id="productCmContent5">
                              <div class="tab-pane fade show active" id="inch5" role="tabpanel" aria-labelledby="inch-tab-5">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                              <div class="tab-pane fade" id="cm5" role="tabpanel" aria-labelledby="cm-tab-5">
                                <div class="product-size-table">
                                  <table class="table text-center">
                                    <thead>
                                    <tr>
                                      <th>Size (US)</th>
                                      <th>Chest</th>
                                      <th>Neck</th>
                                      <th>Waist</th>
                                      <th>Arm Length</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                      <td>X</td>
                                      <td>32-34</td>
                                      <td>13-13.5 </td>
                                      <td>26-28</td>
                                      <td>31-32</td>
                                    </tr>
                                    <tr>
                                      <td>S</td>
                                      <td>35-37</td>
                                      <td>14-14.5</td>
                                      <td>29-31</td>
                                      <td>32-33</td>
                                    </tr>
                                    <tr>
                                      <td>M</td>
                                      <td>38-40</td>
                                      <td>15-15.5</td>
                                      <td>32-34</td>
                                      <td>33-34</td>
                                    </tr>
                                    <tr>
                                      <td>L</td>
                                      <td>41-43</td>
                                      <td>16-16.5</td>
                                      <td>35-37</td>
                                      <td>34-35</td>
                                    </tr>
                                    <tr>
                                      <td>XL</td>
                                      <td>44-46</td>
                                      <td>17-17.5</td>
                                      <td>38-40</td>
                                      <td>35-36</td>
                                    </tr>
                                    <tr>
                                      <td>XXL</td>
                                      <td>47-49</td>
                                      <td> 18-18.5</td>
                                      <td>41-43</td>
                                      <td>36-37</td>
                                    </tr>
                                    <tr>
                                      <td>XXXL</td>
                                      <td>50-52</td>
                                      <td>18-18.5</td>
                                      <td>44-45</td>
                                      <td>36-37</td>
                                    </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="guidebtn5">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#guideFive" aria-expanded="true" aria-controls="guideFive">
                          Measuring Guide
                        </button>
                      </h2>
                      <div id="guideFive" class="accordion-collapse collapse " aria-labelledby="guidebtn5" data-bs-parent="#accordionMeasurements5">
                        <div class="accordion-body">
                          <div class="product-guide d-md-flex align-items-center">
                            <div class="product-guide-thumb mr-30">
                              <img src="<c:url value='/Front-end/client/img/products/measurement-guide.jpg'/>" alt="">
                            </div>
                            <div class="product-guide-content">
                              <div class="chest mb-25">
                                <h3>Chest</h3>
                                <p>Measure under your arms around the fullest part of your chest.</p>
                              </div>
                              <div class="arm mb-25">
                                <h3>Arm Length</h3>
                                <p>Bend your elbow 90 degrees and place your hand on your hip. Hold the tape at the center back of your neck. Measure across your shoulder to your elbow and down to your wrist. The total length is your arm length.</p>
                              </div>
                              <div class="neck mb-25">
                                <h3>Neck</h3>
                                <p>Measure around the middle of your neck (at the Adam’s apple), keeping tape a bit loose.</p>
                              </div>
                              <div class="waist">
                                <h3>Waist</h3>
                                <p>Measure around your natural waistline, keeping the tape a bit loose.</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="sizeConversionbtn5">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sizeConversionFive" aria-expanded="true">
                          Size Conversions
                        </button>
                      </h2>
                      <div id="sizeConversionFive" class="accordion-collapse collapse " aria-labelledby="sizeConversionbtn5" data-bs-parent="#accordionMeasurements5">
                        <div class="accordion-body">
                          <div class="product-size-table product-size-table-2">
                            <p>All conversions are approximate. Fits may vary by style or personal preference; sizes may vary by manufacturer.</p>
                            <table class="table text-center">
                              <thead>
                              <tr>
                                <th>Size (US)</th>
                                <th>Numeric Size (US)</th>
                                <th>UK</th>
                                <th>EU</th>
                                <th>Japan </th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                <td>X</td>
                                <td>34</td>
                                <td>34</td>
                                <td>44</td>
                                <td>X</td>
                              </tr>
                              <tr>
                                <td>S</td>
                                <td>36</td>
                                <td>36</td>
                                <td>46</td>
                                <td>S</td>
                              </tr>
                              <tr>
                                <td>M</td>
                                <td>38</td>
                                <td>38</td>
                                <td>48</td>
                                <td>M</td>
                              </tr>
                              <tr>
                                <td>L</td>
                                <td>40</td>
                                <td>40</td>
                                <td>50</td>
                                <td>L</td>
                              </tr>
                              <tr>
                                <td>XL</td>
                                <td>42</td>
                                <td>42</td>
                                <td>52</td>
                                <td>XL</td>
                              </tr>
                              <tr>
                                <td>XXL</td>
                                <td>44</td>
                                <td>44</td>
                                <td>54</td>
                                <td>XXL</td>
                              </tr>
                              <tr>
                                <td>XXXL</td>
                                <td>46</td>
                                <td>46</td>
                                <td>56</td>
                                <td>XXXL</td>
                              </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="product__details-sizetab-bottom pt-35">
              <div class="attention mb-20">
                <p><span>Attention:</span> This guide provides general sizing information only, and fit can vary depending on style and brand. For more specific sizing information on the product, please refer to product description.</p>
              </div>
              <div class="note">
                <h3>Note :</h3>
                <ul>
                  <li>
                    All puik models are wearing size small in tops and dresses, and size 1, 3, or 5 in jeans depending on their body type.
                  </li>
                  <li>
                    Most kalles jeans & dresses have some stretch, please refer to product description for fabric details.
                  </li>
                  <li>
                    Most kalles bottoms have an inseam of 31-34” depending on the cut and style. Sizing may vary depending on cut and style.
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- product question modal end -->

  <!-- popup area start -->
  <div class="subscribe-popup d-none">
    <div class="subscribe-wrapper s-popup-padding h-100">
      <div class="pl-75 pr-75">
        <div class="row">
          <div class="col-xxl-6">
            <div class="subscribe-content">
              <div class="logo mb-65">
                <a href="index.html"><img src="<c:url value='/Front-end/client/img/logo/logo-black.png'/>" alt=""></a>
              </div>
              <h4 class="popup-title">Comming Soon</h4>
              <p class="popup-desc">We’ll be here soon with our new<br>
                awesome site, subscribe to be notified.</p>
              <div class="comming-countdown  pb-45">
                <div class="countdown-inner" data-countdown="" data-date="Mar 02 2022 20:20:22">
                  <ul>
                    <li><span data-days="">401</span> Day</li>
                    <li><span data-hours="">1</span> hrs</li>
                    <li><span data-minutes="">29</span> min</li>
                    <li><span data-seconds="">40</span> sec</li>
                  </ul>
                </div>
              </div>
              <div class="subscribe-form-2">
                <input type="email" placeholder="Enter your email...">
                <button class="p-btn border-0">Subscribe</button>
              </div>
              <div class="popup-social">
                <a href="#"><i class="fal fa-facebook"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="subscribe-thumb" data-background="<c:url value='/Front-end/client/img/popup/fashion/subscribe-bg.jpg'/>"></div>
  </div>
  <!-- popup area end -->

  <!-- subscribe area start -->
  <div class="subscribe-area pb-100 pt-95 black-bg">
    <div class="container">
      <div class="row">
        <div class="col-xxl-12">
          <div class="section-title text-center">
            <span class="p-subtitle p-subtitle-3">OUR NEWSLETTER</span>
            <h3 class="p-title pb-15 mb-0 white-text">join our newsletter</h3>
            <p class="p-desc p-desc-2 pb-15">Subscribe to the Puik Store mailing list to receive updates on new
              arrivals, special offers<br>
              and other discount information.</p>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-xxl-8 col-xl-8">
          <div class="subscribe-form  gray-form text-center">
            <form action="#">
              <input type="text" placeholder="Your email address...">
              <button type="submit" class="subscribe-btn subscribe-btn-3">Subscribe</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- subscribe area end -->

</main>
</body>
</html>
