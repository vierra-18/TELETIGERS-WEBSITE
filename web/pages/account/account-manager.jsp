<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/styles/account-manager_style.css" />
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
						<a href="#" id="update" class="button" onclick="revert()"
							><li>MANAGER CONTROL</li></a
						>
						<a href="#"
							><li>
								DOWNLOAD DATA
								<form
									action="${pageContext.request.contextPath}/ManagerPDF"
									method="post"
									id="download-form"
								>
									<input type="submit" value="DOWNLOAD" id="download" />
								</form></li
						></a>
					</ul>
				</div>
			</nav>
			<section id="modal-container">
				<div class="modal-background">
					<div class="modal-2">
						<form
							action="${pageContext.request.contextPath}/Update"
							method="post"
							autocomplete="off"
						>
							<h2>REGISTER</h2>
							<label id="lbl1">
								<input
									type="text"
									id="Fullname"
									name="Fullname"
									placeholder="Full name"
								/>
							</label>
							<label>
								<input
									type="text"
									id="Ign"
									name="Ign"
									placeholder="In-game-name"
								/>
							</label>
							<label>
								<input type="text" id="game" name="game" placeholder="Game" />
							</label>
							<label>
								<input
									type="password"
									id="pass"
									name="password"
									placeholder="Password"
								/>
							</label>
							<label>
								<input
									type="password"
									id="conPass"
									name="conPassword"
									placeholder="Confirm password"
								/>
							</label>
							<input type="hidden" name="command" value="Add" />
							<input type="submit" value="ENTER" />
						</form>
					</div>
					<div class="modes">
						<div class="modal-3">
							<form
								action="${pageContext.request.contextPath}/Update"
								method="post"
								autocomplete="off"
							>
								<h2>DELETE USER</h2>
								<label>
									<input
										type="text"
										id="userDelete"
										name="userDelete"
										placeholder="IGN of player to remove"
									/>
								</label>
								<input type="hidden" name="command" value="Delete" />
								<input type="submit" value="ENTER" />
							</form>
						</div>
						<div class="modal-1">
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
										name="oldPassword2"
										placeholder="Old password"
									/>
								</label>
								<label>
									<input
										type="password"
										id="newPass"
										name="newPassword2"
										placeholder="New password"
									/>
								</label>
								<label>
									<input
										type="password"
										id="confirmPass"
										name="confirmPassword2"
										placeholder="Confirm new password"
									/>
								</label>
								<input type="hidden" name="command" value="Password" />
								<input type="submit" value="ENTER" />
							</form>
						</div>
						<button id="back" class="back">
							<i class="far fa-times-circle"></i>
						</button>
					</div>
				</div>
			</section>
			<section class="container-1" id="cont1">
				<ul class="header-opt">
					<li data-aos="fade-down" data-aos-delay="400">
						<a href="achievements_">Achievements</a>
					</li>
					<li data-aos="fade-down" data-aos-delay="600">
						<a href="gamepick_">Teams</a>
					</li>
					<li data-aos="fade-down" data-aos-delay="800">
						<a href="home_">Home</a>
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
								<b>role</b><% out.println(sc.getAttribute("SessionRole")); %>
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
			console.log("tangina");
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
