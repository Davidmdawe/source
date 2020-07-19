<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Health Risk Test.aspx.cs" Inherits="oddRation.Health_Risk_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .rbutton        {  font-size:20px; transform:scale(1.25); text-indent:8px; position:relative; left:80px;}
        .rbutton2       {  font-size:20px; transform:scale(1.25); text-indent:8px; position:relative; left:120px;}
        .auto-style2    {  font-size:24px; }
        .auto-style5    {  position:relative; left:80px;  width:auto; max-width:250px;}
        .submitbtn      {  color:white; background-color:deepskyblue;  Width:182px; font-size:32px; position:relative; left:-20px; top:50px; padding:5px 30px;  border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)}
       
    </style>
</head>
<body id="page-top">
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
                    <a class="nav-link js-scroll active" href="index1.html" style="color:white; font-size:20px; position:absolute; right:100px; top:30px">Home</a>
                </li>
            </ul>
        </div>
    </nav>
    <!--/ Nav End /-->
    <!-- / Intro Skew Star / -->

    <div>
    <div class="intro-content display-table" style="background-image: url('../../img/whiteHD.jpg');">
        <div class="table-cell">
            <div class="container" >
            <form id="form1" runat="server" style="position:relative; left:auto; top:100px; max-width:100%; height:auto; margin-left:5%; margin-right:5%;">
            <h1 style="position:relative;  text-align:center; max-width:650px; width:auto; color:white; background-color:deepskyblue; font-size:54px; border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)"><b>MORTALITY RISK</b></h1>
            <h2 style="position:relative; top:auto; left:auto; color:black">Please answer the following questions:</h2>
            <div>
            <table class="auto-style2">
            <!--******************************-->
               
            <!--**************AGE****************-->
            <tr>
            <td class="auto-style2">Age</td>
            <td class="auto-style5">    <asp:TextBox ID="txtage" runat="server" ></asp:TextBox> </td>
            </tr>
            <!--*************GENDER*****************-->
                       
            <tr>
            <td class="auto-style2">Gender</td>
            <td>    <asp:RadioButton class="rbutton" ID="Radiofemale" GroupName="gender"  Text="Female" runat="server" />
                    <asp:RadioButton class="rbutton2" ID="Radiomale" GroupName="gender" Text="Male" runat="server" style="left:100px"/>   </td>
            </tr>

            <!--**************SMOKE******************-->
            <tr>
            <td class="auto-style2">Smoke</td>
            <td>    <asp:RadioButton class="rbutton" ID="RadiosmokeYes" GroupName="Do you smoke" Text="Yes" runat="server"/>
                    <asp:RadioButton class="rbutton2" ID="RadiosmokeNo" GroupName="Do you smoke"  Text="No" runat="server"/></td>
            </tr>
      
            <!--******************************-->
            <tr>
            <td class="auto-style2">Diabetes</td>
            <td>    <asp:RadioButton class="rbutton" ID="RadioDiabetesYes" GroupName="Diabetes disease" Text="Yes" runat="server"/>
                    <asp:RadioButton class="rbutton2" ID="RadioDiabetesNo" GroupName="Diabetes disease" Text="No" runat="server"/> </td>
            </tr>
            <!--******************************-->
            <tr><!--Still need to sort out-->
            <td>Cardiovascular disease </td>
            <td> 
            <asp:RadioButton class="rbutton" ID="RadioCardiovascularYes" GroupName="Cardiovascular disease" Text="Yes"  runat="server"/>
            <asp:RadioButton class="rbutton2" ID="RadioCardiovascularNo" GroupName="Cardiovascular disease" Text="No" runat="server"/>
            </td>
            </tr>
            <!--******************************-->
            <tr><!--Still need to sort out-->
            <td>Respiratory illness </td>
            <td> 
            <asp:RadioButton class="rbutton" ID="RadioRespiratoryYes" GroupName="Respiratory illness" Text="Yes" runat="server"/>
            <asp:RadioButton class="rbutton2" ID="RadioRespiratoryNo" GroupName="Respiratory illness" Text="No"  runat="server"/>
            </td>
            </tr>
            <!--******************************-->

            <tr><!--Still need to sort out-->
            <td class="auto-style3">Cancer with last 2 years</td>
            <td> 
            <asp:RadioButton class="rbutton" ID="RadioCancerYes" GroupName="Cancer" Text="Yes"  runat="server"/>
            <asp:RadioButton class="rbutton2" ID="RadioCancerNo" GroupName="Cancer" Text="No"  runat="server"/>
            </td>
            </tr>
            <!--******************************-->

            <tr><!--Still need to sort out-->
            <td>Hypertension</td>
            <td> 
            <asp:RadioButton class="rbutton" ID="RadioHypertensionYes" GroupName="Hypertension" Text="Yes" runat="server"/>
            <asp:RadioButton class="rbutton2" ID="RadioHypertensionNo" GroupName="Hypertension" Text="No"  runat="server"/>
            </td>
            </tr>
            <!--******************************-->
            <tr>
            <td>Firstname</td>
            <td class="auto-style5"> <asp:TextBox ID="txtname" runat="server"></asp:TextBox> </td>
            </tr>
            <!--******************************-->
            <tr>
            <td>Surname</td>
            <td class="auto-style5"> <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox> </td>
            </tr>
            <!--******************************-->
            <tr>
            <td>Email</td>
            <td class="auto-style5"> <asp:TextBox ID="txtmail" runat="server"></asp:TextBox> </td>
            </tr>
    
            <tr>
            <td>Height</td>
            <td class="auto-style5"> <asp:TextBox ID="txtheight" runat="server"></asp:TextBox> </td>
            </tr>
            <!--******************************-->                
            <tr>
            <td>Weight</td>
            <td class="auto-style5"> <asp:TextBox ID="txtweight" runat="server"></asp:TextBox> </td>
            </tr>
            <!--******************************-->

            <tr><!--Still need to sort out-->
            <td></td>
            <td> 
            <asp:Button class="submitbtn" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            </tr>
            </table>
            </div>
            </form>    
            </div>
        </div>
    </div>
    </div>
     
                

</body>
</html>
