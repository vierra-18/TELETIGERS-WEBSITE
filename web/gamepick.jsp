<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/gamepick_style.css" />
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
	<body class="inactive">
		<section class="background"><h1 class="bg-title">#TGRWIN</h1></section>
		<section class="bg-1"></section>
		<section class="bg-2"></section>
		<div class="header_logo" data-aos="zoom-out">
			<a href="#"><img src="css/images/Teletigers Text.png" alt="logo" /></a>
		</div>
		<section class="main-container">
			<section class="container-1" id="cont1">
				<ul class="header-opt" data-aos="fade-in">
					<li><a href="#">Achievements</a></li>
					<li><a href="home">Home</a></li>
					<li><a href="login">Login</a></li>
				</ul>
			</section>
			<section class="container-2" id="cont2">
				<div class="contain">
					<div
						class="block backfade orange leagueOlego"
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
						class="block backfade green valo"
						data-aos="fade-right"
						data-aos-duration="700"
						data-aos-delay="2600"
					>
						<a href="valorant"
							><div class="logo">
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
		}, 2800);
	</script>
</html>
