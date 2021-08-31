<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/styles/home-admin_style.css" />
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
						<a href="_account_"><li>ACCOUNT</li></a>
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
				<ul class="header-opt" data-aos="fade-in">
					<li><a href="_achievements_">Achievements</a></li>
					<li><a href="_gamepick_">Teams</a></li>
				</ul>

				<img
					src="css/images/LOGO_TELETIGERS 3.png"
					class="big-logo"
					data-aos="zoom-out"
				/>
				<div class="cont1-text">
					<h1 data-aos="fade-right">WEAR</h1>
					<h1 class="mid-text" data-aos="fade-right" data-aos-delay="2500">
						YOUR
					</h1>
					<h1 data-aos="fade-right" data-aos-delay="2700">STRIPES</h1>
					<div class="con1-images">
						<div class="first-row">
							<img
								src="css/images/LoL.png"
								class="lol"
								data-aos="zoom-out"
								data-aos-duration="700"
								data-aos-delay="3200"
							/>
							<img
								src="css/images/ml.png"
								class="emel"
								data-aos="zoom-out"
								data-aos-duration="700"
								data-aos-delay="3400"
							/>
							<img
								src="css/images/lolwr.png"
								class="lolwr"
								data-aos="zoom-out"
								data-aos-duration="700"
								data-aos-delay="3600"
							/>
						</div>
						<div class="second-row">
							<img
								src="css/images/valo.png"
								class="valo"
								data-aos="zoom-out"
								data-aos-duration="700"
								data-aos-delay="3800"
							/>
							<img
								src="css/images/codmlogo.png"
								class="codm"
								data-aos="zoom-out"
								data-aos-duration="700"
								data-aos-delay="4000"
							/>
						</div>
					</div>
				</div>
			</section>
			<section class="container-2" id="cont2">
				<div
					class="img-container"
					data-aos="fade-down-right"
					data-aos-delay="400"
				>
					<img
						src="css/images/Uomi.png"
						alt="founder"
						data-aos="fade-up-left"
						data-aos-delay="400"
					/>
				</div>
				<fieldset class="cont2-text" data-aos="fade-left" data-aos-delay="400">
					"Initially, Teletigers was meant to be just a team with the sole
					purpose of earning in-game credits and cash prizes. Through the years
					of victory, it transitioned into something more... a community, a
					family, and an organization. Teletigers Esports Club became the
					embodiment of Thomasians who enjoy video games and esports, and we
					plan to keep it that way moving on."
					<h2 class="signature" data-aos="fade-left" data-aos-delay="550">
						-Theo <a href="https://www.facebook.com/UomiPH">"Uomi"</a> Ignacio
					</h2>
					<h3 data-aos="fade-up" data-aos-delay="650">
						<span>Co-founder at Teletigers Esports Club</span><br />
						Social Media Manager at AcadArena<br />
						Caster at MPL Philippines
					</h3>
				</fieldset>
			</section>
			<section class="container-3" id="cont3">
				<div class="text">
					powered by <img src="css/images/acadarena.png" alt="founder" />
				</div>
				<div class="contact" id="contact">
					<ul>
						<li>
							<a href="https://www.facebook.com/TeletigersEsports"
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
		}, 2800);
	</script>
</html>
