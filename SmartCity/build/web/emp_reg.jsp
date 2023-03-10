<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!-- <img src="img/10.jpeg"></img>-->
        <form method="post" enctype="multipart/form-data" action="reg2.jsp">
            <section class="h-100 bg-dark">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">
                            <div class="card card-registration my-4">
                                <div class="row g-0">
                                    <div class="col-xl-6 d-none d-xl-block">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                             alt="Sample photo" class="img-fluid"
                                             style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card-body p-md-5 text-black">
                                            <h3 class="mb-5 text-uppercase">Employee registration form</h3>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="fname" name="fname" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1m">First name</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="lname" name="lname" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1n">Last name</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="number" id="adno" name="adno" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1m1">Adaar number</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="number" id="phno" name="phno" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1n1">Phone number</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="address" name="address" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example8">Address</label>
                                            </div>

                                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                                <h6 class="mb-0 me-4">Gender: </h6>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                                                           value="female" />
                                                    <label class="form-check-label" for="femaleGender">Female</label>
                                                </div>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                                                           value="male" />
                                                    <label class="form-check-label" for="maleGender">Male</label>
                                                </div>

                                                <div class="form-check form-check-inline mb-0">
                                                    <input class="form-check-input" type="radio" name="gender" id="other"
                                                           value="other" />
                                                    <label class="form-check-label" for="otherGender">Other</label>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <select class="select" name="job" id="job">
                                                        <option value="1">Choose Option</option>
                                                        <%
                                                            String selq = "select *from job_category where jobcat_status='Added'";
                                                            ResultSet rs = obj.select(selq);
                                                            String id = "";
                                                            String name = "";
                                                            while (rs.next()) {
                                                                id = rs.getString("jobcat_id");
                                                                name = rs.getString("jobcat_name");
                                                        %>
                                                        <option value="<%=id%>"><%=name%></option>
                                                        <%}%>
                                                    </select>

                                                </div>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="file" name="photo" id="photo" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example99">Id proof </label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="email" id="email" name="email" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example97">Email ID</label>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="text" name="password" id="password" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example99">Password </label>
                                            </div>

                                            <div class="d-flex justify-content-end pt-3">
                                                <a href="emp_reg.jsp" class="btn btn-light btn-lg">Reset all</a>
                                                <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </body>
</html>

