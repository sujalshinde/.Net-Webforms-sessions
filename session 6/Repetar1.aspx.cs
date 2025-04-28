using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_6
{
    public partial class Repetar1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showgalleryphotos();
            }
        }
        protected void showgalleryphotos()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("Select Srno,thumb from Table_2", conn))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rPhotoGallery.DataSource = dt;
                            rPhotoGallery.DataBind();
                        }
                    }
                }
            }
            catch (Exception es)
            {

            }
        }
        protected void lbtndelete_Click(object sender, EventArgs e)
        {
            RepeaterItem a = (sender as LinkButton).Parent as RepeaterItem;
            int b = int.Parse((a.FindControl("photoid") as Label).Text.ToString());
            con.Close();
            string qrys = "Select thumb from Table_2 where Srno=" + b;
            con.Open();
            SqlCommand cmd1 = new SqlCommand(qrys, con);
            SqlDataReader sdr = cmd1.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                string thumbpath = sdr.GetValue(0).ToString();
                System.IO.File.Delete(Server.MapPath(thumbpath));
            }
            con.Close();
            string qry = "delete from Table_2 where Srno=" + b;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            string message = "Photo Deleted Successfully!";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += Request.Url.AbsoluteUri;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
    }
}