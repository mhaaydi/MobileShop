using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParaShop
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = WebForm1.users;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            foreach (var u in WebForm1.users)
                if (TextBox1.Text == u.email)
                {
                    WebForm1.users.Remove(u);
                    
                    WebForm1.command.CommandText = "delete from user where email = '" + u.email + "'";
                    WebForm1.command.ExecuteNonQuery();
                    return;
                }
            Panel1.Visible = false;
            GridView1.DataSource = WebForm1.users;
            GridView1.DataBind();
        }

        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item == Menu2.Items[1])
            {
                Panel1.Visible = true;
            }
        }
    }
}