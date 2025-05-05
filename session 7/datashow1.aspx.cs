using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_7
{
    public partial class datashow1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvdata.DataSource = getList();
                gvdata.DataBind();
            }
        }
        protected DataSet getList()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from Table_2 order by Srno DESC", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("insert into Table_2 (name,city) values (@name,@city)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@city", txtCity.Text);
            cmd.ExecuteNonQuery();
            gvdata.DataSource = getList();
            gvdata.DataBind();
            txtName.Text = string.Empty;
            txtCity.Text = string.Empty;
            Response.Write("<script>alert('Saved..!')</script>");
        }
        protected void gvdata_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvdata.EditIndex = e.NewEditIndex;
            gvdata.DataSource = getList();
            gvdata.DataBind();
        }
        protected void gvdata_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvdata.EditIndex = -1;
            gvdata.DataSource = getList();
            gvdata.DataBind();
        }
        protected void gvdata_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            GridViewRow row = gvdata.Rows[e.RowIndex];
            string name = (row.FindControl("txteName") as TextBox).Text;
            string city = (row.FindControl("txteCountry") as TextBox).Text;
            con.Close();
            SqlCommand cmd = new SqlCommand("Update Table_2 set Name='" + name + "',City='" + city + "' where Srno='" + gvdata.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            gvdata.EditIndex = -1;
            gvdata.DataSource = getList();
            gvdata.DataBind();
        }
        protected void gvdata_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("delete from Table_2 where Srno='" + gvdata.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            gvdata.EditIndex = -1;
            gvdata.DataSource = getList();
            gvdata.DataBind();
        }
    }
}
