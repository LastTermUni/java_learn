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
    <link rel="icon" href="<c:url value='/Front-end/admin/assets/images/favicon.png'/>" type="image/x-icon">
    <link rel="shortcut icon" href="<c:url value='/Front-end/admin/assets/images/favicon.png'/>" type="image/x-icon">
    <title>Admin</title>
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
</head>
<body>
<!-- tap on top starts-->
<div class="tap-top"><i data-feather="chevrons-up"></i></div>
<!-- tap on tap ends-->
<!-- page-wrapper Start-->
<div class="page-wrapper compact-wrapper" id="pageWrapper">
    <!-- Page Header Start-->
    <div class="page-header">
        <div class="header-wrapper row m-0 justify-content-end">
            <div class="header-logo-wrapper col-auto p-0">
                <div class="logo-wrapper"><a href="dashboard"><img class="img-fluid" src="<c:url value='/Front-end/admin/assets/images/logo/logo.png'/>" alt=""></a></div>
                <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i></div>
            </div>
            <div class="nav-right col-8 pull-right right-header p-0">
                <ul class="nav-menus">
                    <li>
                        <div class="mode"><i class="fa fa-moon-o"></i></div>
                    </li>
                    <li class="maximize"><a class="text-dark" href="#" onclick="toggleFullScreen()"><i data-feather="maximize"></i></a></li>
                    <li class="profile-nav onhover-dropdown p-0 me-0">
                        <div class="media profile-media"><img class="b-r-10" src="<c:url value='/Front-end/admin/assets/images/dashboard/profile.jpg'/>" alt="">
                            <div class="media-body"><span>Emay Walter</span>
                                <p class="mb-0 font-roboto">Admin <i class="middle fa fa-angle-down"></i></p>
                            </div>
                        </div>
                        <ul class="profile-dropdown onhover-show-div">
                            <li><a href="#"><i data-feather="user"></i><span>Account </span></a></li>
                            <li><a href="login"><i data-feather="log-in"> </i><span>Đăng nhập</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <script class="result-template" type="text/x-handlebars-template">
                <div class="ProfileCard u-cf">
                    <div class="ProfileCard-avatar"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay m-0"><path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path><polygon points="12 15 17 21 7 21 12 15"></polygon></svg></div>
                    <div class="ProfileCard-details">
                        <div class="ProfileCard-realName">{{name}}</div>
                    </div>
                </div>
            </script>
            <script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Đã có sự cố xảy ra</div></script>
        </div>
    </div>
    <!-- Page Header Ends                              -->
    <!-- Page Body Start-->
    <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <div class="sidebar-wrapper">
            <div>
                <div class="logo-wrapper"><a href="./dashboard"><img class="img-fluid for-light" src="<c:url value='/Front-end/admin/assets/images/logo/logo.png'/>" alt=""><img class="img-fluid for-dark" src="<c:url value='/Front-end/admin/assets/images/logo/logo_dark.png'/>" alt=""></a>
                    <div class="back-btn"><i class="fa fa-angle-left"></i></div>
                    <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
                </div>
                <div class="logo-icon-wrapper"><a href="index.html"><img class="img-fluid" src="<c:url value='/Front-end/admin/assets/images/logo/logo-icon.png'/>" alt=""></a></div>
                <nav class="sidebar-main">
                    <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
                    <div id="sidebar-menu">
                        <ul class="sidebar-links" id="simple-bar">
                            <li class="back-btn"><a href="index.html"><img class="img-fluid" src="<c:url value='/Front-end/admin/assets/images/logo/logo-icon.png'/>" alt=""></a>
                                <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2" aria-hidden="true"></i></div>
                            </li>
                            <li class="sidebar-main-title">
                                <div>
                                    <h6 class="lan-8">Camera Store</h6>
                                </div>
                            </li>
                            <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i data-feather="shopping-bag"></i><span>Ecommerce</span></a>
                                <ul class="sidebar-submenu">
                                    <li><a href="./product-list">Danh sách sản phẩm</a></li>
                                    <li><a href="./product-add">Thêm sản phẩm</a></li>
                                    <li><a href="./order-history">Lịch sử</a></li>
                                </ul>
                            </li>
                            <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i data-feather="menu"></i><span>Danh mục sản phẩm</span></a>
                                <ul class="sidebar-submenu">
                                    <li><a href="./categories-list">Danh sách</a></li>
                                    <li><a href="./category-add">Thêm danh mục</a></li>
                                </ul>
                            </li>
                            <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i data-feather="users"></i><span>Users</span></a>
                                <ul class="sidebar-submenu">
                                    <li><a href="user-profile.html">Users Profile</a></li>
                                    <li><a href="edit-profile.html">Users Edit</a></li>
                                    <li><a href="user-cards.html">Users Cards</a></li>
                                </ul>
                            </li>

                            </ul>
                    </div>
                    <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
                </nav>
            </div>
        </div>

