using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternsApplication
{
    public partial class Contact : Page
    {
        readonly Movie_StoreEntities DB = new Movie_StoreEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_movie_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Movie movie = new Movie
                {
                    Movie_Name = Movie_Name.Text,
                    Movie_Description = Movie_Description.Text,
                    Movie_Price = Double.Parse(Movie_Price.Text)
                };
                DB.Movies.Add(movie);
                DB.SaveChanges();
                Response.Redirect("add_movie.aspx");
            }
        }

        protected void cancel_movie_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_movie.aspx");
        }

        protected void validate_redundant_record(object source, ServerValidateEventArgs args)
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