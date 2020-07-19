<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Screening Results.aspx.cs" Inherits="oddRation.Screening_Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Screening Results</title>
    <style type="text/css">
        .rbutton        {  font-size:20px; transform:scale(1.25); text-indent:8px; position:relative; left:10px;}
        .rbutton2       {  font-size:20px; transform:scale(1.25); text-indent:8px; position:relative; left:50px;}
        .auto-style2 {  font-size:24px; }
        .auto-style5 {  position:relative; left:0px;}
        .submitbtn   {  color:white; background-color:firebrick; font-size:32px; position:relative; top:20px; padding:5px 30px;  border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)}   
    </style>
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
    <!--/ Nav Start /-->
    <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background-color:firebrick; resize:horizontal">   
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
                    <a class="nav-link js-scroll active" href="index1.html" style="color:white; font-size:20px; position:absolute; right:100px; top:-25px">Home</a>
                </li>
            </ul>
        </div>
    </nav>
    <!--/ Nav End /-->

     <section style="width:100%; height:100%; background-color:white;">
            <div id="home" class="intro route bg-image" style="background-color:white">
                <div class="intro-content display-table">
                    <div class="table-cell">
                        <div class="container">
                            <h1><b>Thank you for submitting your results</b></h1>
                            <p></p>
                            
                            <img src="/img/c19_2.gif" style="border:solid; border-color:firebrick;" />
                            <p></p>
                      
                            <h2 >click the button below to view your results</h2>
                            <form id="form1" runat="server">
                                <div>
                                    <asp:Button  CssClass="submitbtn" ID="Button1" runat="server" Text="View Results" Width="300px" OnClick="Button1_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
         </section>
    
</body>
</html>
