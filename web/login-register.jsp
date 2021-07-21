<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/login_style.css" type="text/css" />
		<link rel="stylesheet" href="css/aos.css" />
		<link
			rel="shortcut icon"
			href="css/images/tiger-icon.png"
			type="image/x-icon"
		/>
		<title>Teletigers #tgrwin</title>
	</head>

	<body>
		<!-- 
        <%
            String header = getServletContext().getInitParameter("header");
            String footer = getServletContext().getInitParameter("footer");
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        %> -->

		<div class="header_logo">
			<a href="#" data-aos="fade-right" data-aos-delay="1000"
				><img src="css/images/LOGO_TELETIGERS 3.png"
			/></a>
		</div>
		<div class="container">
			<div class="left">
				<div class="header">
					<h2
						data-aos="zoom-out-right"
						data-aos-delay="1200"
						data-aos-duration="1400"
					>
						LOGIN
					</h2>
				</div>
				<form
					class="form"
					action="${pageContext.request.contextPath}/checker"
					method="post"
					autocomplete="off"
				>
					<input
						data-aos="zoom-out-right"
						data-aos-delay="1400"
						data-aos-duration="1400"
						type="text"
						name="username"
						class="form-field"
						placeholder="Username"
					/>
					<input
						data-aos="zoom-out-right"
						data-aos-delay="1600"
						data-aos-duration="1400"
						type="password"
						name="password"
						class="form-field"
						placeholder="Password"
					/>

					<div class="captcha-container">
						<img src="CaptchaGenerator.jpg" />
					</div>
					<input
						class="textbox"
						name="captchaAnswer"
						placeholder="Enter Captcha"
					/>

					<input
						data-aos="zoom-out"
						data-aos-delay="1800"
						data-aos-duration="1400"
						type="submit"
						value="Log-in"
					/>
				</form>
			</div>
			<div class="footer">
				<!-- <a href="#"><% out.println(footer);%></a> -->
				<a href="#">All Rights Reserved 2021</a>
			</div>
			<section class="right">
				<div class="background"></div>
			</section>
			<div class="text">
				<h1 data-aos="slide-right">
					#USTTGR<span class="tgr tgr-1">VALORANT</span>EXIA
				</h1>
				<h1 data-aos="slide-left">
					TELETIGERSHY<span class="tgr tgr-2">MLBB</span>TELETIGERS
				</h1>
				<h1 data-aos="slide-right">
					#USTWIN<span class="tgr tgr-3">TELETIGERS</span>TGRWIN
				</h1>
				<h1 data-aos="slide-left">
					TTGRWIN<span class="tgr tgr-4">WILDRIFTPH</span>TELETIGERS
				</h1>
				<h1 data-aos="slide-right">
					BESTSUPP<span class="tgr tgr-5">LOLPH</span>CRESHO
				</h1>
				<!-- GAMES+EASTEREGSS -->
				<!-- <h1>#UTGR<span class="tgr tgr-1">TELETIGERS</span>MLBB</h1>
                <h1>TGRWIN<span class="tgr tgr-2">TELETIGERS</span>VALORANT</h1>
                <h1>#USTTTG<span class="tgr tgr-3">TELETIGERS</span>TGRWIN</h1>
                <h1>TIGERWIN<span class="tgr tgr-4">TELETIGERS</span>LOLWR</h1>
                <h1>TIGERSUST<span class="tgr tgr-5">TELETIGERS</span>UST</h1>  -->
				<!-- STAIRS -->
				<!-- <h1>#USTTGR<span class="tgr tgr-1">TELETIGERS</span>MLBB</h1>
                <h1>VALORANT<span class="tgr tgr-2">TELETIGERS</span>TGRWIN</h1>
                <h1>#TIGERWIN<span class="tgr tgr-3">TELETIGERS</span>TGRWIN</h1>
                <h1>WILDRIFT<span class="tgr tgr-4">TELETIGERS</span>#TGRWIN</h1>
                <h1>TIGERLOL<span class="tgr tgr-5">TELETIGERS</span>UST</h1> -->
				<!-- SABOG -->
			</div>
		</div>
	</body>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="js/aos.js"></script>
	<script>
		AOS.init({
			duration: 2000,
		});
	</script>
	<script>
		for (let i = 0; i < 5; i++) {
			setTimeout(function () {
				$(`.tgr-\${1 + i}`).addClass("active");
			}, 2000 + i * 100);
		}
	</script>
</html>
