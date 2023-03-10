<%-- 
    Document   : explore
    Created on : 18-Dec-2022, 10:15:22 am
    Author     : archa
--%>

<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %><!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Simple House Template</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
        <link href="css/templatemo-style.css" rel="stylesheet" />
    </head>
    <!--
    
    Simple House
    
    https://templatemo.com/tm-539-simple-house
    
    -->
    <body> 

        <div class="container">
            <!-- Top box -->
            <!-- Logo & Site Name -->
            <div class="placeholder">
                <div class="parallax-window" data-parallax="scroll" data-image-src="img/simple-house-01.jpg">
                    <div class="tm-header">
                        <div class="row tm-header-inner">
                            <div class="col-md-6 col-12">
                                <img src="img/simple-house-logo.png" alt="Logo" class="tm-site-logo" /> 
                                <div class="tm-site-text-box">
                                    <h1 class="tm-site-title">City 360</h1>
                                    <h6 class="tm-site-description">explore the city</h6>	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <main>
                <header class="row tm-welcome-section">
                    <h2 class="col-12 text-center tm-section-title">Welcome to Simple House</h2>
                    <p class="col-12 text-center">Total 3 HTML pages are included in this template. Header image has a parallax effect. You can feel free to download, edit and use this TemplateMo layout for your commercial or non-commercial websites.</p>
                </header>


                <div class="tm-paging-links">
                    <!-- Tabs navs -->
                    <ul class="nav nav-tabs mb-3" id="ex1" role="tablist">
                        <li class="tm-paging-item" role="presentation">
                            <a
                                class="tm-paging-link active"
                                href="#ex1-tabs-1"
                                >Tab 1</a
                            >
                        </li>
                        <li class="nav-item" role="presentation">
                            <a
                                class="nav-link"
                                id="ex1-tab-2"
                                data-mdb-toggle="tab"
                                href="#ex1-tabs-2"
                                role="tab"
                                aria-controls="ex1-tabs-2"
                                aria-selected="false"
                                >Tab 2</a
                            >
                        </li>
                        <li class="nav-item" role="presentation">
                            <a
                                class="nav-link"
                                id="ex1-tab-3"
                                data-mdb-toggle="tab"
                                href="#ex1-tabs-3"
                                role="tab"
                                aria-controls="ex1-tabs-3"
                                aria-selected="false"
                                >Tab 3</a
                            >
                        </li>
                    </ul>
                    <!-- Tabs navs -->

                    <!-- Tabs content -->
                    <div class="tab-content" id="ex1-content">
                        <div
                            class="tab-pane fade show active"
                            id="ex1-tabs-1"
                            role="tabpanel"
                            aria-labelledby="ex1-tab-1"
                            >
                            Tab 1 content
                        </div>
                        <div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="ex1-tab-2">
                            Tab 2 content
                        </div>
                        <div class="tab-pane fade" id="ex1-tabs-3" role="tabpanel" aria-labelledby="ex1-tab-3">
                            Tab 3 content
                        </div>
                    </div>
                </div>

                <div class="tm-paging-links">
                    <nav>
                        <ul>
                            <li class="tm-paging-item"><a href="#places" class="tm-paging-link active">Places</a></li>
                            <li class="tm-paging-item"><a href="#school" class="tm-paging-link">School</a></li>
                            <li class="tm-paging-item"><a href="#college" class="tm-paging-link">College</a></li>
                        </ul>
                    </nav>
                </div>


                <section id="places">
                    <div id="tm-gallery-page-school" class="tm-gallery-page hidden">
                        <%  String selQ = "select *from location_details where status='Added'";
                            ResultSet rs = obj.select(selQ);

                            while (rs.next()) {
                                String photo = rs.getString("image");
                                String name1 = rs.getString("name");
                                String address1 = rs.getString("address");
                                String contact1 = rs.getString("contact");
                                String link1 = rs.getString("link");

                        %>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">

                            <img src="img/<%=photo%>" alt="Image" class="img-fluid tm-gallery-img" />

                            <h4 class="tm-gallery-title"><%=name1%></h4>

                            <p class="tm-gallery-description"><%=address1%></p>
                            <p class="tm-gallery-description"><%=contact1%></p>
                            <p class="tm-gallery-description"><%=link1%></p>
                        </article>
                        <% }%> 
                    </div> <!-- gallery page 2 -->
                </section>

                <section id="school">
                    <div id="tm-gallery-page-school" class="tm-gallery-page hidden">
                        <%  String selQ2 = "select *from location_details where category='college' and status='Added'";
                            ResultSet rs2 = obj.select(selQ2);

                            while (rs2.next()) {
                                String photo2 = rs2.getString("image");
                                String name2 = rs2.getString("name");
                                String address2 = rs2.getString("address");
                                String contact2 = rs2.getString("contact");
                                String link2 = rs2.getString("link");

                        %>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">

                            <img src="img/<%=photo2%>" alt="Image" class="img-fluid tm-gallery-img" />

                            <h4 class="tm-gallery-title"><%=name2%></h4>

                            <p class="tm-gallery-description"><%=address2%></p>
                            <p class="tm-gallery-description"><%=contact2%></p>
                            <p class="tm-gallery-description"><%=link2%></p>
                        </article>
                        <% }%> 
                    </div><!-- gallery page 2 -->
                </section>

                <section id="college">
                    <div id="tm-gallery-page-school" class="tm-gallery-page hidden">
                        <%  String selQ3 = "select *from location_details where category='college' and status='Added'";
                            ResultSet rs3 = obj.select(selQ3);

                            while (rs3.next()) {
                                String photo3 = rs3.getString("image");
                                String name3 = rs3.getString("name");
                                String address3 = rs3.getString("address");
                                String contact3 = rs3.getString("contact");
                                String link3 = rs3.getString("link");

                        %>
                        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">

                            <img src="img/<%=photo3%>" alt="Image" class="img-fluid tm-gallery-img" />

                            <h4 class="tm-gallery-title"><%=name3%></h4>

                            <p class="tm-gallery-description"><%=address3%></p>
                            <p class="tm-gallery-description"><%=contact3%></p>
                            <p class="tm-gallery-description"><%=link3%></p>
                        </article>
                        <% }%> 
                    </div> <!-- gallery page 2 -->
                </section>

                <script src="js/jquery.min.js"></script>
                <script src="js/parallax.min.js"></script>
                <script>
                    $(document).ready(function () {
                        // Handle click on paging links
                        $('.tm-paging-link').click(function (e) {
                            e.preventDefault();

                            var page = $(this).text().toLowerCase();
                            $('.tm-gallery-page').addClass('hidden');
                            $('#tm-gallery-page-' + page).removeClass('hidden');
                            $('.tm-paging-link').removeClass('active');
                            $(this).addClass("active");
                        });
                    });
                </script>
                </body>
                </html>
