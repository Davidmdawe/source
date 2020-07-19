<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Screening Test1.aspx.cs" Inherits="oddRation.Screening_Test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Covid-19 Symptom Check</title>

    <style type="text/css">
        .rbutton        {  font-size:20px; transform:scale(1.25); text-indent:8px; position:relative; left:50px;}
        .rbutton2       {  font-size:20px; transform:scale(1.25); text-indent:8px; position:relative; left:70px; margin-right:5%}
        .auto-style2 {  font-size:24px; }
        .auto-style5 {  position:relative; max-width:220px; width:auto; margin-right:5%}
        .submitbtn   {  color:white; background-color:olivedrab; font-size:32px; font-family:arial; position:relative; left:-75px; width:182px; top:15px; padding:5px 30px;  border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)}
       
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

<div>
    <div class="intro-content display-table" style="background-image: url('../../img/whiteHD.jpg');">
        <div class="table-cell">
            <div class="container" >
            <form id="form1" runat="server" style="position:relative; left:auto; top:100px; max-width:100%; height:auto; margin-left:5%; margin-right:5%; margin-bottom:10%;">
                <div><h1 style="position:relative; top:0px; text-align:center; max-width:900px; width:auto; color:white; background-color:olivedrab; font-size:54px; border-radius:25px 10px; box-shadow:10px 10px rgba(0,0,0,0.2)"><b>COVID-19 SYMPTOM CHECK</b></h1></div>

                <table style="position:relative; top:15px;">
                <!--******************************-->
  
                <tr><!--**********starting the questions********************-->
                <td class="auto-style2">First Name</td>
                <td class="auto-style5"> <asp:TextBox  ID="txtname" runat="server"></asp:TextBox> </td>
                </tr>

                <tr><!--**********starting the questions********************-->
                <td class="auto-style2">Surname</td>
                <td class="auto-style5"> <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox> </td>
                </tr>
      


                <tr><!--**********starting the questions********************-->
                <td class="auto-style2">Email Address</td>
                <td class="auto-style5"> <asp:TextBox ID="txtmail" runat="server"></asp:TextBox> </td>
                </tr>
      
     
       
                <!--******************************-->
                <tr>
                <td class="auto-style2">Fever</td><!--Still need to sort out-->
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadiofeverYes" GroupName="Fever" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadiofeverNo" GroupName="Fever"  Text="No" runat="server" />
                </td>
                </tr>
                <!--******************************-->

   
                <tr><!--Still need to sort out-->
                <td class="auto-style2">Dry Cough</td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioDryYes" GroupName="Dry Cough" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioDryNo" GroupName="Dry Cough" Text="No" runat="server" />
                </td>
                </tr>
                <!--******************************-->

   
                <tr><!--Still need to sort out-->
                <td class="auto-style2" >Sore Throat </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadiosoreYes" GroupName="Sore Throat" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadiosoreNo" GroupName="Sore Throat"  Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Headache  </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioheadYes" GroupName="Headache" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioheadNo" GroupName="Headache" Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Tiredness   </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioTirednessYes" GroupName="Tiredness" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioTirednessNo"  GroupName="Tiredness"  Text="No" runat="server" />
                </td></tr>
     
                <tr><!--Still need to sort out-->
                <td class="auto-style2">Shortness of Breath    </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioBreathYes" GroupName="Shortness of Breath" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioBreathNo" GroupName="Shortness of Breath" Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Aches and Pains   </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioAchesYes" GroupName="Aches and Pains" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioAchesNo" GroupName="Aches and Pains"  Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Diarrhoea    </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioDiarrhoeaYes" GroupName="Diarrhoea" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioDiarrhoeaNo"  GroupName="Diarrhoea" Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Runny Nose    </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioNoseYes" GroupName="Runny Nose" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioNoseNo"  GroupName="Runny Nose" Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Repeated Shaking    </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioShakingYes" GroupName="Repeated Shaking " Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioShakingNo" GroupName="Repeated Shaking " Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Chills     </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioChillsYes" GroupName="Chills" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioChillsNo" GroupName="Chills" Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Muscle Pain    </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadioMuscleYes" GroupName="Muscle Pain" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadioMuscleNo" GroupName="Muscle Pain" Text="No" runat="server" />
                </td>
                </tr>

                <tr><!--Still need to sort out-->
                <td class="auto-style2">Loss of taste or smell  </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadiosmellYes" GroupName="Loss of taste or smell" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadiosmellNo" GroupName="Loss of taste or smell" Text="No" runat="server" />
                </td>
                </tr>
                <tr><!--Still need to sort out-->
                <td class="auto-style2">Household members with symptoms         </td>
                <td class="auto-style1"> 
                <asp:RadioButton CssClass="rbutton" ID="RadiohouseholdYes" GroupName="household members" Text="Yes" runat="server" />
                <asp:RadioButton CssClass="rbutton2" ID="RadiohouseholdNo" GroupName="household members" Text="No" runat="server" />
                </td>
                </tr>
                
                <tr><!--Still need to sort out-->
                <td> </td>
                <td> 
                <asp:Button CssClass="submitbtn" ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click"  />
                </td>
                </tr>

                </table>         
               </form>
            </div>
        </div>
    </div>
    </div>
</body>
</html>
