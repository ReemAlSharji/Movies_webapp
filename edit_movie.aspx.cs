using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternsApplication
{
    public partial class About : Page
    {
        Movie_StoreEntities DB = new Movie_StoreEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                Movie_ID.Text = Request.QueryString["id"];
                int id = int.Parse(Movie_ID.Text);
                var movies = DB.Movies.FirstOrDefault(movie => movie.ID == id);
                Movie_Name.Text = movies.Movie_Name;
                Movie_Description.Text = movies.Movie_Description;
                Movie_Price.Text = movies.Movie_Price.ToString();
            }
        }

        protected void cancel_movie_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void edit_movie_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int m_id = int.Parse(Request.QueryString["id"]);
                var edit_movies = DB.Movies.Find(m_id);
                edit_movies.Movie_Name = Movie_Name.Text;
                edit_movies.Movie_Description = Movie_Description.Text;
                edit_movies.Movie_Price = Double.Parse(Movie_Price.Text);
                DB.SaveChanges();
                
            }

        }
        protected void redundant_record(object source, ServerValidateEventArgs args)
        {
            var validate_input = DB.Movies.FirstOrDefault(movie => movie.Movie_Name == Movie_Name.Text);

            if (validate_input == null)
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