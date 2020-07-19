using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;



namespace oddRation
{
    public partial class Screening_Results : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["SQ_Server"].ConnectionString;
            MySqlConnection con = new MySqlConnection(mainconn);

            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from Screening", con);
            MySqlDataReader da = cmd.ExecuteReader();

           string ress = Session["value"].ToString();

            /***************************************/
           int family_member1 = 1;
                /*****************************************/
           int Covid_Score = 1;
           int FS = 1, DCS = 1, STS = 1, HS = 1, TS = 1, SBS = 1, APS = 1, DS = 1, RNS = 1, RSS = 1, CS = 1, MPS = 1, LS = 1;
                

            /****while loop*****/
             while (da.Read())
            {
                string Email = da.GetValue(2).ToString();
                string fever = da.GetValue(3).ToString();
                string Dry_Cough = da.GetValue(4).ToString();
                string Sore_Throat = da.GetValue(5).ToString();
                string Headache = da.GetValue(6).ToString();
                string Tiredness = da.GetValue(7).ToString();
                string Breath = da.GetValue(8).ToString();
                string Aches = da.GetValue(9).ToString();
                string Diarrhoea = da.GetValue(10).ToString();
                string Runny_Nose = da.GetValue(11).ToString();
                string Shaking = da.GetValue(12).ToString();
                string Chills = da.GetValue(13).ToString();
                string Muscle_Pain = da.GetValue(14).ToString();
                string Loss_of_Taste_Or_Smell = da.GetValue(15).ToString();
                //int family_member1= da.GetValue(14).ToString();
                
               if (Email == ress)
               {

                    if (fever == "Yes")
                    {
                        FS = 10;
                    }
                    else
                    {
                        FS = 1;
                    }

                    
                    if (Dry_Cough == "Yes")
                    {
                        DCS = 2;
                    }
                    else
                    {
                        DCS = 1;
                    }
                     
                     if (Sore_Throat == "Yes")
                    {
                        STS = 3;
                    }
                    else
                    {
                        STS = 1;
                    } 
                    
                    if (Headache == "Yes")
                    {
                        HS = 2;
                    }
                    else
                    {
                        HS = 1;
                    } 
                     
                    if (Tiredness == "Yes")
                    {
                        TS = 2;
                    }
                    else
                    {
                        TS = 1;
                    }
                     
                    if (Breath == "Yes")
                    {
                        SBS = 2;
                    }
                    else
                    {
                        SBS = 1;
                    }
                    
                    if (Aches == "Yes")
                    {
                        APS = 2;
                    }
                    else
                    {
                        APS = 1;
                    }
                     
                    if (Diarrhoea == "Yes")
                    {
                        DS = 2;
                    }
                    else
                    {
                        DS = 1;
                    }
                     
                    if (Runny_Nose == "Yes")
                    {
                        RNS = 2;
                    }
                    else 
                    {
                        RNS = 1;
                    }
                    
                    if (Shaking == "Yes")
                    {
                        RSS = 2;
                    }
                    else
                    {
                        RSS = 1;
                    }
                   
                    if (Chills == "Yes")
                    {
                    CS = 2;
                    }
                    else
                    { 
                    CS = 1;
                    }
                    
                    if (Muscle_Pain == "Yes")
                    {
                        MPS = 2;
                    }
                    else
                    {
                        MPS = 1;
                    }

                    if (Loss_of_Taste_Or_Smell == "Yes")
                    {
                        LS = 2;
                    }
                    else 
                    {
                        LS = 1;
                    }
                     
                    Covid_Score = FS * DCS * STS * HS * TS * SBS * APS * DS * RNS * RSS * CS * MPS * LS ;
                /* */

                }
                /*--------------------------*/





            }
            
            //TextBox1.Text = "Screening Score=" + Covid_Score.ToString();
            con.Close();


            if (Covid_Score <= 9)
            {
                Response.Redirect("screener0.aspx");
            }

            else if (Covid_Score > 9 && Covid_Score <= 30)
            {
                Response.Redirect("screener2.aspx");
            }
            else if (Covid_Score > 30 && Covid_Score < 80)
            {
                Response.Redirect("screener5.aspx");
            }

            else if (Covid_Score >= 80 && Covid_Score < 500)
            {
                Response.Redirect("screener7.aspx");
            }

            else if (Covid_Score >= 500)
            {
                Response.Redirect("screener9.aspx");
            }
            /*************************/




        }
    }
}