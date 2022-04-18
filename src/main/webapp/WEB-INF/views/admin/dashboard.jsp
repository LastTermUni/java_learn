<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
</head>
<body>
<div class="page-body">
<%--    <div class="container-fluid">--%>
<%--        <div class="page-title">--%>
<%--            <div class="row">--%>
<%--                <div class="col-6">--%>
<%--                    <h3></h3>--%>
<%--                </div>--%>
<%--                <div class="col-6">--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row second-chart-list third-news-update">
            <div class="col-xl-4 col-lg-12 xl-50 morning-sec box-col-12">
                <div class="card o-hidden profile-greeting"
                     style="background-image: url(/Front-end/images/avatar/bg-white-tech-1.jpg)">
                    <div class="card-body">
                        <div class="media">
                            <div class="badge-groups w-100">
                                <div class="badge f-12"><i class="me-1" data-feather="clock">

                                </i><span id="txt"></span></div>
                                <div class="badge f-12"><i class="fa fa-spin fa-cog f-14"></i></div>
                            </div>
                        </div>
                        <div class="greeting-user text-center">
                            <div class="profile-vector"><img class="img-fluid" style="height: 100px; width: 100px" src="<c:url value='/Front-end/images/avatar/admin.png'/>" alt=""></div>
                            <h4 class="f-w-600">
                                <span class="right-circle"><i class="fa fa-check-circle f-14 middle"></i></span></h4>
                            <div class="left-icon"><i class="fa fa-bell"> </i></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-12 xl-50 calendar-sec box-col-6">
                <div class="card gradient-primary o-hidden">
                    <div class="card-body">
                        <div class="default-datepicker">
                            <div class="datepicker-here" data-language="en"></div>
                        </div><span class="default-dots-stay overview-dots full-width-dots"><span class="dots-group"><span class="dots dots1"></span><span class="dots dots2 dot-small"></span><span class="dots dots3 dot-small"></span><span class="dots dots4 dot-medium"></span><span class="dots dots5 dot-small"></span><span class="dots dots6 dot-small"></span><span class="dots dots7 dot-small-semi"></span><span class="dots dots8 dot-small-semi"></span><span class="dots dots9 dot-small">                </span></span></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
