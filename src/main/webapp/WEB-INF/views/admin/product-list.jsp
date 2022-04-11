<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Danh sách sản phẩm</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Sản phẩm</li>
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
                    <div class="card-header">
                        <h5>Individual column searching (text inputs) </h5><span>The searching functionality provided by DataTables is useful for quickly search through the information in the table - however the search is global, and you may wish to present controls that search on specific columns.</span>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive product-table">
                            <table class="display" id="basic-1">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên</th>
                                    <th>Ảnh</th>
                                    <th>Thương hiệu</th>
                                    <th>Giá</th>
                                    <th>Danh mục</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="stt" value="0"/>
                                <c:forEach var="product" items="${productList}">
                                    <tr>
                                        <c:set var="stt" value="${stt + 1}"/>
                                        <td>${stt}</td>
                                        <td>${product.tensp}</td>
                                        <td><a href="product-detail"><img src="<c:url value='/Front-end/images/product/${product.hinh}'/>" style = "width: 64px; height: 64px" alt=""></a></td>
<%--                                        <td>--%>
<%--                                            <h6> Red Lipstick </h6><span>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</span>--%>
<%--                                        </td>--%>
                                        <td>${product.brand.tenthuonghieu}</td>
                                        <td>${product.gia}</td>
                                        <td class="font-success">${product.category.tenloai}</td>
<%--                                        <td>2011/04/25</td>--%>
                                        <td>
                                            <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                            <a href="<c:url value='./product-edit/${product.id}'/>" class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</a>
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
</body>
</html>
