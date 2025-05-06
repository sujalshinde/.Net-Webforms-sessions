using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_1
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Table_6 (name,email,contact,dept,pwd) values (@name,@email,@contact,@dept,@pwd)", con);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@dept", ddldept.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
            con.Open();
            cmd.ExecuteNonQuery();

            txtContact.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            ddldept.SelectedIndex = 0;

            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Registered Successfully..!','','success');", true);
        }
    }
}