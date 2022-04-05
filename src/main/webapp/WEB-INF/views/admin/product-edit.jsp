<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Việt Tiến
  Date: 29/3/2022
  Time: 20:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">
<head>
    <title>Chỉnh sửa sản phẩm</title>
</head>
<body>
<!-- Page Sidebar Ends-->
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Chỉnh sửa sản phẩm</h3>
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
                        <h5>Chỉnh sửa sản phẩm</h5>
                    </div>
                    <div class="card-body add-post">
                        <form class="row needs-validation" novalidate="" th:action="@{/admin/edit}" method="post" th:object="${product}">
                            <input id="hinh" name="hinh" style="display: none" value="${product.hinh}">
                            <input id="id" name="id" style="display: none" value="${product.id}">
                            <input id="status" name="status" style="display: none" value="${product.status}">
                            <input id="slug" name="slug" style="display: none" value="${product.slug}">
                            <input id="categoryID" name="categoryID" style="display: none" value="${product.category}">

                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="tensp">Tên sản phẩm:</label>
                                    <input class="form-control" id="tensp" name="tensp" type="text" placeholder="Tên sản phẩm" value="${product.tensp}" required="" >

                                </div>
                                <div class="mb-2">
                                    <label for="category">Loại SP:</label>
                                    <select id="category" class="form-control">
                                        <c:set var="categoryid" value="${product.category}"/>
                                        <c:forEach var="cate" items="${categories}">
                                            <c:choose>
                                                <c:when test="${cate.key == categoryid}">
                                                    <option value="${cate.key}" selected>${cate.value}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${cate.key}">${cate.value}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
<%--                                    <form:select path="category" id="category">--%>
<%--                                        <form:option value="" label="-- Chọn thương hiệu --"/>--%>
<%--                                        <form:options items="${categories}"/>--%>
<%--                                    </form:select>--%>
                                </div>
                                <div class="mb-3">
                                    <label for="brand">brand SP:</label>
                                    <input class="form-control" id="brand" name="brand" value="${product.brand}" type="text" placeholder="Loại sp" required="">

                                </div>
                                <div class="mb-3">
                                    <label for="gia">gia SP:</label>
                                    <input class="form-control" id="gia" name="gia" type="number" value="${product.gia}" placeholder="Loại sp" required="">

                                </div>
                                <%--                                <div class="mb-3">--%>
                                <%--                                    <label>Loại:</label>--%>
                                <%--                                    <div class="m-checkbox-inline">--%>
                                <%--                                        <label for="edo-ani">--%>
                                <%--                                            <input class="radio_animated" id="edo-ani" type="radio" name="rdo-ani" checked="" value="1">Máy ảnh--%>
                                <%--                                        </label>--%>
                                <%--&lt;%&ndash;                                        <label for="edo-ani1">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                            <input class="radio_animated" id="edo-ani1" type="radio" name="rdo-ani">Chân máy&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                        </label>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                        <label for="edo-ani2">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                            <input class="radio_animated" id="edo-ani2" type="radio" name="rdo-ani" checked="">Đèn flash&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                        </label>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                        <label for="edo-ani3">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                            <input class="radio_animated" id="edo-ani3" type="radio" name="rdo-ani">Pin&ndash;%&gt;--%>
                                <%--&lt;%&ndash;                                        </label>&ndash;%&gt;--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
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
                                            <textarea id="mota" name="mota"  name="text-box" cols="10" rows="2">${product.mota}</textarea>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </form>
                        <form  id="singleFileUploads" action="./upload" enctype="multipart/form-data" method="post">
                            <div class="email-wrapper">
                                <div class="theme-form">
                                    <div class="mb-3">
                                        <label>ảnh:</label>
                                        <input type="file" name="image" id="image">
                                    </div>
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
        getCategory();

        $('body').on('click', '#add', function (){
            var names = $("#tensp").val();
            var gia = $("#gia").val();
            var cate = $("#category").val();
            var discount = $("#discount").val();
            var mota = $("#mota").val();
            var slug = removeAccents(names);
            var hinh = slug+ ".jpg";
            // $("#name").val(getname);
            // var image = $("#image").val();
            // upload(image, getname);
            // document.getElementById("singleFileUploads").submit();
            // save();

            upload(hinh);
        });
    });

    function save(){
        var names = $("#tensp").val();
        var slug = removeAccents(names);
        var hinh = slug+ ".jpg";
        var formData = {
            tensp : names,
            mota : $("#mota").val(),
            hinh : hinh,
            gia : $("#gia").val(),
            category : $("#category").val(),
            discount : $("#discount").val(),
            slug : slug,
            status : 1
        }

        $.ajax({
            url:'./product',
            type:'POST',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify(formData),
            success:function (res){
                // upload(hinh);
                window.location.href = "admin/product-list";
            }

        })
    }

    async function upload(name){
        var form = $('form')[1];
        let formdata = new FormData(form);
        formdata.append('file', $('input[type=file]')[0].files[0], name);
        let respone = await fetch('./upload',{
            method:'POST',
            body: formdata
        });
        save();
        // $.ajax({
        //     url:'./upload',
        //     type:'POST',
        //     contentType: 'application/json',
        //     dataType: 'json',
        //     enctype: 'multipart/form-data',
        //     data: {
        //         file : image,
        //         name : value
        //     },
        //     success: function (res){
        //     }
        //
        // })

    }

    async function getCategory()
    {
        $.get("./cateLists", function (data){
            $.each(data, function (i, category){
                $("#category").append(
                    " <option value='" + category.id + "'>" + category.tenloai + "</option>"
                );
            });
        });
    }

    function removeAccents(str) {
        var AccentsMap = [
            "aàảãáạăằẳẵắặâầẩẫấậ",
            "AÀẢÃÁẠĂẰẲẴẮẶÂẦẨẪẤẬ",
            "dđ", "DĐ",
            "eèẻẽéẹêềểễếệ",
            "EÈẺẼÉẸÊỀỂỄẾỆ",
            "iìỉĩíị",
            "IÌỈĨÍỊ",
            "oòỏõóọôồổỗốộơờởỡớợ",
            "OÒỎÕÓỌÔỒỔỖỐỘƠỜỞỠỚỢ",
            "uùủũúụưừửữứự",
            "UÙỦŨÚỤƯỪỬỮỨỰ",
            "yỳỷỹýỵ",
            "YỲỶỸÝỴ"
        ];
        for (var i=0; i<AccentsMap.length; i++) {
            var re = new RegExp('[' + AccentsMap[i].substr(1) + ']', 'g');
            var char = AccentsMap[i][0];
            str = str.replace(re, char);
        }
        str = str.replace(" ", "");
        return str;
    }
</script>
</body>
</html>
