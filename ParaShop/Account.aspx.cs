using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Common;
using ParaShop.Models;

namespace ParaShop
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        public User u;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            u = new User {name = TextBox1.Text, email = TextBox2.Text, mdp = TextBox3.Text };
            WebForm1.users.Add(u);
            WebForm1.command.CommandText = "insert into user(name, email, password) values ('" + u.name + "', '" + u.email + "', '" + u.mdp + "')";
            WebForm1.command.ExecuteNonQuery();
            TextBox1.Text = TextBox3.Text = TextBox2.Text = "";
            TextBox4.Focus();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            /*
            if (TextBox4.Text != "" && TextBox5.Text != "")
            {
                if (TextBox4.Text == "admin@parashop.ma")
                {
                    TextBox4.Text = TextBox5.Text = "";
                    Response.Redirect("Utilisateur.aspx");
                }
                else
                {
                    TextBox4.Text = TextBox5.Text = "";
                    WebForm1.currentUser = u;
                    Response.Redirect("Index.aspx");
                }
                
            }
            */
            
            if (TextBox4.Text != "" && TextBox5.Text != "")
            {
                foreach(var item in WebForm1.users)
                {
                    if(item.email == TextBox4.Text && item.mdp == TextBox5.Text)
                    {
                        if (item.email == "admin@parashop.ma")
                        {

                            Response.Redirect("Produits.aspx");
                        }
                        else
                        {
                            WebForm1.currentUser = item;
                            MasterPage.a = 2;
                            Response.Redirect("Index.aspx");
                        }
                    }
                }
                TextBox4.Text = TextBox5.Text = "";
            }
            
        }
    }
}