using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternsApplication
{
    public partial class Login : System.Web.UI.Page
    {
        Movie_StoreEntities DB = new Movie_StoreEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var check_user = DB.Users.Where(user => user.username == username.Text && user.password == password.Text);
            if (check_user.Count()>0) {

                Session["username"] = username.Text;
                Response.Redirect("home.aspx");
                
            }
            else
            {
                error_message.Text = "Invalid user account";
            }
        }
    }
}