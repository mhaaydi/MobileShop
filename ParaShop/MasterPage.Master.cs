using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace ParaShop
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public static int a = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
                if (WebForm1.currentUser != null) TextBox1.Text = "Bienvenue " + WebForm1.currentUser.name + " ";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Account.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("Search.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Panier.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            WebForm1.currentUser = null;
            TextBox1.Text = "";
            Response.Redirect("Index.aspx");
        }
    }
}