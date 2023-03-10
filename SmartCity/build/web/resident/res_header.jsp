<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%String sid=(String)session.getAttribute("sid");%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags --> 
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>City360 | Resident</title>
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
                    <a class="navbar-brand brand-logo" href="index.html"><img src="../assets2/images/" alt="logo"/></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../assets2/images/logo-mini.svg" alt="logo"/></a>
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
                    <div class="user-profile">
                        <div class="user-image">
                            <img src="../images/">
                        </div>
                        <div class="user-name">
                            
                        </div>
                        <div class="user-designation">
                            Admin
                        </div>
                    </div>
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="admin_index.jsp">
                                <i class="icon-star menu-icon"></i>
                                <span class="menu-title">Index Page</span>
                            </a>
                        </li>
                          <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <i class="icon-plus menu-icon"></i>
                                <span class="menu-title">Residents</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="resident_shw.jsp">Registered</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="resident_shw2.jsp">Approved</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic11" aria-expanded="false" aria-controls="ui-basic11">
                                <i class="icon-plus menu-icon"></i>
                                <span class="menu-title">Employees</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic11">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="emp_shw.jsp">Registered</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="emp_reg.jsp">Add</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="emp_shw2.jsp">Approved</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic2">
                                <i class="icon-plus menu-icon"></i>
                                <span class="menu-title">Locations</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic2">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="loc_shw.jsp">Existing</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="loc_reg.jsp">Add</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic3">
                                <i class="icon-plus menu-icon"></i>
                                <span class="menu-title"> Location Types</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic3">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="cat_reg.jsp">Existing</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="#admin_user2.jsp">Add</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic4" aria-expanded="false" aria-controls="ui-basic4">
                                <i class="icon-plus menu-icon"></i>
                                <span class="menu-title">Job Category</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic4">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="jobcat_reg.jsp">Registered</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="#admin_company2.jsp">Approved</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_rent.jsp">
                                <i class="icon-book menu-icon"></i>
                                <span class="menu-title">Rent History</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_service.jsp">
                                <i class="icon-shuffle menu-icon"></i>
                                <span class="menu-title">Maintenance History</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin_feedback2.jsp">
                                <i class="icon-star menu-icon"></i>
                                <span class="menu-title">Index Page</span>
                            </a>
                        </li>
                        <p></p>
                        <a class="btn btn-sm btn-danger" href="../common_logout.jsp">
                            <i class="icon-lock menu-icon"></i>
                            <span class="menu-title">  Log Out</span>
                        </a>
                    </ul>
                </nav>
                <div class="main-panel">