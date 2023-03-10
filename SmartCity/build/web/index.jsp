
<%@include file="index_header.jsp"%>
<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title><%=sid%></title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="lid/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="lid/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="lid/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="lid/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="lid/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="lid/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="lid/css/style.css" rel="stylesheet">
        <link href="lid/css/index.css" rel="stylesheet">
        <link href="lid/css/main.css" rel="stylesheet">
        <link href="lid/css/main1.css" rel="stylesheet">
        <link href="lid/css/main2.css" rel="stylesheet">


    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top d-flex align-items-center">
            <div class="container d-flex align-items-center justify-content-between">

                <h1 class="logo"><a href="index.jsp">CITY 360</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo"><img src="img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
                        <li><a class="nav-link scrollto active" href="emhistory.jsp">History</a></li>
                        <li class="dropdown"><a href="#"><span>Services</span> <i class="bi bi-chevron-down"></i></a>
                            <ul><%
                                String selq = "select *from job_category where jobcat_status='Added'";
                                ResultSet rs = obj.select(selq);
                                String id = "";
                                String name = "";
                                while (rs.next()) {
                                    id = rs.getString("jobcat_id");
                                    name = rs.getString("jobcat_name");
                                %>
                                <li><a href="emphome.jsp?id=<%=id%>"><%=name%></a></li>
                                    <%}%>
                            </ul>
                        <li><a class="getstarted scrollto" href="common_logout.jsp">Logout</a></li>
                        </li>

                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero">
            <div class="hero-container">
                <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

                    <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                    <div class="carousel-inner" role="listbox">

                        <!-- Slide 1 -->
                        <div class="carousel-item active" style="background-image: url(img/slide/slide-1.jpg);">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2 class="animate__animated animate__fadeInDown">City Assist</h2>
                                    <p class="animate__animated animate__fadeInUp"></p>

                                </div>
                            </div>
                        </div>

                        <!-- Slide 2 
                        <div class="carousel-item" style="background-image: url(img/slide/slide-2.jpg);">
                          <div class="carousel-container">
                            <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">City 360</h2>
                              <p class="animate__animated animate__fadeInUp"></p>
                              <div>
                                <a href="#Services" class="btn-get-started animate__animated animate__fadeInUp scrollto">Lets Start</a>
                              </div>
                            </div>
                          </div>
                        </div>
              
                        <!-- Slide 3 
                        <div class="carousel-item" style="background-image: url(img/slide/slide-3.jpg);">
                          <div class="carousel-container">
                            <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">Your Helping Hand</h2>
                              <p class="animate__animated animate__fadeInUp"></p>
                              
                            </div>
                          </div>
                        </div>
              
                      </div>
              
                      
              
                    </div>
                  </div>
                </section><!-- End Hero -->

                        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

                        <!-- Vendor JS Files -->
                        <script src="lid/vendor/purecounter/purecounter_vanilla.js"></script>
                        <script src="lid/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                        <script src="lid/vendor/glightbox/js/glightbox.min.js"></script>
                        <script src="lid/vendor/isotope-layout/isotope.pkgd.min.js"></script>
                        <script src="lid/vendor/swiper/swiper-bundle.min.js"></script>
                        <script src="lid/vendor/php-email-form/validate.js"></script>

                        <!-- Template Main JS File -->
                        <script src="lid/js/main.js"></script>

                        </body>

                        </html>