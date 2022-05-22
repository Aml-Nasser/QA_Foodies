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
        protected void Page_Load(object sender, EventArgs e)
        {
            rest_Name = Session["rest_Name"] as string;
        }

        protected void AddOfferBtn_OnClick(object sender, EventArgs e)
        {
            string connectionString = ("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;");
            string insertQuery = "INSERT INTO `offer`(`offerCode`, `restaurantName`, `adminName`, `DiscountAmount`) VALUES ('" + int.Parse(Offer_Code.Text) + "', @rest_Name ,NULL,'" + float.Parse(Discount_amount.Text) + "')";
            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            MySqlCommand commandDatabase = new MySqlCommand(insertQuery, databaseConnection);
           
            commandDatabase.CommandTimeout = 60;
            try
            {
                databaseConnection.Open();
                commandDatabase.Parameters.AddWithValue("@rest_Name", rest_Name);
                commandDatabase.ExecuteNonQuery();
                Response.Redirect("AdminHome.aspx");
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