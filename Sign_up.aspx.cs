using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternsApplication
{
    public partial class Sign_up : System.Web.UI.Page
    {
        Movie_StoreEntities DB = new Movie_StoreEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_account(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                User user = new User
                {
                    username = username.Text,
                    password = password.Text,
                    confirm_password = confirm_pass.Text,
                    email = email.Text,
                };

                DB.Users.Add(user);
                DB.SaveChanges();
                Session["username"] = username.Text;
                Response.Redirect("home.aspx");
            }

        }

        protected void validate_redundant_fields(object source, ServerValidateEventArgs args)
        {
            var validate_username = DB.Users.FirstOrDefault(user => user.username == username.Text);
            if(validate_username == null)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }

}