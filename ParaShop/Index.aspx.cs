using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.Common;
using MySql.Data.MySqlClient;
using ParaShop.Models;

namespace ParaShop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static int i;
        static public List<Panier> panier;
        static public double totalPrice;
        static public List<Product> cart;
        static public User currentUser;
        static public List<User> users;
        static public List<Product> products;
        static public List<Commande> commandes;
        static public MySqlConnection connection;
        static public MySqlCommand command;
        public static int n = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
            

            
            if (n == 0)
            {
                totalPrice = 0;
                panier = new List<Panier>();
                cart = new List<Product>();
                users = new List<User>();
                products = new List<Product>();
                commandes = new List<Commande>();
                connection = new MySqlConnection();
                command = new MySqlCommand();
                connection.ConnectionString = "Server=127.0.0.1;Database=para_shop;Uid=root";
                connection.Open();
                command.Connection = connection;
                MySqlCommand commande = new MySqlCommand("select name, categorie , price, quantity, picture from product", connection);
                MySqlDataReader rs = commande.ExecuteReader();
                while (rs.Read())
                {
                    Product p = new Product { name = rs.GetString(0), categorie = rs.GetString(1) , price = rs.GetDouble(2), quantity = rs.GetDouble(3), picture = rs.GetString(4) };
                    products.Add(p);
                }
                rs.Close();
                MySqlCommand commande2 = new MySqlCommand("select name, email,password from user", connection);
                MySqlDataReader rs2 = commande2.ExecuteReader();
                while (rs2.Read())
                {
                    User u = new User { name = rs2.GetString(0), email = rs2.GetString(1), mdp = rs2.GetString(2) };
                    users.Add(u);
                }
                rs2.Close();
                MySqlCommand commande3 = new MySqlCommand("select userId, productId, quantity from achat", connection);
                MySqlDataReader rs3 = commande3.ExecuteReader();
                while (rs3.Read())
                {
                    Commande c = new Commande { userId = rs3.GetInt32(0), productId = rs3.GetInt32(1), quantity = rs3.GetInt32(2) };
                    commandes.Add(c);
                }
                rs3.Close();
                n = 1;
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        private void SetImageUrl()
        {
            Random rand = new Random();
            i = rand.Next(1, 11);
            Image1.ImageUrl = "~/SlideShow/img" + i.ToString() + ".jpg";
        }


    }
}