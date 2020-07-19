using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace oddRation
{
    public partial class Screening_Test1 : System.Web.UI.Page
    {
         
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public static bool ValidateEmail(string email)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
                return true;
            else
                return false;
        }



        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["SQ_Server"].ConnectionString;
            MySqlConnection con = new MySqlConnection(mainconn);


            string Fever = "";
            string Cough = string.Empty;
            string Throat = string.Empty;
            string Headache = string.Empty;
            string Tiredness = string.Empty;
            string Breath = string.Empty;
            string Aches = string.Empty;
            string Diarrhoea = string.Empty;
            string Nose = string.Empty;
            string Shaking = string.Empty;
            string Chills = string.Empty;
            string Muscle = string.Empty;
            string smell = string.Empty;
            string household = string.Empty;
            //con1
            

            if (RadiofeverYes.Checked)
            {
                Fever = "Yes";
            }
            else
            {
                Fever = "No";
            }
            //***********************
            if (RadioDryYes.Checked)
            {
                Cough = "Yes";
            }
            else
            {
                Cough = "No";
            }
            //***********************
            if (RadiosoreYes.Checked)
            {
                Throat = "Yes";
            }
            else
            {
                Throat = "No";
            }
            //******************
            if (RadioheadYes.Checked)
            {
                Headache = "Yes";
            }
            else
            {
                Headache = "No";
            }
            //******************
            if (RadioTirednessYes.Checked)
            {
                Tiredness = "Yes";
            }
            else
            {
                Tiredness = "No";
            }
            //******************
            if (RadioBreathYes.Checked)
            {
                Breath = "Yes";
            }
            else
            {
                Breath = "No";
            }
            //******************
            if (RadioAchesYes.Checked)
            {
                Aches = "Yes";
            }
            else
            {
                Aches = "No";
            }
            //******************
            if (RadioDiarrhoeaYes.Checked)
            {
                Diarrhoea = "Yes";
            }
            else
            {
                Diarrhoea = "No";
            }
            //******************
            if (RadioNoseYes.Checked)
            {
                Nose = "Yes";
            }
            else
            {
                Nose = "No";
            }
            //******************
            if (RadioShakingYes.Checked)
            {
                Shaking = "Yes";
            }
            else
            {
                Shaking = "No";
            }

            //******************
            if (RadioChillsYes.Checked)
            {
                Chills = "Yes";
            }
            else
            {
                Chills = "No";
            }

            //******************
            if (RadioMuscleYes.Checked)
            {
                Muscle = "Yes";
            }
            else
            {
                Muscle = "No";
            }

            //******************
            if (RadiosmellYes.Checked)
            {
                smell = "Yes";
            }
            else
            {
                smell = "No";
            }
            //******************
            if (RadiohouseholdYes.Checked)
            {
                household = "Yes";
            }
            else
            {
                household = "No";
            }
            //con1

            if (Screening_Test1.ValidateEmail(txtmail.Text) == true)
            {

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                //need to add radio button
                cmd.CommandText = "insert into Screening values('" + txtname.Text + "','" + txtsurname.Text + "','" + txtmail.Text + "','" + Fever + "'," +
                    "'" + Cough + "','" + Throat + "','" + Headache + "'," +
                    "'" + Tiredness + "','" + Breath + "','" + Aches + "','" + Diarrhoea + "','" + Nose + "','" + Shaking + "','" + Chills + "'," +
                    "'" + Muscle + "','" + smell + "','" + household + "',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL) ";
                cmd.ExecuteNonQuery();
                con.Close();
                /****************redirect results**********************/
                Session["value"] = txtmail.Text.ToString();
                Response.Redirect("Screening Results.aspx");

                /****************************/
            }
            else {
                Response.Write("<script>alert('Invalid Email Address')</script>");
            }
        }
    }
}