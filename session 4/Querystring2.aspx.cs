using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_4
{
    public partial class Querystring2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
            {
                txtName.Text = Request.QueryString["Name"];
                txtContact.Text = Request.QueryString["Contact"];

                //txtName.Text = Request.QueryString[0];
                //txtContact.Text= Request.QueryString[1];
            }
        }
    }
}