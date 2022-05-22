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
        protected void Page_Load(object sender, EventArgs e)
        {

            var rest_Name = " ";
            connection.Open();
            string selectQuery = "SELECT restaurantName,image FROM restuarants ;";
            command = new MySqlCommand(selectQuery, connection);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                rest_Name = reader[0].ToString();
                byte[] img; img = (byte[])reader[1];
                restName.Text = rest_Name;
                Img.ImageUrl = "data:image;base64," + Convert.ToBase64String(img);
            }
            connection.Close();
            Session["rest_Name"] = restName.Text;
           float loyaltyPoints = float.Parse(Session["loyaltyPoints"].ToString());
           bool usedLoyaltyPoints = bool.Parse(Session["usedLoyaltyPoints"].ToString());
        }
    }
}