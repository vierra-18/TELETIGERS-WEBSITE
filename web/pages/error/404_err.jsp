<!-- <%-- 
    Document   : login_failed
    Created on : 22 Sep 2020, 8:20:35 PM
    Author     : Robin
--%>
<%@page import="ConList.User"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/styles/error_style.css" />
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

            String header = getServletContext().getInitParameter("header");
            String footer = getServletContext().getInitParameter("footer");

        %> -->
        <div class="header_logo">
            <a href="#" data-aos="fade-right"
            ><img src="css/images/Teletigers Text.png"
            /></a>
        </div>
        <div id="container" data-aos="zoom-out">
            <div class="content">
                <h2>404</h2>
            </div>
            <div class="content2">
                <h4>The resource your trying to access <span>cannot be found</span></h4>
                <a onclick="history.back()" href="#" }/home">Back</a>
            </div>
        </div>
        <div class="footer">
            <a href="#">All Rights Reserved 2021</a>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="js/aos.js"></script>
        <script>
                            AOS.init({
                                duration: 2000,
                            });
        </script>
        <script type="text/javascript">
            var container = document.getElementById("container");
            window.onmousemove = function (i) {
                var x = -i.clientX / 5;
                y = -i.clientY / 5;
                container.style.backgroundPositionX = x + "px";
                container.style.backgroundPositionY = y + "px";
            };
        </script>
        <script>
            let val = "none";
            function toggle(num) {
                console.log("clicked!", val);
                let firstPoint = document.getElementById(num);
                if (val === "none") {
                    console.log("show!", val);
                    firstPoint.classList.add("hide");
                    firstPoint.classList.remove("show");
                    val = "display";
                } else {
                    console.log("show!", val);
                    firstPoint.classList.add("show");
                    firstPoint.classList.remove("hide");
                    val = "none";
                }
            }
        </script>
    </body>
</html>
