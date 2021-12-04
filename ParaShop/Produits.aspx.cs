using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ParaShop
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = WebForm1.products;
            GridView1.DataBind();
        }

        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item == Menu2.Items[1])
            {
                Panel1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            foreach (var p in WebForm1.products)
                if (TextBox1.Text == p.name)
                {
                    /*
                    string commandeText = "select id from product where name = '" + p.name + "'";
                    MySqlCommand commande = new MySqlCommand(commandeText, WebForm1.connection);
                    MySqlDataReader rs = commande.ExecuteReader();
                    rs.Read();
                    int productId = rs.GetInt32(0);
                    rs.Close();
                    */
                    WebForm1.command.CommandText = "delete from product where name = '" + TextBox1.Text + "'";
                    WebForm1.command.ExecuteNonQuery();
                    WebForm1.products.Remove(p);
                    return;
                }
            Panel1.Visible = false;
            TextBox1.Focus();
            //GridView1.DataSource = WebForm1.products;
            GridView1.DataBind();
        }
    }
}