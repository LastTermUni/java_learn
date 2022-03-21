<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Thêm sản phẩm</title>
</head>
<body>
<!-- Page Sidebar Ends-->
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Thêm sản phẩm</h3>
                </div>
                <div class="col-6">
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Thêm sản phầm</h5>
                    </div>
                    <div class="card-body add-post">
                        <form class="row needs-validation" novalidate="">
                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="validationCustom01">Tên sản phẩm:</label>
                                    <input class="form-control" id="validationCustom01" type="text" placeholder="Tên sản phẩm" required="">

                                </div>
                                <div class="mb-3">
                                    <label>Loại:</label>
                                    <div class="m-checkbox-inline">
                                        <label for="edo-ani">
                                            <input class="radio_animated" id="edo-ani" type="radio" name="rdo-ani" checked="">Máy ảnh
                                        </label>
                                        <label for="edo-ani1">
                                            <input class="radio_animated" id="edo-ani1" type="radio" name="rdo-ani">Chân máy
                                        </label>
                                        <label for="edo-ani2">
                                            <input class="radio_animated" id="edo-ani2" type="radio" name="rdo-ani" checked="">Đèn flash
                                        </label>
                                        <label for="edo-ani3">
                                            <input class="radio_animated" id="edo-ani3" type="radio" name="rdo-ani">Pin
                                        </label>
                                    </div>
                                </div>
<%--                                <div class="mb-3">--%>
<%--                                    <div class="col-form-label">Category:--%>
<%--                                        <select class="js-example-placeholder-multiple col-sm-12" multiple="multiple">--%>
<%--                                            <option value="AL">Lifestyle</option>--%>
<%--                                            <option value="WY">Travel</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="email-wrapper">
                                    <div class="theme-form">
                                        <div class="mb-3">
                                            <label>Mô tả:</label>
                                            <textarea id="text-box" name="text-box" cols="10" rows="2"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <form class="dropzone" id="singleFileUpload" action="/upload.php">
                            <div class="m-0 dz-message needsclick"><i class="icon-cloud-up"></i>
                                <h6 class="mb-0">Kéo file ảnh hoặc nhấn để chọn ảnh</h6>
                            </div>
                        </form>
                        <div class="btn-showcase text-end">
                            <button class="btn btn-primary" type="submit">Thêm</button>
                            <input class="btn btn-light" type="reset" value="Discard">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>
<script src="<c:url value='/Front-end/admin/assets/js/dropzone/dropzone.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/dropzone/dropzone-script.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/form-validation-custom.js'/>"></script>
</body>
</html>
