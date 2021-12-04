using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ParaShop.Models;
using MySql.Data;

namespace ParaShop
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User u = new User { name = TextBox1.Text, email = TextBox2.Text, mdp = TextBox3.Text};
            WebForm1.users.Add(u);
            WebForm1.command.CommandText = "insert into user (name, email, password) values ('" + u.name + "', '" + u.email + "', '" + u.mdp + "')";
            WebForm1.command.ExecuteNonQuery();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            TextBox1.Focus();
        }
    }
}