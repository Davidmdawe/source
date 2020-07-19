<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="oddRation.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>contact page</title>
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
     <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll" href="#page-top">Covid-19 Status</a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        
      </button>
      <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll" href="index1.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll" href="registration.aspx">Sign Up</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link js-scroll " href="login.aspx">Login</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll active" href="contact.aspx">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <!--********************************************************************-->
    <form id="form1" runat="server">
        <div>
            <!--from index page-->
            <div class="more-info">
                    
                    <ul class="list-ico">
                      <li><span class="ion-ios-location"></span> 372 Main Road,Bryanston</li>
                      <li><span class="ion-ios-telephone"></span> +27 82 909 5848</li>
                      <li><span class="ion-email"></span> info@t7c.co.za</li>
                    </ul>
                  </div>
                  <div class="socials">
                    <ul>
                      <li><a href="#"><span class="ico-circle"><i class="ion-social-facebook"></i></span></a></li>
                      <li><a href="#"><span class="ico-circle"><i class="ion-social-instagram"></i></span></a></li>
                      <li><a href="#"><span class="ico-circle"><i class="ion-social-twitter"></i></span></a></li>
                      <li><a href="#"><span class="ico-circle"><i class="ion-social-pinterest"></i></span></a></li>
                    </ul>
                  </div>
             <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="contact-mf">
            <div id="contact" class="box-shadow-full">
              <div class="row">
                <div class="col-md-6">
                  <div class="title-box-2">
                    <h5 class="title-left">
                      Send Message Us
                    </h5>
                  </div>
                  <div>
                      <form action="" method="post" role="form" class="contactForm">
                      <div id="sendmessage">Your message has been sent. Thank you!</div>
                      <div id="errormessage"></div>
                      <div class="row">
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12 mb-3">
                            <div class="form-group">
                              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                              <div class="validation"></div>
                            </div>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                          </div>
                        </div>
                        <div class="col-md-12">
                          <button type="submit" class="button button-a button-big button-rouded">Send Message</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="title-box-2 pt-4 pt-md-0">
                    <h5 class="title-left">
                      Get in Touch
                    </h5>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div></section>
            <!---->
        </div>
    </form>
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

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
    <script src="Covid%2019App/covid19web/contactform/contactform.js"></script>
</body>
</html>
