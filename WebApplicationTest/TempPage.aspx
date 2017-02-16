<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TempPage.aspx.cs" Inherits="WebApplicationTest.TempPage" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <title><%: Page.Title %> - Raclette</title>

    <style>
        html {
            overflow: hidden
        }
    </style>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&subset=latin-ext" rel="stylesheet">

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/temp") %>

        <%: Styles.Render("~/Content/temp") %>
    </asp:PlaceHolder>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container demo-1">
            <div class="content">
                <div id="large-header" class="large-header">
                    <canvas id="myCanvas"></canvas>
                    <div class="main-title">
                        <h1>We are Coming Soon</h1>
                        <div class="demo2"></div>
                        <!--newsletter-->
                        <div class="w3layouts-newsletter">
                            <h2>Be the first to Know when website is ready</h2>
                            <form action="#" method="post">
                                <input type="email" name="email" required="" placeholder="Email" />
                                <input type="submit" value="Subscribe" />
                                <div class="clear"></div>
                            </form>
                        </div>
                        <!--//newsletter-->
                        <p class="agileinfo txt-center">&copy; 2017 Raclette. All Rights Reserved | Design by  <a href="https://vk.com/nosferatu500">Me</a></p>
                    </div>
                </div>
            </div>
        </div>

        <script>
            jQuery(document).ready(function ($) {
                $('.demo2').dsCountDown({
                    endDate: new Date("February 23, 2017 23:59:00"),
                    theme: 'black'
                });
            });
        </script>
        <script>
            window.onload = function () {
                Particles.init({
                    selector: '#myCanvas',
                    color: '#6a446b',
                    connectParticles: true,
                    minDistance: 70,
                    maxParticles: 0
                });
            };
        </script>



    </form>
</body>
</html>
