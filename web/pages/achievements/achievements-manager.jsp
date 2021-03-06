<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/styles/achievements-manager_style.css" />
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
	<body>
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
						<a href="account_"><li>ACCOUNT</li></a>
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
			<ul class="header-opt" data-aos="fade-in">
				<li><a href="gamepick_">Teams</a></li>
				<li><a href="home_">Home</a></li>
			</ul>
			<section class="container_1">
				<div class="cardList">
					<div class="cards__wrapper">
						<div class="card current--card">
							<div class="card__image">
								<img src="css/images/drop.jpg" alt="" class="image" />
							</div>
						</div>
						<div class="card next--card">
							<div class="card__image">
								<img src="css/images/valobg.jpg" alt="" class="image" />
							</div>
						</div>
						<div class="card previous--card">
							<div class="card__image">
								<img src="css/images/computer.jpg" alt="" class="image" />
							</div>
						</div>
					</div>
				</div>
				<div class="infoList">
					<div class="info__wrapper">
						<div class="info current--info">
							<h1 class="text name">Lorem.</h1>
							<h4 class="text location">Lorem.</h4>
							<p class="text description">
								Lorem ipsum dolor sit amet consectetur adipisicing.
							</p>
						</div>
						<div class="info next--info">
							<h1 class="text name">Lorem.</h1>
							<h4 class="text location">Lorem.</h4>
							<p class="text description">
								Lorem ipsum dolor sit amet consectetur.
							</p>
						</div>
						<div class="info previous--info">
							<h1 class="text name">Lorem.</h1>
							<h4 class="text location">Lorem.</h4>
							<p class="text description">
								Lorem ipsum dolor sit amet consectetur.
							</p>
						</div>
					</div>
				</div>
				<div class="app__bg">
					<div class="current--image">
						<img src="css/images/drop.jpg" alt="" class="image" />
					</div>
					<div class="next--image">
						<img src="css/images/valobg.jpg" alt="" class="image" />
					</div>
					<div class="previous--image">
						<img src="css/images/computer.jpg" alt="" class="image" />
					</div>
				</div>
			</section>
			<section class="container_2"></section>
			<section class="container_3" id="cont3">
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
		<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.3/gsap.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		<script src="js/slider.js"></script>
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
		</script>
	</body>
</html>
