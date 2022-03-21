<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<div class="container-fluid p-0">
    <div class="row m-0">
        <div class="col-12 p-0">
            <div class="login-card">
                <div>
                   <div class="login-main">
                        <form class="theme-form">
                            <h4>Đăng nhập</h4>
                            <p>Hãy nhập email và mật khẩu</p>
                            <div class="form-group">
                                <label class="col-form-label">Địa chỉ email</label>
                                <input class="form-control" type="email" required="" placeholder="Email ...">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Mật khẩu</label>
                                <div class="form-input position-relative">
                                    <input class="form-control" type="password" name="login[password]" required="" placeholder="*********">
                                    <div class="show-hide"><span class="show"></span></div>
                                </div>
                            </div>
                            <div class="form-group mb-0">
                                <a class="link" href="forget-password.html">Quên mật khẩu?</a>
                                <div class="text-end mt-3">
                                    <button class="btn btn-primary btn-block w-100" type="submit">Đăng nhập</button>
                                </div>
                            </div>
                            <h6 class="text-muted mt-4 or">Hoặc</h6>
                            <div class="social mt-4">
                                <div class="btn-showcase">
                                   <a class="btn btn-light" href="https://www.facebook.com/" target="_blank"><i class="txt-fb" data-feather="facebook"></i>facebook</a></div>
                            </div>
                            <p class="mt-4 mb-0 text-center">Don't have account?<a class="ms-2" href="admin/register">Tạo tài khoản</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
