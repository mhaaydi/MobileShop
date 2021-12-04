using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ParaShop.Models;

namespace ParaShop
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        static public List<Product> solaire;
        static public int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (i == 0)
            {
                TextBox2.Text = "1";
                solaire = new List<Product>();
                foreach (var item in WebForm1.products)
                {
                    if (item.categorie == "Solaires") solaire.Add(item);
                }
                i = 1;
            }
            GridView1.DataSource = solaire;
            GridView1.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {


            TextBox1.Text = TextBox2.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}