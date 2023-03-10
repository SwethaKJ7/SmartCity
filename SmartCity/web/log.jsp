<%-- 
    Document   : log
    Created on : Oct 31, 2022, 9:14:49 PM
    Author     : LYDIA
--%>



<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%
    String un = request.getParameter("username");
    String ps = request.getParameter("password");
    if (request.getParameter("submit") != null) {
        String sQ1 = "select *from registration where r_username='" + un + "' and r_password='" + ps + "' and r_status='Approved'";
        String sQ2 = "select *from admin where admin_username='" + un + "' and admin_password='" + ps + "'";
String sQ3 = "select *from emp where email='" + un + "' and password='" + ps + "' and emp_status='Approved'";
        ResultSet rs1 = obj.select(sQ1);
        ResultSet rs2 = obj.select(sQ2);
        ResultSet rs3 = obj.select(sQ3);
        

        if (rs1.next()) {

            String adid = rs1.getString("r_id");
            session.setAttribute("sid", adid);
            response.sendRedirect("index.jsp");
        }
        if (rs2.next()) {

            String adid = rs2.getString("admin_id");
            session.setAttribute("sid", adid);
            response.sendRedirect("admin/resident_shw2.jsp");
        }
        if (rs3.next()) {

            String adid = rs3.getString("emp_id");
            session.setAttribute("sid", adid);
            response.sendRedirect("employee/emp_history.jsp");
        }

    }

%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V3</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="lid/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lid/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lid/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lid/css/util1.css">
	<link rel="stylesheet" type="text/css" href="lid/css/main1.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/img/bg-01.jpg');">
			<div class="wrap-login100">
                            <form class="login100-form" method="post" >
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						LOGIN
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username" >
						<input class="input100" type="text" name="username" id="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" id="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn" href="#login">
                                            <input type="submit" name="submit" id="submit" class="login100-form-btn" >
					</div>

					<div class="text-center p-t-90">
						<a class="txt1" href="register.html">
							New Resident? REGISTER
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="lid/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="lid/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="lid/vendor/bootstrap/js/popper.js"></script>
	<script src="lid/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="lid/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="lid/vendor/daterangepicker/moment.min.js"></script>
	<script src="lid/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="lid/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="lid/js/main.js"></script>
<section id="login">
        </section>
</body>
</html>
