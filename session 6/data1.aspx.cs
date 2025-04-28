using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session_6
{
    public partial class data1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Table_1 values (@name,@contact,@email,@city,@dt)", con);
            var file = fuPhoto.PostedFile;
            string extension = System.IO.Path.GetExtension(file.FileName);
            Guid id = Guid.NewGuid();
            //sajdsd-78888-sdjhsjdh-sjdnjsdn.png
            string imgName = id + extension;
            string imgPath = "photo/" + imgName;
            file.SaveAs(Server.MapPath(imgPath));
            string thumbPath = "thumbphotos/" + "thumb" + imgName;
            int widthC = 600;
            int heightC = 400;
            System.IO.Stream streamC = file.InputStream;
            System.Drawing.Bitmap imageC = new Bitmap(streamC);
            Bitmap targetC = new Bitmap(widthC, heightC);
            Graphics graphicC = Graphics.FromImage(targetC);
            graphicC.DrawImage(imageC, 0, 0, widthC, heightC);
            targetC.Save(Server.MapPath(thumbPath));
            SqlCommand cmd1 = new SqlCommand("insert into Table_2 values (@name,@contact,@email,@city,@dt,@photos,@thumb)", con);
            cmd1.Parameters.AddWithValue("@name", txtName.Text);
            cmd1.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd1.Parameters.AddWithValue("@city", ddlCity.SelectedItem.Text);
            cmd1.Parameters.AddWithValue("@dt", DateTime.Now.Date);
            cmd1.Parameters.AddWithValue("@photos", imgPath);
            cmd1.Parameters.AddWithValue("@thumb", thumbPath);

            con.Open();
            cmd1.ExecuteNonQuery();

            txtContact.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            ddlCity.SelectedIndex = 0;

            Response.Write("<script>alert('Saved..!')</script>");
        }
    }
}
