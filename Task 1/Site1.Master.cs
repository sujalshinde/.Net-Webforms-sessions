using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeId"] != null)
            {
                lilogout.Visible = true;
                lilogin.Visible = false;
                liregister.Visible = false;
            }
            else
            {
                lilogout.Visible = false;
                lilogin.Visible = true;
                liregister.Visible = true;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index1.aspx");
        }

        protected void btnLogout_Click2(object sender, EventArgs e)
        {

        }
    }
}