<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/landing_style.css" />
		<link rel="stylesheet" href="css/aos.css" />
		<link
			rel="shortcut icon"
			href="css/images/tiger-icon.png"
			type="image/x-icon"
		/>
		<title>Teletigers #tgrwin</title>
	</head>
	<body>
		<section class="background"></section>
		<section class="bg-1"></section>
		<section class="bg-2"></section>

		<section class="main-container">
			<img
				class="logo"
				src="css/images/LOGO_TELETIGERS 3.png"
				data-aos="zoom-out"
				data-aos-delay="2000"
			/>
			<section class="baddest-tgr" data-aos="zoom-in">
				<div
					data-aos="fade-up"
					data-aos-delay="3100"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub t1">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-up"
					data-aos-delay="2900"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub t2">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-up"
					data-aos-delay="2700"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub t3">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-up"
					data-aos-delay="2500"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub t4">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-up"
					data-aos-delay="2300"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub t5">TELETIGERS</h1>
				</div>
				<div id="mid">
					<a href="home" class="mid-button" data-aos="zoom-in">
						<h1 class="mid">TELETIGERS</h1>
					</a>
				</div>
				<div
					data-aos="fade-down"
					data-aos-delay="2300"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub b1">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-down"
					data-aos-delay="2500"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub b2">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-down"
					data-aos-delay="2700"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub b3">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-down"
					data-aos-delay="2900"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub b4">TELETIGERS</h1>
				</div>
				<div
					data-aos="fade-down"
					data-aos-delay="3100"
					data-aos-anchor="#mid"
					data-aos-anchor-placement="top-center"
				>
					<h1 class="sub b5">TELETIGERS</h1>
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
			$(".bg-1").addClass("active");
			$(".bg-2").addClass("active");
		};
		window.setTimeout(function () {
			$(".baddest-tgr").addClass("active");
		}, 1500);

		//		window.setTimeout(function () {
		//			$(".b1, .t5").addClass("active");
		//		}, 3500);
		//		window.setTimeout(function () {
		//			$(".b1, .t5").removeClass("active");
		//		}, 3700);
		//
		//		window.setTimeout(function () {
		//			$(".b2, .t4").addClass("active");
		//		}, 3600);
		//		window.setTimeout(function () {
		//			$(".b2, .t4").removeClass("active");
		//		}, 3800);
		//
		//		window.setTimeout(function () {
		//			$(".b3, .t3").addClass("active");
		//		}, 3700);
		//		window.setTimeout(function () {
		//			$(".b3, .t3").removeClass("active");
		//		}, 3900);
		//
		//		window.setTimeout(function () {
		//			$(".b4, .t2").addClass("active");
		//		}, 3800);
		//		window.setTimeout(function () {
		//			$(".b4, .t2").removeClass("active");
		//		}, 4000);

		for (let i = 0; i < 5; i++) {
			setTimeout(function () {
				$(`.b\${1 + i}, .t\${5 - i}`).addClass("active");
			}, 3700 + i * 100);
			setTimeout(function () {
				$(`.b\${1 + i}, .t\${5 - i}`).removeClass("active");
			}, 3900 + i * 100);
		}
	</script>
</html>
