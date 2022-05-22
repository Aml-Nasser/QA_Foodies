using Foodies_WebApp.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies_WebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private MySqlConnection connection =
          new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        public List<RestaurantsModel> GetRestaurants()
        {
            var restaurantsList = new List<RestaurantsModel>();
            connection.Open();
            string selectQuery = "SELECT restaurantName,image FROM restuarants ;";
            command = new MySqlCommand(selectQuery, connection);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {

                var img = (byte[])reader[1];
                restaurantsList.Add(new RestaurantsModel
                {
                    Name = reader[0].ToString(),
                    Image = "data:image;base64," + Convert.ToBase64String(img)
                });
            }
            connection.Close();
            return restaurantsList;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}