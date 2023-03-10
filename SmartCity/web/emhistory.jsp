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
                            <tr><th scope="col">id</th>
                                <th scope="col">Employee Name</th>
                                <th scope="col">User Name</th>
                                <th scope="col">Contact</th>
                                <th scope="col">Start Date</th>
                                <th scope="col">End Date</th>
                            </tr>
                        </thead>
                        <%                                            try {
                                    String Selq2 = "select *from tbl_history a inner join emp b on a.emp_id=b.emp_id inner join registration c on a.r_id=c.r_id where history_status='Completed' and a.r_id='"+sid+"'";
                                    ResultSet rs2 = obj.select(Selq2);
                                    int j = 0;
                                    while (rs2.next()) {
                                        String id2 = rs2.getString("history_id");
                                        String name = rs2.getString("r_name");
                                        String emp = rs2.getString("f_name");
                                        String phone = rs2.getString("r_phone");
                                        String date11 = rs2.getString("date1");
                                        String date22 = rs2.getString("date2");

                                        j++;
                                %>
                        <tbody>
                            <tr>
                                <td><%=j%></td>
                                    <td><%=emp%></td>
                                    <td><%=name%></td>
                                    <td><%=phone%></td>
                                    <td><%=date11%></td>
                                    <td><%=date22%></td>
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