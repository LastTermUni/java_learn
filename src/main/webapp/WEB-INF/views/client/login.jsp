<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<main>

    <!-- login area start -->
    <section class="login-area pt-20 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="basic-login">
                        <h3 class="text-center mb-60">Đăng nhập</h3>
                        <form action="#">
                            <label for="name">Email <span>*</span></label>
                            <input id="name" type="text" placeholder="Địa chỉ email ..." />
                            <label for="pass">Mật khẩu <span>*</span></label>
                            <input id="pass" type="password" placeholder="Mật khẩu ..." />
<%--                            <div class="login-action mb-20 fix">--%>
<%--                                    <span class="log-rem f-left">--%>
<%--                                       <input id="remember" type="checkbox" />--%>
<%--                                       <label for="remember">Remember me!</label>--%>
<%--                                    </span>--%>
<%--                                <span class="forgot-login f-right">--%>
<%--                                       <a href="#">Quên mật khẩu?</a>--%>
<%--                                    </span>--%>
<%--                            </div>--%>
                            <button class="s-btn s-btn-4 w-100">Đăng nhập</button>
                            <div class="or-divide"><span>hoặc</span></div>
                            <a href="register" class="s-btn s-btn-2 w-100">Đăng ký</a>
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
