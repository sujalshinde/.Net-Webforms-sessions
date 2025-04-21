using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_3
{
    public partial class s2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null && Session["Contact"] != null)
            {
                txtName.Text = Session["Name"].ToString();
                txtContact.Text = Session["Contact"].ToString();
            }
            else
            {
                Response.Redirect("S1.aspx");
            }

        }
    }
}