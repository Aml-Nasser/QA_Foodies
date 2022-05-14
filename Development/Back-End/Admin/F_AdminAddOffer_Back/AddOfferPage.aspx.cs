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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddOfferBtn_OnClick(object sender, EventArgs e)
        {
            string connectionString = ("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;");
            string insertQuery = "INSERT INTO `offer`(`offerCode`, `adminName`, `DiscountAmount`, `restaurantName`) VALUES ('" + int.Parse(Offer_Code.Text) + "', NULL ,'" + float.Parse(Discount_amount.Text) + "','PIZZA HUT')";
            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            MySqlCommand commandDatabase = new MySqlCommand(insertQuery, databaseConnection);
            commandDatabase.CommandTimeout = 60;
            try
            {
                databaseConnection.Open();
                MySqlDataReader myReader = commandDatabase.ExecuteReader();
                MessageBox.Show("Offer Added Successfully!");
                databaseConnection.Close();
            }
            catch (Exception ex)
            {
                // Show any error message.
                MessageBox.Show("cannot Add Offer "+" "+ ex.Message);
            }

            
        }
    }
}