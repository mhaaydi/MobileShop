using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using ParaShop.Models;

namespace ParaShop
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product p = new Product { name = TextBox1.Text, price = double.Parse(TextBox2.Text), quantity = double.Parse(TextBox3.Text), categorie = TextBox4.Text, description = TextArea1.Text, picture = "D:\\Products\\" + FileUpload1.FileName };
            WebForm1.products.Add(p);
            WebForm1.command.CommandText = "insert into product (name, description, categorie, price, quantity, picture) values ('" + p.name + "', '" + p.description + "', '" + p.categorie + "', " + p.price + " , " + p.quantity + " ,'" + p.picture + "')";
            WebForm1.command.ExecuteNonQuery();
            TextArea1.Text = TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            TextBox1.Focus();
        }
    }
}