<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h3>Thêm danh mục</h3>
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
                        <h5>Thêm danh mục</h5>
                    </div>
                    <div class="card-body add-post">
                        <form class="row needs-validation" novalidate="">
                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="tenloai">Tên danh mục:</label>
                                    <input class="form-control" id="tenloai" name="tenloai" type="text"
                                           placeholder="Tên sản phẩm" required="">

                                </div>
                            </div>
                        </form>
                        <div class="btn-showcase text-end">
                            <button class="btn btn-primary" id="add" type="submit">Thêm</button>
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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

    $(document).ready(function () {
        $('body').on('click', '#add', function () {
            save();
        });
    });
    function save() {
        var tenLoai = $("#tenloai").val();
        var formData = {
            tenloai: tenLoai,
            hinh: tenLoai + ".jpg"
        }
        $.ajax({
            url: './category',
            type: 'POST',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify(formData),
            success: function (res) {
                // upload(hinh);
                window.location.href = "./categories-list";
            }
        })
    }


</script>
</body>
</html>