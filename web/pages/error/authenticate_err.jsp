<!-- <%-- 
    Document   : authenticate_err
    Created on : 11 11, 20, 4:14:12 PM
    Author     : Robin
--%>
<%@page import="ConList.Messenger"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/styles/authenticate_err_style.css" />
		<link rel="stylesheet" href="css/aos.css" />
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
		<div class="main-container" id="main">
			<div class="finger-print" data-aos="fade-left">
				<svg
					version="1.1"
					id="Layer_2"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink"
					x="0px"
					y="0px"
					viewBox="0 0 640 480"
					style="enable-background: new 0 0 640 480"
					xml:space="preserve"
				>
					<style type="text/css">
						.st0 {
							fill: none;
							stroke: #d36600;
							stroke-width: 5;
							stroke-miterlimit: 10;
						}
					</style>
					<path class="st0" d="M233,40c36-24,114.5-41.5,178.5,3.5" />
					<path class="st0" d="M255.5,43.5c36-25,129-24,184,39" />
					<path class="st0" d="M203.5,103.5c70-93,191-80,242,13" />
					<path class="st0" d="M183.5,105.5c27-35-5-2,54-53" />
					<path class="st0" d="M198.5,136.5c43-98,187-127,247,7" />
					<path class="st0" d="M391.5,89.5c-102-77-173,27-191,73" />
					<path
						class="st0"
						d="M406.5,105.5c0,0,60.8,50.9,7,147c-14,25-12,68,38,94"
					/>
					<path class="st0" d="M198.5,189.5c28-27,27.6-90.4,108-111" />
					<path class="st0" d="M328.5,79.5c20-7,141,35,78,169" />
					<path
						class="st0"
						d="M198.5,204.5c22-9,45-99,108-113c62.8-13.9,118,58,105,105c-14.6,52.7-85,108,32,167"
					/>
					<path class="st0" d="M448.5,351.5c0,0-78-22-52-86" />
					<path class="st0" d="M448.5,215.5c0,0-23,40-26,55s-7,41,23,63" />
					<path class="st0" d="M451.5,248.5c0,0-40,27-6,69" />
					<path class="st0" d="M198.5,225.5c0,0,52-50,60-89" />
					<path
						class="st0"
						d="M272.5,120.5c19-34,152-14,121,85c-23.8,76.1-49,77-2,141c41.6,56.6,111,27,157,29"
					/>
					<path
						class="st0"
						d="M192.5,239.5c16.4,4.1,66-70,84-103c19.7-36.1,134.1-20.2,106,62c-27,79-46.6,91.9-4,157c17,26,84,40,128,54"
					/>
					<path class="st0" d="M198.5,258.5c0,0,58-53,71-89s66-63,94-18" />
					<path class="st0" d="M371.5,170.5c11,28-43,138-168,206" />
					<path
						class="st0"
						d="M198.5,273.5c16.7-3.2,77-74,93-116c12.8-33.7,84.2-12,58,54c-25,62.8-91,122-146,152"
					/>
					<path
						class="st0"
						d="M198.5,290.5c12.1-2.2,80.6-64.6,94-111c11.5-39.6,60.8-27.1,51,18c-10.4,47.7-109,149-143,153"
					/>
					<path
						class="st0"
						d="M296.5,203.5c11-24,12-32,18-36s28,3,21,22s-81,122-125,141"
					/>
					<path class="st0" d="M198.5,305.5c6.6,3,71.7-53.8,88-87" />
					<path class="st0" d="M321.5,181.5c0,0-58,117-118,136" />
					<path class="st0" d="M349.5,255.5c0,0-38,84-143,134" />
					<path class="st0" d="M286.5,350.5c0,0,52-43,54-55s-8,36,26,61" />
					<g>
						<path
							class="st0"
							d="M331.2,329.4c0-0.9-1.1-1.3-1.7-0.7c-4.9,5.2-17.4,17.8-23,17.8c-7,0,30-1,38,4
                    C350.8,354.5,331.2,342,331.2,329.4z"
						/>
					</g>
					<path class="st0" d="M424.5,397.5c0,0,20,14,24,16" />
					<path
						class="st0"
						d="M404.5,388.5c-8-2-56.3-56.4-136-21c-29.5,13.1-42,27-76,46"
					/>
					<path class="st0" d="M262.5,387.5c0,0,52-38,110-6s59,41,71,45" />
					<path class="st0" d="M242.5,400.5c0,0-54,27-63,29" />
					<path
						class="st0"
						d="M210.5,429.5c0,0,81-42,86-45s42-8,74,10s60,39,69,43"
					/>
					<path
						class="st0"
						d="M431.5,446.5c0,0-85-48-91-49s-39-7-64,8s-32,26-57,37"
					/>
					<path class="st0" d="M228.5,450.5c0,0,45-23,53-30s38-22,64-7" />
					<path class="st0" d="M358.5,418.5c0,0,42,26,52,28" />
					<path
						class="st0"
						d="M242.5,455.5c0,0,37-15,54-29s51,0,51,0s40,27,52,35"
					/>
					<path
						class="st0"
						d="M387.5,466.5c0,0-47-27-54-32c-3.6-2.6-30-4-35,3s-31,23-40,24"
					/>
					<path class="st0" d="M306.5,449.5c0,0,14-8,25-3s30,21,35,20" />
					<path class="st0" d="M288.5,461.5c0,0-11,4-15,5" />
					<path class="st0" d="M291.5,472.5c0,0,18-12,21-15s16-2,43,18" />
					<path class="st0" d="M331.5,473.5c0,0-10-15-25,0" />
				</svg>
			</div>
			<section data-aos="fade-right">
				<h1>
					4
					<br />
					0
					<br />
					1
				</h1>
			</section>
			<section data-aos="fade-zoom-right" data-aos-delay="700">
				<h2>Authentication failed</h2>
				<h3>
					<% Messenger me = (Messenger) getServletContext().getAttribute("me");
					out.println(me);%>
				</h3>
				<a href="login">Back</a>
			</section>
		</div>
		<div class="footer" data-aos>
			<a href="#">All Rights Reserved 2021</a>
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
