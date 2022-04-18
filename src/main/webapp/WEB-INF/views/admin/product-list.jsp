<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
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
                    <h3>Danh sách sản phẩm</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a><i data-feather="home"></i></a></li>
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
                    <div class="card-body">
                        <div class="table-responsive product-table">
                            <table class="display" style="width: 100%;" id="basic-10">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên</th>
                                    <th>Ảnh</th>
                                    <th>Thương hiệu</th>
                                    <th>Giá</th>
                                    <th>Danh mục</th>
                                    <th>Trạng thái</th>
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
                                        <td><a href="/product-detail"><img
                                                src="<c:url value='/Front-end/images/product/${product.hinh}'/>"
                                                style="width: 64px; height: 64px" alt=""></a></td>
                                            <%--                                        <td>--%>
                                            <%--                                            <h6> Red Lipstick </h6><span>Interchargebla lens Digital Camera with APS-C-X Trans CMOS Sens</span>--%>
                                            <%--                                        </td>--%>
                                        <td>${product.brand.tenthuonghieu}</td>

                                        <td><fmt:formatNumber
                                                type="number"
                                                maxFractionDigits="3" value="${product.gia}"/></td>
                                        <td class="font-success">${product.category.tenloai}</td>

                                            <%--                                        <td>2011/04/25</td>--%>

                                        <td>
                                            <label class="switch">
                                                <c:choose>
                                                    <c:when test="${product.status == 1}">
                                                        <input class="changeStatus" data-id="${product.id}"
                                                               type="checkbox" checked>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input class="changeStatus" data-id="${product.id}"
                                                               type="checkbox" unchecked>
                                                    </c:otherwise>

                                                </c:choose>
                                                    <%--                                                        <input class="changeStatus" data-id="@item.id" data-controller="Movie" type="checkbox" unchecked>--%>
                                                <span class="slider round"></span>
                                            </label>
                                        </td>
                                        <td>
                                            <a class = "deleteProduct" data-id = "${product.id}">
                                                <button class="btn btn-danger btn-xs" type="button"
                                                        data-original-title="btn btn-danger btn-xs" title=""
                                                        >Xóa
                                                </button>
                                            </a>
                                            <c:set var="urlupdate" value="./product-add?id=${product.id}"/>
                                            <a href="<c:url value='${urlupdate}'/>">
                                                <button class="btn btn-success btn-xs"
                                                        data-original-title="btn btn-danger btn-xs" title="">Chỉnh
                                                </button>
                                            </a>

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
<script>
    $(document).ready(function () {

        $('.changeStatus').click(function (e) {
            e.preventDefault();
            const id = $(this).data('id');
            const _this = $(this);
            $.ajax({
                url: "./changeStatusProduct",
                data: {id: id},
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res === 1) {
                        _this.prop('checked', true);
                        toastr.success("Hiển thị sản phẩm thành công!!");
                    } else if (res === 0) {
                        _this.prop('checked', false);
                        toastr.info("Tắt hiển thị sản phẩm thành công!!");
                    }
                }
            });
        });

        $('body').on('click', '.deleteProduct', function(){
            const id = $(this).data('id');
            $.ajax({
                url: "./deleteProduct/",
                data: {id: id},
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res === 2) {
                        location.reload();
                    }
                }
            })
        });

    });

</script>

</body>

</html>
