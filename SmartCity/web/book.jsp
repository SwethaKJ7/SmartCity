<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>resident</title>
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
  <link href="css/style.css" rel="stylesheet">


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
          <li class="dropdown"><a href="#"><span>Services</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Electrical</a></li>
              <li><a href="#">Plumbing</a></li>
              <li><a href="#">Home Cleaning</a></li>
              <li><a href="#">Painting</a></li>
            </ul>
          </li>
          <li><a class="getstarted scrollto" href="#">Login</a></li>
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
          <h2>Booking</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Booking</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container">
        <p>
          Book an employee
  <div class="h-100 h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <div class="card-body p-4 p-md-5">
            <form method="post" action="bookInsert.jsp" class="px-md-2">
                <%
                            String eid=request.getParameter("id");
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/city?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT * FROM employee where eid="+eid;
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String eeid = rs.getString("eid");
                                                    String ename = rs.getString("ename");
                                                    String edesig = rs.getString("desig");
                            %>
                <input type="hidden" name="eid" value="<%=eeid%>">  <!-- employee_id -->
                <div class="row">
                <div class="col-md-6 mb-4">
              <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example1q">Employee</label>
                  <input type="text" id="ename" name="ename" class="form-control" value="<%=ename%>" readonly="true" />
              </div>
                </div>
              <div class="col-md-6 mb-4">
                  <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example1q">Designation</label>
                  <input type="text" id="ecat" name="ecat" class="form-control" value="<%=edesig%>" readonly="true" />
                  </div>
              </div>
              </div>
              
                        <%
            }
            } catch (Exception e) {
                out.println(e);
            }
        %>
                <div class="form-outline mb-4">
                  <div class="form-outline datepicker">
                    <label for="exampleDatepicker1" class="form-label">Select start date</label>
                    <input type="date" name="date1" id="date1" class="form-control" id="exampleDatepicker1" />
                  </div>
                </div>
                <div class="form-outline mb-4">
                  <div class="form-outline datepicker">
                    <label for="exampleDatepicker1" class="form-label">Select end date</label>
                    <input type="date" name="date2" id="date2" class="form-control" id="exampleDatepicker1" />
                  </div>
                </div>
                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example1q">Location</label>
                <input type="text" onclick="getAmount()" class="form-control"/>
              </div>
                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example1q">Amount</label>
                <input type="text"class="form-control" name="amount" id="amount" value="0" class="signn__input" readonly="true">
              </div>

              <button type="submit" class="btn btn-success btn-lg mb-1">Book</button>

            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
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
          
    <script>

                function getAmount() {
                    const a = document.getElementById("date1").value;
                    const b = document.getElementById("date2").value;
                    const oneDay = 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
                    const firstDate = new Date(a);
                    const secondDate = new Date(b);
                    const c = Math.round(Math.abs((firstDate - secondDate) / oneDay));
                    
                    if(c>10){
                            alert("You can only hire for a maximum of 10 days");
                            document.getElementById('amount').value=""; 
                        }
                    else{
                        tot = c * 800;
                        document.getElementById('amount').value = tot;
                    }
                }
    </script>

</body>

</html>