<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%String sid=(String)session.getAttribute("sid");%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags --> 
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>City360 | Admin</title>
        <!-- base:css -->
        <link rel="stylesheet" href="../assets2/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../assets2/vendors/feather/feather.css">
        <link rel="stylesheet" href="../assets2/vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="../assets2/vendors/flag-icon-css/css/flag-icon.min.css"/>
        <link rel="stylesheet" href="../assets2/vendors/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets2/vendors/jquery-bar-rating/fontawesome-stars-o.css">
        <link rel="stylesheet" href="../assets2/vendors/jquery-bar-rating/fontawesome-stars.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="../assets2/css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="../assets2/images/favicon.png" />
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo" href=""></a>
                    <a class="navbar-brand brand-logo-mini" href=""></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>
                    <ul class="navbar-nav mr-lg-2">
                    </ul>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item dropdown d-flex mr-4 ">
                            <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                                <i class="icon-cog"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                                <p class="mb-0 font-weight-normal float-left dropdown-header">Settings</p>
                                <a class="dropdown-item preview-item" href="admin_index.jsp">               
                                    <i class="icon-head"></i> Profile
                                </a>
                                <a class="dropdown-item preview-item" href="../common_logout.jsp">
                                    <i class="icon-inbox"></i> Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="icon-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="emp_history.jsp">
                                <i class="icon-star menu-icon"></i>
                                <span class="menu-title">History</span>
                            </a>
                        </li>
                        <a class="btn btn-sm btn-danger" href="../common_logout.jsp">
                            <i class="icon-lock menu-icon"></i>
                            <span class="menu-title">  Log Out</span>
                        </a>
                    </ul>
                </nav>
                <div class="main-panel">