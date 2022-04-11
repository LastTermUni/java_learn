<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách thương hiệu</title>

</head>
<body>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Danh sách thương hiệu</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Thương hiệu</li>
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
                            <table class="display" id="basic-1">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Danh mục</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="stt" value="0"/>
                                <c:forEach var="brand" items="${brandList}">
                                    <tr>
                                        <td>
                                            <c:set var="stt" value="${stt + 1}"/>
                                                ${stt}
                                        </td>
                                        <td>
                                            <h6>${brand.tenthuonghieu}</h6>
                                        </td>
                                        <td>
                                                <%--                                            <button class="btn btn-danger btn-xs" type="button"--%>
                                                <%--                                                    data-original-title="btn btn-danger btn-xs" title="">Delete--%>
                                                <%--                                            </button>--%>
                                            <label class="switch">
                                                <input type="checkbox">
                                                <span class="slider round"></span>
                                            </label>
                                            <c:set var="urlupdate" value="./brand-add?id_brand=${brand.id}">
                                            </c:set>
                                            <a href="<c:url value="${urlupdate}"/>" class="btn btn-success btn-xs"
                                               type="button"
                                               data-original-title="btn btn-danger btn-xs" title="">Edit
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
</body>
</html>
