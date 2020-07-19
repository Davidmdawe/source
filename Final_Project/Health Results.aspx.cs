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


namespace oddRation{ 

    public partial class Health_Results : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["SQ_Server"].ConnectionString;
            MySqlConnection con = new MySqlConnection(mainconn);

            int Age;
           int Decile = 0;
          
            //string anything;
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from healthResult1", con);
            MySqlDataReader da = cmd.ExecuteReader();
            string res = Session["value"].ToString();
            while (da.Read())
            {
                Age = int.Parse(da.GetValue(0).ToString());
                string Gender = da.GetValue(1).ToString();
                string Smoke = da.GetValue(2).ToString();
                string Diabetes = da.GetValue(3).ToString();
                string Cardiovascular = da.GetValue(4).ToString();
                string Respiratory = da.GetValue(5).ToString();
                string cancer = da.GetValue(6).ToString();
                string Hypertension = da.GetValue(7).ToString();

               string Email = da.GetValue(10).ToString();




                //Decile = int.Parse(da.GetValue(9).ToString());

                if (Email == res)
                {

                    if (Gender == "Male")
                    {
                        if (Smoke == "No")
                        {/******************************************/
                            if (Cardiovascular == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 2;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }
                            //Cardiovascular condition
                            else if (Respiratory == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }//end of condition

                            //Respiratory condition
                            else if (Hypertension == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//end of condition

                            //Hypertension condition
                            else if (Diabetes == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//END OF CONDITION FOR YES

                            /**********************/
                            else if (Hypertension == "No" && Respiratory == "No" && Cardiovascular == "No" && Diabetes == "No")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 1;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 8;

                                }
                            }//END OF NON SMOKER CONDITION 

                        }
                        /************** SMOKER CONDITION ******************/
                        else if (Smoke == "Yes")
                        {/******************************************/
                            if (Cardiovascular == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }
                            //Cardiovascular condition
                            else if (Respiratory == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }//end of condition

                            //Respiratory condition
                            else if (Hypertension == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }//end of condition

                            //Hypertension condition
                            else if (Diabetes == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }//END OF CONDITION FOR YES

                            /**********************/
                            else if (Hypertension == "No" && Respiratory == "No" && Cardiovascular == "No" && Diabetes == "No")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//END OF MALE SMOKERS CONDITION 

                        }

                        /********************FEMALE section******************************************************/



                    }/**************START*************************************/

                    if (Gender == "Female")
                    {
                        if (Smoke == "No")
                        {/******************************************/
                            if (Cardiovascular == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 2;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }
                            //Cardiovascular condition
                            else if (Respiratory == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//end of condition

                            //Respiratory condition
                            else if (Hypertension == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//end of condition

                            //Hypertension condition
                            else if (Diabetes == "Yes")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 8;

                                }
                            }//END OF CONDITION FOR YES

                            /**********************/
                            else if (Hypertension == "No" && Respiratory == "No" && Cardiovascular == "No" && Diabetes == "No")
                            {
                                if (Age <= 9 && Age >= 0)
                                {
                                    Decile = 1;
                                }
                                else if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 1;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 7;

                                }
                            }//END OF NON SMOKER CONDITION 

                        }
                        /************** SMOKER CONDITION ******************/
                        else if (Smoke == "Yes")
                        {/******************************************/
                            // Cardiovascular condition
                            if (Cardiovascular == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 10;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }
                            //Cardiovascular condition
                            else if (Respiratory == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 10;

                                }
                            }//end of condition

                            //Respiratory condition
                            else if (Hypertension == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//end of condition

                            //Hypertension condition
                            else if (Diabetes == "Yes")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 8;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 9;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 9;

                                }
                            }//END OF CONDITION FOR YES

                            /**********************/
                            else if (Hypertension == "No" && Respiratory == "No" && Cardiovascular == "No" && Diabetes == "No")
                            {
                                if (Age <= 19 && Age >= 10)

                                {
                                    Decile = 2;

                                }
                                else if (Age >= 20 && Age <= 39)

                                {
                                    Decile = 3;

                                }
                                else if (Age >= 40 && Age <= 49)

                                {
                                    Decile = 4;

                                }
                                else if (Age >= 50 && Age <= 59)

                                {
                                    Decile = 5;

                                }
                                else if (Age >= 60 && Age <= 69)

                                {
                                    Decile = 6;

                                }
                                else if (Age >= 70 && Age <= 79)

                                {
                                    Decile = 7;

                                }
                                else if (Age >= 80)

                                {
                                    Decile = 8;

                                }
                            }//END OF MALE SMOKERS CONDITION 

                        }



                    }
                    //TextBox1.Text = "Decile=" + Decile.ToString() + " " + " Age=" + Age;


                }

            }
            /**checking gmail with decile**/
            if (Decile == 1)
            {
                Response.Redirect("dec1.aspx");
            }
            /*-------*/
            else if (Decile == 2)
            {
                Response.Redirect("dec2.aspx");
            }
            else if (Decile == 3)
            {
                Response.Redirect("dec3.aspx");
            }
            /**-----**/
            else if (Decile == 4)
            {
                Response.Redirect("dec4.aspx");
            }
            /**-----**/
            else if (Decile == 5)
            {
                Response.Redirect("dec5.aspx");
            }
            /**-----**/
            else if (Decile == 6)
            {
                Response.Redirect("dec6.aspx");
            }
            /**-----**/
            else if (Decile == 7)
            {
                Response.Redirect("dec7.aspx");
            }
            /**-----**/
            else if (Decile == 8)
            {
                Response.Redirect("dec8.aspx");
            }
            /**-----**/
            else if (Decile == 9)
            {
                Response.Redirect("dec9.aspx");
            }
            /**-----**/
            else if (Decile == 10)
            {
                Response.Redirect("dec10.aspx");
            }
            /*-------------------------------------------------------*/


            con.Close();


        }
    }
}