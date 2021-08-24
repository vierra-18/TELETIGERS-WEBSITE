<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/gamepick-player_style.css" />
		<link rel="stylesheet" href="css/aos.css" />
		<link
			rel="shortcut icon"
			href="css/images/tiger-icon.png"
			type="image/x-icon"
		/>
		<script
			crossorigin="anonymous"
			src="https://kit.fontawesome.com/c8e4d183c2.js"
		></script>

		<title>Teletigers #tgrwin</title>
	</head>
	<% ServletContext sc = request.getServletContext();
	if(sc.getAttribute("SessionUser")==null){response.sendError(HttpServletResponse.SC_NOT_FOUND);};
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
	<body class="inactive">
		<section class="background"><h1 class="bg-title">#TGRWIN</h1></section>
		<section class="bg-1"></section>
		<section class="bg-2"></section>
		<div class="header_logo" data-aos="zoom-out">
			<a href="#"><img src="css/images/Teletigers Text.png" alt="logo" /></a>
		</div>
		<section class="main-container">
			<nav role="navigation">
				<div id="menuToggle" data-aos="fade-in">
					<input type="checkbox" id="checkbox" />

					<span></span>
					<span></span>
					<span></span>

					<ul id="menu">
						<a href="account"><li>ACCOUNT</li></a>
						<a href="#"
							><li>
								LOGOUT
								<form
									id="logout-form"
									action="${pageContext.request.contextPath}/Logout"
									method="post"
								>
									<input type="submit" value="LOGOUT" id="logout" />
								</form></li
						></a>
					</ul>
				</div>
			</nav>
			<section class="container-1" id="cont1">
				<ul class="header-opt">
					<li data-aos="fade-in">
						<a href="_achievements">Achievements</a>
					</li>
					<li data-aos="fade-in">
						<a href="_home">Home</a>
					</li>
				</ul>
			</section>
			<section class="container-2" id="cont2">
				<div class="contain">
					<div
						class="block backfade yellow leagueOlego"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="2200"
					>
						<a href="#"
							><div class="logo">
								<img src="css/images/LoL.png" class="lolers" /></div
						></a>
					</div>

					<div
						class="block backfade blue wildrift"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="2400"
					>
						<a href="#"
							><div class="logo">
								<img src="css/images/lolwr.png" class="rifters" /></div
						></a>
					</div>

					<div
						class="block backfade red valo"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="2600"
					>
						<a href="valorant"
							><div class="logo luna">
								<img src="css/images/valo.png" class="valoers" /></div
						></a>
						<a href="valorant"
							><div class="logo sol">
								<img src="css/images/valo.png" class="valoers" /></div
						></a>
						<a href="valorant"
							><div class="logo eclipse">
								<img src="css/images/valo.png" class="valoers" /></div
						></a>
					</div>

					<div
						class="block backfade purple emel"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="2800"
					>
						<a href="#"
							><div class="logo">
								<img src="css/images/ml.png" class="emelers" /></div
						></a>
					</div>

					<div
						class="block backfade green codm"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="3000"
					>
						<a href="#"
							><div class="logo">
								<img src="css/images/codmlogo.png" class="c0ders" /></div
						></a>
					</div>

					<div
						class="block backfade bluered tekken"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="3200"
					>
						<a href="#"
							><div class="logo">
								<img src="css/images/tekken-logo.png" class="tekkers" /></div
						></a>
					</div>
				</div>
			</section>
			<section class="container-3" id="cont3">
				<div class="text">
					powered by <img src="css/images/acadarena.png" alt="founder" />
				</div>
				<div class="contact" id="contact">
					<ul>
						<li>
							<a
								href="https://www.facebook.com/TeletigersEsports"
								target="_blank"
								><i class="fab fa-facebook-f"></i
							></a>
						</li>
						<li>
							<a href="#"><i class="fab fa-twitter"></i></a>
						</li>
						<li>
							<a href="#"><i class="fab fa-instagram"></i></a>
						</li>
						<li>
							<a href="#"><i class="fab fa-twitch"></i></a>
						</li>
						<li>
							<a href="#"><i class="fab fa-youtube"></i></a>
						</li>
					</ul>
				</div>
				<div class="text">all rights reserved 2021</div>
			</section>
		</section>
	</body>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="js/aos.js"></script>
	<script>
		AOS.init({
			duration: 2000,
			delay: 2000,
		});
		window.onload = function () {
			$(".bg-1, .bg-2, .bg-title").addClass("active");
		};

		window.onunload = function () {
			window.scrollTo(0, 0);
		};
		window.setTimeout(function () {
			$(".bg-1, .bg-2, .main-container").addClass("finished");
		}, 2250);
		window.setTimeout(function () {
			$("body").removeClass("inactive");
			$(".block").addClass("active");
		}, 3000);
	</script>
</html>
