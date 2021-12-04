using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ParaShop.Models;
using MySql.Data.MySqlClient;

namespace ParaShop
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        static public List<Product> dentaire;
        static public int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (i == 0)
            {
                TextBox2.Text = "1";
                dentaire = new List<Product>();
                foreach (var item in WebForm1.products)
                {
                    if (item.categorie == "Dentaire") dentaire.Add(item);
                }
                i = 1;
            }
            GridView1.DataSource = dentaire;
            GridView1.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            foreach (var item in WebForm1.products)
            {
                if (item.name == TextBox1.Text)
                {
                    Panier panier = new Panier { name = item.name, description = item.description, categorie = item.categorie, price = item.price, quantiteCommande = double.Parse(TextBox2.Text), totalPrice = double.Parse(TextBox2.Text) * item.price };
                    WebForm1.cart.Add(item);
                    WebForm1.panier.Add(panier);
                    WebForm1.totalPrice = WebForm1.totalPrice + double.Parse(TextBox2.Text) * item.price;
                    item.quantity -= double.Parse(TextBox2.Text);

                    string commandeText = "select id from user where email = '" + WebForm1.currentUser.email + "'";
                    MySqlCommand commande = new MySqlCommand(commandeText, WebForm1.connection);
                    MySqlDataReader rs = commande.ExecuteReader();
                    rs.Read();
                    int currentUSerId = rs.GetInt32(0);
                    rs.Close();

                    commandeText = "select id from product where name = '" + item.name + "'";
                    commande = new MySqlCommand(commandeText, WebForm1.connection);
                    rs = commande.ExecuteReader();
                    rs.Read();
                    int productId = rs.GetInt32(0);
                    rs.Close();
                    WebForm1.command.CommandText = "insert into achat (userId, productId, quantity) values (" + currentUSerId + ", " + productId + ", " + double.Parse(TextBox2.Text) + ")";

                    GridView1.DataSource = dentaire;
                    GridView1.DataBind();
                }
            }

            TextBox1.Text = "";
            TextBox2.Text = "1";
            TextBox1.Focus();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}