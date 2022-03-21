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
                                    <th>Image</th>
                                    <th>Details</th>
                                    <th>Amount</th>
                                    <th>Stock</th>
                                    <th>Start date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="product-detail"><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-1.png'/>" alt=""></a></td>
                                    <td>
                                        <h6> Red Lipstick </h6><span>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</span>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-success">In Stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button href="product-edit" class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-2.png'/>" alt=""></td>
                                    <td>
                                        <h6> Pink Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-primary">Low Stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-3.png'/>" alt=""></td>
                                    <td>
                                        <h6> Gray Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-danger">out of stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-4.png'/>" alt=""></td>
                                    <td>
                                        <h6> Green Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-primary">Low Stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-5.png'/>" alt=""></td>
                                    <td>
                                        <h6> Black Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-success">In Stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-6.png'/>" alt=""></td>
                                    <td>
                                        <h6> White Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-primary">Low Stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-1.png'/>" alt=""></td>
                                    <td>
                                        <h6> light Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-danger">out of stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-2.png'/>" alt=""></td>
                                    <td>
                                        <h6> Gliter Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-danger">out of stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-3.png'/>" alt=""></td>
                                    <td>
                                        <h6> green Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-success">In Stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <button class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/Front-end/admin/assets/images/ecommerce/product-table-4.png'/>" alt=""></td>
                                    <td>
                                        <h6> Yellow Lipstick </h6>
                                        <p>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</p>
                                    </td>
                                    <td>$10</td>
                                    <td class="font-danger">out of stock</td>
                                    <td>2011/04/25</td>
                                    <td>
                                        <button class="btn btn-danger btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Delete</button>
                                        <a href="product-edit" class="btn btn-success btn-xs" type="button" data-original-title="btn btn-danger btn-xs" title="">Edit</a>
                                    </td>
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
    <!-- Container-fluid Ends-->
</body>
</html>
