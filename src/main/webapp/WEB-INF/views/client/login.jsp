<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<main>

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area-2 pt-240 pb-245 include-bg" data-background="<c:url value='/Front-end/client/img/page-title/page-title-1.jpg'/>">
        <div class="container">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="breadcrumb-wrapper-2 text-center">
                        <h3>login</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">login</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- login area start -->
    <section class="login-area pt-100 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="basic-login">
                        <h3 class="text-center mb-60">Login From Here</h3>
                        <form action="#">
                            <label for="name">Email Address <span>**</span></label>
                            <input id="name" type="text" placeholder="Email address..." />
                            <label for="pass">Password <span>**</span></label>
                            <input id="pass" type="password" placeholder="Enter password..." />
                            <div class="login-action mb-20 fix">
                                    <span class="log-rem f-left">
                                       <input id="remember" type="checkbox" />
                                       <label for="remember">Remember me!</label>
                                    </span>
                                <span class="forgot-login f-right">
                                       <a href="#">Lost your password?</a>
                                    </span>
                            </div>
                            <button class="s-btn s-btn-4 w-100">Login Now</button>
                            <div class="or-divide"><span>or</span></div>
                            <a href="register.html" class="s-btn s-btn-2 w-100">Register Now</a>
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
