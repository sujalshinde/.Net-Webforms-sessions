using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace session_10
{
    public partial class validatexp1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UserCustomValidate(object source, ServerValidateEventArgs args)
        {
            string str = args.Value;
            args.IsValid = false;
            //checking for input length greater than 6 and less than 25 characters  
            if (str.Length < 6 || str.Length > 25)
            {
                return;
            }
            //checking for a atleast a single capital letter  
            bool capital = false;
            foreach (char ch in str)
            {
                if (ch >= 'A' && ch <= 'Z')
                {
                    capital = true;
                    break;
                }
            }
            if (!capital)
            {
                return;
            }
            //checking for a atleast a single lower letter  
            bool lower = false;
            foreach (char ch in str)
            {
                if (ch >= 'a' && ch <= 'z')
                {
                    lower = true;
                    break;
                }
            }
            if (!lower)
            {
                return;
            }
            bool digit = false;
            foreach (char ch in str)
            {
                if (ch >= '0' && ch <= '9')
                {
                    digit = true;
                    break;
                }
            }
            if (!digit)
            {
                return;
            }
            args.IsValid = true;

           





           

            }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("insert into Table_3 values (@name,@password, @ConfirmPassword,@age,@email,@username)", con);
            cmd1.Parameters.AddWithValue("@name", txtname.Text);
            cmd1.Parameters.AddWithValue("@password", txtpassword2.Text);
            cmd1.Parameters.AddWithValue("@ConfirmPassword", txtpassword2.Text);
            cmd1.Parameters.AddWithValue("@age", txtage.Text);
            cmd1.Parameters.AddWithValue("@email", txtemail.Text);
            cmd1.Parameters.AddWithValue("@username", txtusername.Text);





            con.Open();
            cmd1.ExecuteNonQuery();

            txtname.Text = "";
            txtpassword2.Text = "";
            txtpassword2.Text = "";
            txtage.Text = "";
            txtemail.Text = "";
            txtusername.Text = "";


            Response.Write("<script>alert('Saved..!')</script>");
        }

    }
}

    
