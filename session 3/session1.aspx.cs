using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_3
{
    public partial class session1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Clicks"] == null)
                {
                    Session["Clicks"] = 0;
                }
                txtcount.Text = Session["Clicks"].ToString();
            }

        }
        protected void btnclick_Click(object sender, EventArgs e)
        {
            int count = (int)Session["Clicks"] + 1;
            txtcount.Text = count.ToString();
            Session["Clicks"] = count;
        }
    }
}