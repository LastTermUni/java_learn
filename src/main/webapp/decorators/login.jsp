<%--
  Created by IntelliJ IDEA.
  User: MSI-PC
  Date: 16/04/2022
  Time: 23:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Cuba admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Cuba admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="<c:url value='/Front-end/images/logo/Camera-white.ico'/>" type="image/x-icon">
    <link rel="shortcut icon" href="<c:url value='/Front-end/images/logo/Camera-white.ico'/>" type="image/x-icon">
    <title>Đăng nhập</title>
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/font-awesome.css'/>'/>">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/icofont.css'/>'/>">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/themify.css'/>'/>">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/flag-icon.css'/>'/>">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/feather-icon.css'/>'/>">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/scrollbar.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/animate.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/chartist.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/owlcarousel.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/prism.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/date-picker.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/vendors/bootstrap.css'/>">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/style.css'/>">
    <link id="color" rel="stylesheet" href="<c:url value='/Front-end/admin/assets/css/color-1.css'/>" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/responsive.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/admin/assets/css/toggle.css'/>">

    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/toast/css/toastr.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Front-end/toast/css/toastr.min.css'/>">
</head>
<body>
<!-- tap on top starts-->
<div class="tap-top"><i data-feather="chevrons-up"></i></div>
<!-- tap on tap ends-->
<!-- page-wrapper Start-->
<div class="page-wrapper compact-wrapper" id="pageWrapper">
    <!-- Page Body Start-->
    <div class="page-body-wrapper">
        <dec:body/>
        <footer class="footer" style="margin: unset">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 footer-copyright text-center">
                        <p class="mb-0">© GOD Team </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>

<!-- latest jquery-->
<script src="<c:url value='/Front-end/admin/assets/js/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='/Front-end/toast/js/toastr.js'/>"></script>
<!-- Bootstrap js-->
<script src="<c:url value='/Front-end/admin/assets/js/bootstrap/bootstrap.bundle.min.js'/>"></script>
<!-- feather icon js-->
<script src="<c:url value='/Front-end/admin/assets/js/icons/feather-icon/feather.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/icons/feather-icon/feather-icon.js'/>"></script>
<!-- scrollbar js-->
<script src="<c:url value='/Front-end/admin/assets/js/scrollbar/simplebar.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/scrollbar/custom.js'/>"></script>
<!-- Sidebar jquery-->
<script src="<c:url value='/Front-end/admin/assets/js/config.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/notify/bootstrap-notify.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/dashboard/default.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/notify/index.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/product-list-custom.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/email-app.js'/>"></script>
<!-- Plugins JS Ends-->
<!-- Theme js-->
<script src="<c:url value='/Front-end/admin/assets/js/script.js'/>"></script>
<!-- login js-->
<!-- Plugin used-->
</body>
</html>
