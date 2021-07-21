<!-- <%-- 
    Document   : null_error
    Created on : 11 12, 20, 8:37:00 PM
    Author     : Robin
--%>
<%@page import="ConList.Messenger"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/null_err_style.css" />
		<link rel="stylesheet" href="css/aos.css" />
		<link
			rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
			integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
			crossorigin="anonymous"
		/>
		<link
			rel="shortcut icon"
			href="css/images/tiger-icon.png"
			type="image/x-icon"
		/>
		<title>ERROR</title>
	</head>
	<body>
		<!-- <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            String header = getServletContext().getInitParameter("header");
            String footer = getServletContext().getInitParameter("footer");

        %> -->
		<div class="header_logo">
			<a href="#" data-aos="fade-right"
				><img src="css/images/Teletigers Text.png"
			/></a>
		</div>
		<div class="main_container" id="main">
			<div class="container" data-aos="fade-left">
				<span></span>
				<div class="center">
					<div class="wrap">
						<div class="box-1 box">
							<i class="fas fa-key"></i>
							<i class="fas fa-key"></i>
						</div>
						<div class="box-2 box">
							<i class="fas fa-key"></i>
							<i class="fas fa-key"></i>
						</div>
					</div>
				</div>
			</div>
			<section data-aos="zoom-in-right" data-aos-delay="800">
				<h1>
					30 <br />
					58
				</h1>
			</section>
			<section data-aos="zoom-out-right" data-aos-delay="1300">
				<h2>Null value encountered</h2>
				<h3>Credentials are missing</h3>
				<a onclick="history.back()" href="#">Back</a>
			</section>
		</div>
		<div class="footer" id="footer">
			<a href="#"><% out.println(footer);%></a>
		</div>
	</body>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="js/aos.js"></script>
	<script>
		AOS.init({
			duration: 2000,
		});
	</script>
</html>
