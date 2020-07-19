<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="oddRation.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login Page</title>
    
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>
    <link href="Covid%2019App/covid19web/css/Style1.css" rel="stylesheet" />
    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon"/>
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon"/>

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="lib/animate/animate.min.css" rel="stylesheet"/>
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet"/>
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet"/>

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet"/>
</head>

<body>
    <!--********************************************************************-->
    <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll" href="#page-top"></a>
        <img src="/img/logo.png" style="width:140px;height:128px;"/>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation"></button>
        <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link js-scroll" href="index1.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link js-scroll" href="registration.aspx">Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link js-scroll active" href="login.aspx">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link js-scroll" href="contact.aspx">Contact</a>
            </li>
        </ul>
        </div>
    </div>
    </nav>
    <!--********************************************************************-->
    <div id="home" class="intro route bg-image" style=" background-image: url('img/c19hd1.jpg')"></div>;
    <div class="loginbox">

    <h2 style="color:white;"> Login Here </h2>
    <form runat="server">
        <asp:label Text="Email" CssClass="lblemail"  runat="server"/>
        <asp:Textbox CssClass="txtemail" placeholder="Enter Email"  runat="server"/>
        <asp:label Text="Password" CssClass="lblpass"  runat="server"/>
        <asp:Textbox CssClass="txtpass" placeholder="Enter Password" runat="server"/>
        <asp:Button  Text="Sign In" CssClass="btnsubmit" runat="server"/>
        <asp:LinkButton Text="Forgot Password" CssClass="btnforgot" runat="server" />
    </form>
    </div>

    <!-- JavaScript Libraries -->
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/jquery/jquery-migrate.min.js"></script>
    <script src="lib/popper/popper.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/counterup/jquery.waypoints.min.js"></script>
    <script src="lib/counterup/jquery.counterup.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/typed/typed.min.js"></script>
  
    <!-- Template Main Javascript File -->
    <script src="js/main.js"></script>

</body>
</html>
