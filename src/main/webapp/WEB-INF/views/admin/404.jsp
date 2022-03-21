<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Error-404</title>
</head>
<body>
<!-- tap on top starts-->
<div class="tap-top"><i data-feather="chevrons-up"></i></div>
<!-- tap on tap ends-->
<!-- page-wrapper Start-->
<div class="page-wrapper compact-wrapper" id="pageWrapper">
    <!-- error-404 start-->
    <div class="error-wrapper">
        <div class="container"><img class="img-100" src="<c:url value='/Front-end/admin/assets/images/other-images/sad.png'/>" alt="">
            <div class="error-heading">
                <h2 class="headline font-danger">404</h2>
            </div>
            <div class="col-md-8 offset-md-2">
                <p class="sub-content">Đã có lỗi xảy ra tại trang này, vui lòng chuyển đến trang khác!!</p>
            </div>
            <div><a class="btn btn-danger-gradien btn-lg" href="admin/dashboard">Về trang chính</a></div>
        </div>
    </div>
    <!-- error-404 end      -->
</div>
</body>
</html>
