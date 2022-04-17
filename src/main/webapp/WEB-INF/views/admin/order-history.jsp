<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Lịch sử giao dịch</title>
</head>
<body>
<!-- Page Sidebar Ends-->
<div class="page-body">

    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Đơn mới</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-xxl-4 col-md-6">
                                <div class="prooduct-details-box">
                                    <div class="media">
                                        <img class="align-self-center img-fluid img-60"
                                             src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-6.png'/>" alt="#">
                                        <div class="media-body ms-3">
                                            <div class="product-name">
                                                <h6><a href="#">Fancy Women's Cotton</a></h6>
                                            </div>
                                             <div class="price d-flex">
                                                <div class="text-muted me-2">Tổng giá</div>:  VNĐ
                                            </div>
                                            <div class="avaiabilty">
                                                <div class="text-success">In stock</div>
                                            </div><a class="btn btn-primary btn-xs" href="#">Xác nhận giao</a><i class="close" data-feather="x"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5>Đã/đang giao</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-xxl-4 col-md-6">
                                <div class="prooduct-details-box">
                                    <div class="media">
                                        <img class="align-self-center img-fluid img-60"
                                             src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-6.png'/>" alt="#">
                                        <div class="media-body ms-3">
                                            <div class="product-name">
                                                <h6><a href="#">Fancy Women's Cotton</a></h6>
                                            </div>
                                            <div class="price d-flex">
                                                <div class="text-muted me-2">Tổng giá</div>:  VNĐ
                                            </div>
                                            <div class="avaiabilty">
                                                <div class="text-success">In stock</div>
                                            </div><a class="btn btn-success btn-xs" href="#">Đã giao</a><i class="close" data-feather="x"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
<%--                <div class="card">--%>
<%--                    <div class="card-header">--%>
<%--                        <h5>Cancelled Orders</h5>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-6.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-5.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-4.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-3.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-2.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-1.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-1.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-6.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-xxl-4 col-md-6">--%>
<%--                                <div class="prooduct-details-box">--%>
<%--                                    <div class="media"><img class="align-self-center img-fluid img-60" src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-5.png'/>" alt="#">--%>
<%--                                        <div class="media-body ms-3">--%>
<%--                                            <div class="product-name">--%>
<%--                                                <h6><a href="#">Fancy Women's Cotton</a></h6>--%>
<%--                                            </div>--%>
<%--                                            <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>--%>
<%--                                            <div class="price d-flex">--%>
<%--                                                <div class="text-muted me-2">Price</div>: 210$--%>
<%--                                            </div>--%>
<%--                                            <div class="avaiabilty">--%>
<%--                                                <div class="text-success">In stock</div>--%>
<%--                                            </div><a class="btn btn-danger btn-xs" href="#">Cancelled</a><i class="close" data-feather="x"></i>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</body>
</html>
