using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_3
{
    public partial class viewstate1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (ViewState["Cliks"] == null)
                {
                    ViewState["Cliks"] = 0;
                }
                txtcount.Text = ViewState["Cliks"].ToString();
            }
        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            int count = (int)ViewState["Cliks"] + 1;
            txtcount.Text = count.ToString();
            ViewState["Cliks"] = count;
        }
    }
}