<dec:body/>

<%--footer--%>
        <!-- footer start-->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 footer-copyright text-center">
                        <p class="mb-0">© GOD Team  </p>
                    </div>
                </div>
            </div>
        </footer>
        <script>
            var map;
            function initMap() {
                map = new google.maps.Map(
                    document.getElementById('map'),
                    {center: new google.maps.LatLng(-33.91700, 151.233), zoom: 18});

                var iconBase =
                    '<c:url value='/Front-end/admin/assets/images/dashboard-2/'/>';

                var icons = {
                    userbig: {
                        icon: iconBase + '1.png'
                    },
                    library: {
                        icon: iconBase + '3.png'
                    },
                    info: {
                        icon: iconBase + '2.png'
                    }
                };

                var features = [
                    {
                        position: new google.maps.LatLng(-33.91752, 151.23270),
                        type: 'info'
                    }, {
                        position: new google.maps.LatLng(-33.91700, 151.23280),
                        type: 'userbig'
                    },  {
                        position: new google.maps.LatLng(-33.91727341958453, 151.23348314155578),
                        type: 'library'
                    }
                ];

                // Create markers.
                for (var i = 0; i < features.length; i++) {
                    var marker = new google.maps.Marker({
                        position: features[i].position,
                        icon: icons[features[i].type].icon,
                        map: map
                    });
                };
            }
        </script>
        <script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDGCQvcXUsXwCdYArPXo72dLZ31WS3WQRw&amp;callback=initMap"></script>
    </div>
</div>

<!-- latest jquery-->
<script src="<c:url value='/Front-end/admin/assets/js/jquery-3.5.1.min.js'/>"></script>
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
<!-- Plugins JS start-->
<script src="<c:url value='/Front-end/admin/assets/js/sidebar-menu.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/chart/chartist/chartist.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/chart/chartist/chartist-plugin-tooltip.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/chart/knob/knob.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/chart/knob/knob-chart.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/chart/apex-chart/apex-chart.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/chart/apex-chart/stock-prices.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/notify/bootstrap-notify.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/dashboard/default.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/notify/index.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/datepicker/date-picker/datepicker.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/datepicker/date-picker/datepicker.en.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/datepicker/date-picker/datepicker.custom.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/typeahead/handlebars.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/typeahead/typeahead.bundle.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/typeahead/typeahead.custom.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/typeahead-search/handlebars.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/typeahead-search/typeahead-custom.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/tooltip-init.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/datatable/datatables/jquery.dataTables.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/datatable/datatables/jquery.dataTables.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/rating/jquery.barrating.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/rating/rating-script.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/owlcarousel/owl.carousel.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/ecommerce.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/product-list-custom.js'/>"></script><script src="<c:url value='/Front-end/admin/assets/js/editor/ckeditor/ckeditor.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/editor/ckeditor/adapters/jquery.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/select2/select2.full.min.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/select2/select2-custom.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/email-app.js'/>"></script>
<!-- Plugins JS Ends-->
<!-- Theme js-->
<script src="<c:url value='/Front-end/admin/assets/js/script.js'/>"></script>
<script src="<c:url value='/Front-end/admin/assets/js/theme-customizer/customizer.js'/>"></script>
<!-- login js-->
<!-- Plugin used-->
</body>
</html>
