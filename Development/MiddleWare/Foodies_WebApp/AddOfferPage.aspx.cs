using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Foodies_WebApp
{

    public partial class AddOfferPage : System.Web.UI.Page
    {
        string rest_Name;
        private MySqlConnection connection =
           new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["Name"];
            Session["rest_Name"] = name;
            if (Request.QueryString.Count == 0)
            {

                return;
            }
        }

        protected void AddOfferBtn_OnClick(object sender, EventArgs e)
        {
            connection.Open();
            string selectQuery = "SELECT offerCode,restaurantName FROM offer WHERE offerCode = '" + Offer_Code.Text + "';";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (!mdr.Read())
            {
                string connectionString = ("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;");
                string insertQuery = "INSERT INTO `offer`(`offerCode`, `restaurantName`, `adminName`, `DiscountAmount`) VALUES ('" + int.Parse(Offer_Code.Text) + "', @rest_Name ,NULL,'" + float.Parse(Discount_amount.Text) + "')";
                MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                MySqlCommand commandDatabase = new MySqlCommand(insertQuery, databaseConnection);

                commandDatabase.CommandTimeout = 60;

                databaseConnection.Open();
                commandDatabase.Parameters.AddWithValue("@rest_Name", name);
                commandDatabase.ExecuteNonQuery();
                databaseConnection.Close();
                Response.Redirect("AdminHome.aspx", true);

            }
            else
            {
                MessageBox.Show("Offer Code already exists!");
                Offer_Code.Text = " ";
                Discount_amount.Text = " ";
            }


        }
    }
}