<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<script defer src="js/node_modules/swup/dist/swup.js"></script>
		<script defer src="js/swup-start.js"></script>
		<link rel="stylesheet" href="css/styles/page-transition_style.css" />
		<link rel="stylesheet" href="css/styles/valorant-player_style.css" />
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
	<body>
		<section class="background">
			<!-- <video autoplay muted loop id="myVideo">
                    <source src="css/images/valobg-1.mp4" type="video/mp4" />
            </video> -->
		</section>
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
						<a href="_account"><li>ACCOUNT</li></a>
						<a href="#"
							><li>
								LOGOUT
								<form
									class="data-swup-form"
									id="logout-form"
									action="${pageContext.request.contextPath}/Logout"
									method="POST"
								>
									<input
										type="submit"
										value="LOGOUT"
										id="logout"
										onclick="console.log('logout')"
									/>
								</form></li
						></a>
					</ul>
				</div>
			</nav>
			<section class="container-1" id="cont1">
				<ul class="header-opt">
					<li data-aos="fade-down" data-aos-delay="400">
						<a href="_achievements">Achievements</a>
					</li>
					<li data-aos="fade-down" data-aos-delay="600">
						<a href="_gamepick">Teams</a>
					</li>
					<li data-aos="fade-down" data-aos-delay="800">
						<a href="_home">Home</a>
					</li>
				</ul>
				<!-- --------------------------------------------------------------------------------------------------------------
				-------------------------------------------------------------------------------------------------------------- -->
				<main id="swup" class="sub-container-1 transition-fade">
					<div
						class="img-container-capt player-card"
						data-aos="fade-right"
						data-aos-delay="600"
					>
						<img
							src="css/images/TGR Exia.png"
							alt="profile-picture"
							data-aos="zoom-in"
							data-aos-delay="700"
						/>
						<div class="player-info">
							<a href="/TELETIGERS_WEBSITE/_Exia" class="player-btn"
								><h1 class="player-name">TGR EXIA</h1></a
							>
						</div>
					</div>
					<fieldset class="capt-text inactive">
						"Being a part of Teletigers, it gave me the chance to be in a team
						environment in order to improve myself not just as a student-gamer
						but also as a person. As the captain of the valorant team, it helped
						me gain confidence as well as the experience of being able to lead
						people to better ourselves in order to improve team as a whole."
						<h2 class="signature" data-aos="fade-left" data-aos-delay="550">
							-Jude <a href="https://www.facebook.com/UomiPH">"Exia"</a> Rabang
						</h2>
						<h3 data-aos="fade-up" data-aos-delay="650">
							<span>Teletigers Valorant Captain</span><br />
						</h3>
					</fieldset>
					<div
						class="img-container player-card"
						data-aos="fade-right"
						data-aos-delay="700"
					>
						<img
							src="css/images/BE Arquiza.png"
							alt="profile-picture"
							data-aos="zoom-in"
							data-aos-delay="900"
						/>
						<div class="player-info">
							<a href="/TELETIGERS_WEBSITE/_Arquiza" class="player-btn"
								><h1 class="player-name">TGR ARQUIZA</h1></a
							>
						</div>
					</div>
					<div
						class="img-container player-card"
						data-aos="fade-right"
						data-aos-delay="800"
					>
						<img
							src="css/images/TGR Goope.png"
							alt="profile-picture"
							data-aos="zoom-in"
							data-aos-delay="1000"
						/>
						<div class="player-info">
							<a href="/TELETIGERS_WEBSITE/_Goope" class="player-btn"
								><h1 class="player-name">TGR GOOPE</h1></a
							>
						</div>
					</div>
					<div
						class="img-container player-card"
						data-aos="fade-right"
						data-aos-delay="900"
					>
						<img
							src="css/images/TGR ShoXDart.png"
							alt="profile-picture"
							data-aos="zoom-in"
							data-aos-delay="1100"
						/>
						<div class="player-info">
							<a href="/TELETIGERS_WEBSITE/_Shoxdart" class="player-btn"
								><h1 class="player-name">TGR SHOXDART</h1></a
							>
						</div>
					</div>
					<div
						class="img-container player-card"
						data-aos="fade-right"
						data-aos-delay="1000"
					>
						<img
							src="css/images/TGR eNcesane.png"
							alt="profile-picture"
							data-aos="zoom-in"
							data-aos-delay="1200"
						/>
						<div class="player-info">
							<a href="/TELETIGERS_WEBSITE/_Encesane" class="player-btn"
								><h1 class="player-name">TGR ENCESANE</h1></a
							>
						</div>
					</div>
				</main>
				<div class="overlay-1 transition-wipedown"></div>
				<div class="overlay-2 transition-wipeup"></div>
				<div class="overlay-3 transition-show">
					<h1 id="overtext">#TGRWIN</h1>
				</div>
				<!-- --------------------------------------------------------------------------------------------------------------
				-------------------------------------------------------------------------------------------------------------- -->
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
		});

		window.onunload = function () {
			window.scrollTo(0, 0);
		};

		function reload() {
			$(".player-card").hover(function () {
				$(this).find(".player-info").toggleClass("active");
			});

			$(".player-btn").click(function () {
				var name = $(this).text();
				$("#overtext").html("#" + name);
			});

			window.addEventListener("DOMContentLoaded", function () {
				var form = $("#logout-form");

				$("#logout").click(function () {
					form.submit();
				});
			});
		}

		function seeLess() {
			$("#overtext").html("#TGRWIN");
		}

		function revert() {
			var cbox = document.getElementById("checkbox");
			cbox.checked = !cbox.checked;
		}

		reload();
		document.addEventListener("swup:contentReplaced", reload);
	</script>
</html>
