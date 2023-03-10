<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@include file="index_header.jsp"%>
<%
    String id = request.getParameter("id");
%>
<!DOCTYPE html>
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
        <link href="vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

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
                        <li><a class="getstarted scrollto" href="log.jsp">Logout</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

        <main id="main">

            <!-- ======= Breadcrumbs ======= -->
            <section class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Workers</h2>


                    </div>

                </div>
            </section><!-- End Breadcrumbs -->

            <section class="inner-page">
                <div class="container">
                    <p>
                        Employee Details
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Designation</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <%                                            try {
                                String selq = "select *from emp a inner join job_category b on a.job=b.jobcat_id and (jobcat_id='" + id + "' and availability='0')";
                                ResultSet rs = obj.select(selq);
                                while (rs.next()) {
                                    String eid = rs.getString("emp_id");
                                    String name = rs.getString("f_name");
                                    String phone = rs.getString("ph_no");
                                    String job = rs.getString("jobcat_name");
                                    String avail = rs.getString("availability");

                        %>
                        <tbody>
                            <tr>
                                <th scope="row"><%=name%></th>
                                <td><%=job%></td>
                                <td><%=phone%></td>
                                <td><a href="emphome2.jsp?empid=<%=eid%>" class="btn btn-buy " style="background-color:#000000; ">Book</a></td>
                            </tr>
                        </tbody>
                        <%
                                }
                            } catch (Exception e) {
                                out.println(e);
                            }
                        %>        

                    </table>
                    </p>
                </div>
            </section>

        </main><!-- End #main -->






        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/glightbox/js/glightbox.min.js"></script>
        <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="vendor/swiper/swiper-bundle.min.js"></script>
        <script src="vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="js/main.js"></script>

    </body>

</html>