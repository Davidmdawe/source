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
    public partial class Health_Risk_Test : System.Web.UI.Page
    {

      
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        public static bool ValidEmail(string email)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
                return true;
            else
                return false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["SQ_Server"].ConnectionString;
            MySqlConnection con = new MySqlConnection(mainconn);

            string Gender = string.Empty;
            string Smoke = string.Empty;
            string Diabetes = string.Empty;
            string Cardiovascular = string.Empty;
            string Respiratory = string.Empty;
            string Cancer = string.Empty;
            string Hypertension = string.Empty;


            //checking conditions1
            if (Radiofemale.Checked)
            {
                Gender = "Female";
            }
            else
            {
                Gender = "Male";
            }
            //checking conditions1
            if (RadiosmokeYes.Checked)
            {
                Smoke = "Yes";
            }
            else
            {
                Smoke = "No";
            }
            //checking conditions1
            if (RadioCardiovascularYes.Checked)
            {
                Cardiovascular= "Yes";
            }else
            {
                Cardiovascular = "No";
            }
            //checking conditions2
            if (RadioDiabetesYes.Checked)
            {
                Diabetes = "Yes";
            }
            else
            {
                Diabetes = "No";
            }
            //checking conditions3
            if (RadioRespiratoryYes.Checked)
            {
                Respiratory = "Yes";
            }
            else
            {
                Respiratory = "No";
            }
            //checking conditions4
            if (RadioCancerYes.Checked)
            {
                Cancer = "Yes";
            }
            else
            {
                Cancer = "No";
            }

            //checking conditions5
            if (RadioHypertensionYes.Checked)
            {
                Hypertension = "Yes";
            }
            else
            {
                Hypertension = "No";
            }


            if (Screening_Test1.ValidateEmail(txtmail.Text) == true)
            {

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                //need to add radio button
                cmd.CommandText = "insert into healthResult1 values('" + txtage.Text + "','" + Gender + "','" + Smoke + "','" + Diabetes + "','" + Cardiovascular + "','" + Respiratory + "','" + Cancer + "','" + Hypertension + "','" + txtname.Text + "','" + txtsurname.Text + "','" + txtmail.Text + "','" + txtheight.Text + "','" + txtweight.Text + "',NULL) ";
                cmd.ExecuteNonQuery();
                con.Close();
                /*******/
                Session["value"] = txtmail.Text.ToString();

                /***/
                /****************redirect results**********************/
                Response.Redirect("Health Results.aspx");

                /****************************/
            }
            else
            {
                Response.Write("<script>alert('Invalid Email Address')</script>");
            }


        }
    }
}