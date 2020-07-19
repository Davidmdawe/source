<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="screener0.aspx.cs" Inherits="oddRation.screener0" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Results</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

      <style>
          body
          {
              background-color:blue;
              border-color:blue;
          }
          .btn 
          {
              border: none;
              background-color: inherit;
              padding: 14px 28px;
              font-size: 16px;
              cursor: pointer;
              display: inline-block;
          }
          .btn:hover    {   background: #eee;   }
          .success      {   color: green;       }
          .info         {   color: dodgerblue;  }
          .warning      {   color: orange;      }
          .danger       {   color: red;         }
          .default      {   color: black;       }
      </style>

      <!-- Favicons -->
      <link href="img/favicon.png" rel="icon" >
      <link href="img/apple-touch-icon.png" rel="apple-touch-icon" >
      <!-- Bootstrap CSS File -->
      <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
      <!-- Libraries CSS Files -->
      <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" >
      <link href="lib/animate/animate.min.css" rel="stylesheet" >
      <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" >
      <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" >
      <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" >
      <!-- Main Stylesheet File -->
      <link href="css/style.css" rel="stylesheet">
 </head >


<body id="page-top">
    <!--/ Nav Star /-->
    <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background-color:firebrick">
        <a class="navbar-brand js-scroll" href="#page-top"></a>
        <img src="/img/logo.png" style="width:140px; height:128px; position:absolute; top:15px; left:20px; border:solid; border-color:firebrick;" />
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll active" href="index1.html" style=" color:white; font-size:18px; position:absolute; right:100px; bottom:-15px">Home</a>
                </li>            
            </ul>
        </div>
    </nav>
    <!--/ Nav End /-->
    <!-- / Intro Skew Star / -->
    <div id="home" class="intro route bg-image" style="background-image: url('../../img/whiteHD.jpg');">
        <!--div class="overlay-itro"> </div-->
        <div class="intro-content display-table">
            <div class="table-cell">
                <div class="container">
                    <h2 style="color:white;">.</h2>
                    <!-- <p class="display-6 color-d" > Hello, world!</p >-->
                    <h1 style="color:black; position:relative; bottom:0" class="intro-title mb-4">RESULTS</h1>
                    <img src="/img/Visuals/screener0.jpg" style=" position:relative; top:0; left:0; border:solid; border-color:gray; height:auto; max-width:100%" />
                    <button style="color:white; width:300px; height:80px; position:relative; right:0px; top:25px; font-size:24px; text-align:center; padding: 12px 0px; background-color:firebrick; border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)" onclick="location.href ='index1.html';" id="myButton" class="btn btn-link"><b>Home</b></button>
                    <!--button style="color:white; width:300px; height:80px; position:relative; right:0px; top:25px; font-size:24px; text-align:center; padding: 12px 0px; background-color:firebrick; border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)" onclick="location.href ='index1.html';" id="email" class="btn btn-link"><b>Email my results</b></button-->
                    </div>
            </div>
        </div>
    </div>
    <!-- / Intro Skew End  / -->

   

    <a href="#" class="back-to-top"> <i class="fa fa-chevron-up"> </i> </a>
    <div id="preloader"> </div>
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
      </html >
