using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_4
{
    public partial class Querystring1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Response.Redirect("QueryString2.aspx?name="+txtName.Text+"&contact="+txtContact.Text+"");
            Response.Redirect($"Querystring2.aspx?name={txtName.Text}&contact={txtContact.Text}");
        }
    }
}