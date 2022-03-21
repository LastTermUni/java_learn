<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<main>

    <!-- login area start -->
    <section class="login-area pt-20 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="basic-login">
                        <h3 class="text-center mb-60">Đăng ký</h3>
                        <form action="#">
                            <label for="name">Tên người dùng <span>*</span></label>
                            <input id="name" type="text" placeholder="Tên người dùng ..." data-opacity="0.7"/>
                            <label for="email-id">Email <span>*</span></label>
                            <input id="email-id" type="text" placeholder="Địa chỉ email ..." />
                            <label for="pass">Mật khẫu <span>*</span></label>
                            <input id="pass" type="password" placeholder="Mật khẩu ..." />
                            <div class="mt-10"></div>
                            <button class="s-btn s-btn-4 w-100">Đăng ký</button>
                            <div class="or-divide"><span>hoặc</span></div>
                            <a href="login" class="s-btn s-btn-2 w-100">Đăng nhập</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- login area end -->

</main>
</body>
</html>
