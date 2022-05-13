using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies_WebApp
{
    public partial class OffersandPormotions : System.Web.UI.Page
    {

        private MySqlConnection connection =
               new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {
            var restName = " ";
            var discountAmount = 0.00f;
            yu.ReadOnly = true;
            connection.Open();
            string selectQuery = "SELECT restaurantName,discountamount FROM offer ;";
            command = new MySqlCommand(selectQuery, connection);
            var reader = command.ExecuteReader();
            DropDownList1.Items.Add("Choose your offer ");
            while (reader.Read())
            {
                restName = reader[0].ToString();
                discountAmount = float.Parse(reader[1].ToString());
                DropDownList1.Items.Add(restName + " " + discountAmount);
            }

            connection.Close();
        }

        protected void UseOffer_OnClick(object sender, EventArgs e)
        {

        }
    }
}