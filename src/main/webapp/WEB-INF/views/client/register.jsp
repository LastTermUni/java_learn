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
                        <form th:action="@{/register}" method="post" th:object="customer">

                            <label for="Username">Tên người dùng <span>*</span></label>
                            <input id="Username" name="Username" type="text" placeholder="Tên người dùng ..." data-opacity="0.7" required=""/>

                            <label for="Email">Email <span>*</span></label>
                            <input id="Email" name="Email" type="text" placeholder="Địa chỉ email ..." required=""/>

                            <label for="Password">Mật khẩu <span>*</span></label>
                            <input id="Password" name="Password" type="password" placeholder="Mật khẩu ..."  required=""/>

                            <label for="TenKH">Tên <span>*</span></label>
                            <input id="TenKH" name="TenKH" type="text" placeholder="Tên ..." required=""/>

                            <label for="SDT">SDT <span>*</span></label>
                            <input id="SDT" name="SDT" type="text" placeholder="SDT ..." required=""/>

                            <div class="mt-10"></div>
                            <button type="submit" class="s-btn s-btn-4 w-100">Đăng ký</button>
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
