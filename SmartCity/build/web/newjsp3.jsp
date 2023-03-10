<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>City360</title>
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
								<h1 class="tm-site-title">CITY 360</h1>	
							</div>
						</div>
						<nav class="col-md-6 col-12 tm-nav">
							<ul class="tm-nav-ul">
								<li class="tm-nav-li"><a href="newjsp3.jsp" class="tm-nav-link active">Home</a></li>
							</ul>
						</nav>	
					</div>
				</div>
			</div>
		</div>

		<main>
			<header class="row tm-welcome-section">
				<h2 class="col-12 text-center tm-section-title">Welcome to City360</h2>
				<p class="col-12 text-center">Acces places</p>
			</header>
			
			<div class="tm-paging-links">
				<nav>
					<ul>
						<li class="tm-paging-item"><a href="#" class="tm-paging-link active">All</a></li>
						<li class="tm-paging-item"><a href="#" class="tm-paging-link">Education</a></li>
						<li class="tm-paging-item"><a href="#" class="tm-paging-link">Hospitals</a></li>
                                                <li class="tm-paging-item"><a href="#" class="tm-paging-link">Restaurant</a></li>
					</ul>
				</nav>
			</div>

			<!-- Gallery -->
			<div class="row tm-gallery">
				<!-- gallery page 1 -->
				<div id="tm-gallery-page-all" class="tm-gallery-page">
                                    <%
                                    String selq="select *from location_details  a inner join category b on a.category=b.cat_id where status='Added'";
                                    ResultSet rs=obj.select(selq);
                                    while(rs.next())
                                    {
                                        String name=rs.getString("name");
                                        String address=rs.getString("address");
                                        String contact=rs.getString("contact");
                                        String category=rs.getString("cat_name");
                                        String image=rs.getString("image");
                                        String link=rs.getString("link");
                                    %>
					<article class="col-lg-6 col-md-8 col-sm-6 col-12 tm-gallery-item">
						<figure>
                                                    <img src="img/<%=image%>" height="200" width="200" alt="Image" href="<%=link%>" class="img-fluid tm-gallery-img" />
							<figcaption>
								<a href="<%=link%>"><%=name%></a>
								<p class="tm-gallery-description"><%=address%></p>
                                                                <p class="tm-gallery-description"><%=category%></p>
								<h5 class="tm-gallery-price">Contact: <%=contact%></h5>
							</figcaption>
						</figure>
					</article>
                                        <%}%>
				</div> <!-- gallery page 1 -->
				
				<!-- gallery page 2 -->
				<div id="tm-gallery-page-education" class="tm-gallery-page">
                                    <%
                                    String selq2="select *from location_details  a inner join category b on a.category=b.cat_id where status='Added' and (cat_name='college' or cat_name='school')";
                                    ResultSet rs2=obj.select(selq2);
                                    while(rs2.next())
                                    {
                                        String name2=rs2.getString("name");
                                        String address2=rs2.getString("address");
                                        String contact2=rs2.getString("contact");
                                        String category2=rs2.getString("category");
                                        String link2=rs2.getString("link");
                                        String image2=rs2.getString("image");
                                    %>
					<article class="col-lg-6 col-md-8 col-sm-6 col-12 tm-gallery-item">
						<figure>
                                                    <img src="img/<%=image2%>" height="200" width="200" alt="Image"href="<%=link2%>" class="img-fluid tm-gallery-img" />
							<figcaption>
								<a href="<%=link2%>"><%=name2%></a>
								<p class="tm-gallery-description"><%=address2%></p>
                                                                <p class="tm-gallery-description"><%=category2%></p>
								<h5 class="tm-gallery-price">Contact: <%=contact2%></h5>
							</figcaption>
						</figure>
					</article>
                                        <%}%>
				</div> <!-- gallery page 2 -->
				
				<!-- gallery page 3 -->
				<div id="tm-gallery-page-hospitals" class="tm-gallery-page">
                                    <%
                                    String selq3="select *from location_details  a inner join category b on a.category=b.cat_id where status='Added' and cat_name='Hospitals'";
                                    ResultSet rs3=obj.select(selq3);
                                    while(rs3.next())
                                    {
                                        String name3=rs3.getString("name");
                                        String address3=rs3.getString("address");
                                        String contact3=rs3.getString("contact");
                                        String category3=rs3.getString("cat_name");
                                        String link3=rs3.getString("link");
                                        String image3=rs3.getString("image");
                                    %>
					<article class="col-lg-6 col-md-8 col-sm-6 col-12 tm-gallery-item">
						<figure>
                                                    <img src="img/<%=image3%>" height="200" width="200" alt="Image" href="<%=link3%>" class="img-fluid tm-gallery-img" />
							<figcaption>
                                                            <a href="<%=link3%>"><%=name3%></a>
								<p class="tm-gallery-description"><%=address3%></p>
                                                                <p class="tm-gallery-description"><%=category3%></p>
								<h5 class="tm-gallery-price">Contact: <%=contact3%></h5>
							</figcaption>
						</figure>
					</article>
                                        <%}%>
				</div> <!-- gallery page 3 -->
                                <div id="tm-gallery-page-restaurant" class="tm-gallery-page">
                                    <%
                                    String selq4="select *from location_details  a inner join category b on a.category=b.cat_id where status='Added' and cat_name='Restaurant'";
                                    ResultSet rs4=obj.select(selq4);
                                    while(rs4.next())
                                    {
                                        String name4=rs4.getString("name");
                                        String address4=rs4.getString("address");
                                        String contact4=rs4.getString("contact");
                                        String category4=rs4.getString("cat_name");
                                        String image4=rs4.getString("image");
                                        String link4=rs4.getString("link");
                                    %>
					<article class="col-lg-6 col-md-8 col-sm-6 col-12 tm-gallery-item">
						<figure>
                                                    <img src="img/<%=image4%>" height="200" width="200" alt="Image" class="img-fluid tm-gallery-img" />
							<figcaption>
								<a href="<%=link4%>"><%=name4%></a>
								<p class="tm-gallery-description"><%=address4%></p>
                                                                <p class="tm-gallery-description"><%=category4%></p>
								<h5 class="tm-gallery-price">Contact: <%=contact4%></h5>
							</figcaption>
						</figure>
					</article>
                                        <%}%>
				</div>
			</div>
		</main>

		<footer class="tm-footer text-center">
			<p>Copyright &copy; 
            
            | Design: <a rel="nofollow" href="https://templatemo.com">CITY360</a></p>
		</footer>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script>
		$(document).ready(function(){
			// Handle click on paging links
			$('.tm-paging-link').click(function(e){
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