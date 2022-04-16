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
                                    <select id="brand" class="form-control">
                                        <c:set var="brandid" value="${product.brand}"/>
                                        <c:forEach var="brand" items="${brands}">
                                            <c:choose>
                                                <c:when test="${brand.key == brandid}">
                                                    <option value="${brand.key}" selected>${brand.value}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${brand.key}">${brand.value}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>

                                </div>
                                <div class="mb-3">
                                    <label for="gia">Giá SP:</label>
                                    <input class="form-control" id="gia" name="gia" type="number" value="${product.gia}" placeholder="Loại sp" required="">
                                </div>

                                <div class="mb-3">
                                    <label for="soluong">Số lượng:</label>
                                    <input class="form-control" id="soluong" name="soluong" value="${product.soluong}" type="number" placeholder="Số lượng" required="">

                                </div>


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
    var urlLocation = window.location.protocol +"//"+window.location.host;

    $(document).ready(function () {

        //id product
        let result = $("#id").val();
        if (result != 0)
            document.getElementById("add").innerHTML = "Cập nhật";

        $('body').on('click', '#add', function () {
            required();
            var names = $("#tensp").val();
            var slug = removeAccents(names);
            var hinh = slug+ ".jpg";
            //check id product
            if (result != 0){
                //edit
                if (window.File && window.FileReader && window.FileList && window.Blob)
                {
                    const fileImage = $('#image')[0].files[0];
                    if(fileImage == null )
                    {
                        const image = $("#hinh").val();
                        update(image);
                    }
                    else {
                        editUpload(hinh);
                    }
                }
            }else {
                //add
                upload(hinh)
            }

        });
    });

    //add sp
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
            brand : $("#brand").val(),
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
                // window.location.href = "./product-list";
                redirect();
            }

        })
    }

    //edit
    function update(hinh){
        var names = $("#tensp").val();
        var slug = removeAccents(names);
        var id = $("#id").val();
        var Data = {
            id: id,
            tensp : names,
            mota : $("#mota").val(),
            hinh : hinh,
            gia : $("#gia").val(),
            soluong : $("#soluong").val(),
            category : $("#category").val(),
            brand : $("#brand").val(),
            slug : slug,
            status : $("#status").val()
        }

        $.ajax({
            url:'./product',
            type:'POST',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify(Data),
            success:function (data){
                // upload(hinh);
                if(data != null)
                {
                    redirect();
                }
            }

        })
    }

    function redirect(){
        let url = urlLocation+"/admin/product-list";
        let urls = new URL(url);
        window.location.href = urls;
    }

    function required(){
        var names = $("#tensp").val();
        var desc = $("#mota").val();
        var gia = $("#gia").val();
        var soluong = $("#soluong").val()
        if(names == "" || desc == "" || gia == "" || soluong == "")
            alert("Vui lòng nhập đủ thông tin");
    }

    //upload image with add
    async function upload(name){
        var form = $('form')[1];
        let formdata = new FormData(form);
        if($('input[type=file]')[0].files[0] == null)
        {
            alert("Vui lòng chọn ảnh");
        }
        else {
            formdata.append('file', $('input[type=file]')[0].files[0], name);
            let respone = await fetch('./upload', {
                method: 'POST',
                body: formdata
            });
            save();
        }

    }

    //upload image with edit
    async function editUpload(name){
        var form = $('form')[1];
        let formdata = new FormData(form);
        formdata.append('file', $('#image')[0].files[0], name);
        let respone = await fetch('./upload', {
            method: 'POST',
            body: formdata
        });

        update(name);
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
