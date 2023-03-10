
<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%
    if (request.getParameter("submit") != null) {

        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String insq = "insert into registration (r_name,dob,r_gender,r_email,r_phone,r_username,r_password,r_status) values('" + name + "','" + dob + "','" + gender + "','" + email + "','" + phone + "','" + username + "','" + password + "','Added')";
        boolean a = obj.insert(insq);
        if (a == true) {
            response.sendRedirect("index.html");
   }
    }


%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Registration</title>

        <!-- Icons font CSS-->
        <link href="lid/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="lid/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="lid/vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="lid/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="lid/css/main2.css" rel="stylesheet" media="all">
    </head>

    <body>
        <div class="page-wrapper bg-gra-01 p-t-20  font-poppins">
            <div class="wrapper wrapper--w780">
                <div class="card card-3 ">
                    <div class="card-heading"></div>
                    <div class="card-body">
                        <h2 class="title">Registration</h2>
                        <form method="POST">
                            <div class="input-group">
                                <input class="input--style-3" type="text" placeholder="Name" name="name" id="name">
                            </div>
                            <div class="input-group">
                                <input class="input--style-3" type="date" placeholder="Birthdate" name="dob" id="dob">
                            </div>
                            <div class="input-group">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="gender" id="name">
                                        <option disabled="disabled" selected="selected">Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option>Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group">
                                <input class="input--style-3" type="email" placeholder="Email" name="email" id="email">
                            </div>
                            <div class="input-group">
                                <input class="input--style-3" type="text" placeholder="Phone" name="phone" id="phone">
                            </div>
                            <div class="input-group">
                                <input class="input--style-3" type="text" placeholder="Username" name="username" id="username">
                            </div>
                            <div class="input-group">
                                <input class="input--style-3" type="text" placeholder="Password" name="password" id="password">
                            </div>
                            <div class="p-t-10">
                                <button class="btn btn--pill btn--green" type="submit" name="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="lid/vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="lid/vendor/select2/select2.min.js"></script>
        <script src="lid/vendor/datepicker/moment.min.js"></script>
        <script src="lid/vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="lid/js/global.js"></script>

    </body>

</html>
<!-- end document-->