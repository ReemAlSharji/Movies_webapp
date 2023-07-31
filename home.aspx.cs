using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternsApplication
{
    public partial class _Default : Page
    {

        Movie_StoreEntities DB = new Movie_StoreEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session["username"] != null)
            //{
            //    user_account.Text = $" Welcome : {Session["username"]}";

            //}
            //else
            //{
            //    user_account.Text = "";
            //}
            if(Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                user_account.Text = $" Welcome back : {Session["username"]}";
            }
        }

        protected void ShowAllMovies(object sender, EventArgs e)
        {

            Movies_table.DataSource = DB.Movies.ToList();
            Movies_table.DataBind();

        }

        protected void Search_Movie(object sender, EventArgs e)
        {
            
            var filter_movie = DB.Movies.Where(m => m.Movie_Name.StartsWith(Search_Box.Text));
            if (filter_movie.Count()>0)
            {
                Movies_table.DataSource = filter_movie.ToList();
                Movies_table.DataBind();
                Movies_table.Visible = true;
                error_label.Text = "";
                
            }
            else
            {
                error_label.Text = "No data was found";
                Movies_table.Visible = false;
            }
            
        }

        protected void delete_row(object sender, GridViewDeleteEventArgs e)
        {
            movie_name.Text = Movies_table.Rows[e.RowIndex].Cells[3].Text;
            hide_field.Value = Movies_table.Rows[e.RowIndex].Cells[2].Text;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cancel_button_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void delete_button_Click(object sender, EventArgs e)
        {
            int hidden_field = int.Parse(hide_field.Value);
            var delete_movie = DB.Movies.Find(hidden_field);
            DB.Movies.Remove(delete_movie);
            DB.SaveChanges();
            Response.Redirect("home.aspx");
            MultiView1.ActiveViewIndex = 0;

        }
    }
}