<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/styles/account-player_style.css" />
		<link rel="stylesheet" href="css/aos.css" />
		<link
			rel="shortcut icon"
			href="css/images/tiger-icon.png"
			type="image/x-icon"
		/>
		<title>Teletigers #tgrwin</title>
	</head>
	<body class="inactive">
		<% String header = getServletContext().getInitParameter("header"); String
		footer = getServletContext().getInitParameter("footer"); ServletContext sc =
		request.getServletContext(); if (sc.getAttribute("SessionUser") == null) {
		response.sendError(HttpServletResponse.SC_NOT_FOUND); };
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		%>
		<section class="background"></section>
		<div class="header_logo" data-aos="zoom-out">
			<a href="#"><img src="css/images/Teletigers Text.png" alt="logo" /></a>
		</div>
		<section class="main-container">
			<nav role="navigation">
				<div id="menuToggle" data-aos="fade-down" data-aos-delay="800">
					<input type="checkbox" id="checkbox" />

					<span></span>
					<span></span>
					<span></span>

					<ul id="menu">
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
						<a href="#" id="update" class="button" onclick="revert();hide();"
							><li>UPDATE PASSWORD</li></a
						>
					</ul>
				</div>
			</nav>
			<section id="modal-container">
				<div class="modal-background">
					<div class="modal">
						<form
							action="${pageContext.request.contextPath}/Update"
							method="post"
							autocomplete="off"
						>
							<h2>UPDATE PASSWORD</h2>
							<label>
								<input
									type="password"
									id="oldPass"
									name="oldPassword"
									placeholder="Old password"
								/>
							</label>
							<label>
								<input
									type="password"
									id="newPass"
									name="newPassword"
									placeholder="New password"
								/>
							</label>
							<label>
								<input
									type="password"
									id="confirmPass"
									name="confirmPassword"
									placeholder="Confirm new password"
								/>
							</label>
							<input type="submit" value="ENTER" />
						</form>
						<button id="back" class="back">Cancel</button>
					</div>
				</div>
			</section>
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
				<div class="sub-container-1">
					<div class="img-container" data-aos="fade-right" data-aos-delay="600">
						<img src="css/images/<% out.println(sc.getAttribute("SessionUser"));
						%>.png" alt="profile-picture" />
					</div>
					<fieldset
						class="text-container"
						data-aos="fade-left"
						data-aos-delay="600"
					>
						<legend><h1>ACCOUNT DETAILS</h1></legend>
						<div class="text">
							<h3>
								<b>Name</b><% out.println(sc.getAttribute("SessionName")); %>
							</h3>
							<h3>
								<b>ign </b><% out.println(sc.getAttribute("SessionUser")); %>
							</h3>
							<h3>
								<b>team</b><% out.println(sc.getAttribute("SessionGame")); %>
							</h3>
							<h3>
								<b>role</b><% out.println(sc.getAttribute("SessionRole"));%>
							</h3>
						</div>
					</fieldset>
				</div>
			</section>
		</section>
	</body>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="js/aos.js"></script>
	<script>
		AOS.init({
			duration: 2000,
		});
		window.onload = function () {
			$(".bg-1, .bg-2, .bg-title").addClass("active");
		};

		window.onunload = function () {
			window.scrollTo(0, 0);
		};

		$(".button").click(function () {
			var buttonId = $(this).attr("id");
			$("#modal-container").removeClass("out").addClass(buttonId);
		});
		$("#back").click(function () {
			$("#modal-container").addClass("out");
			window.setTimeout(function () {
				$("#modal-container").removeClass("update");
			}, 400);
		});

		function revert() {
			var cbox = document.getElementById("checkbox");
			cbox.checked = !cbox.checked;
		}
	</script>
</html>
