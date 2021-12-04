using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParaShop
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(WebForm1.currentUser != null) TextBox1.Text = "Hi "+WebForm1.currentUser.name+", voici le récaputilatif de votre commande";
            TextBox2.Text = "Montant total: "+WebForm1.totalPrice.ToString()+" DHs";
            GridView1.DataSource = WebForm1.panier;
            GridView1.DataBind();
        }
    }
}