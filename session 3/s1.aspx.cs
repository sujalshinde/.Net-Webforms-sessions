using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_3
{
    public partial class s1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {

            Session["Name"] = txtName.Text;
            Session["Contact"] = txtContact.Text;
            Response.Redirect("s2.aspx");

        }
    }
}