using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies_WebApp
{
    public partial class ConfirmOrderPage : System.Web.UI.Page
    {
        private MySqlConnection connection =
          new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");

        int order_Id = 0;
        string user_Name = " ";
        float totalPrice = 0.0f;
        int quantity = 0;
        float price = 0;
        string rest_Name = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            order_Id = int.Parse(Session["orderId"].ToString());
            rest_Name = Session["rest_Name"] as string;
            user_Name = Session["user_Name"] as string;
            totalPrice = float.Parse(Session["totalPrice"].ToString());
            quantity = int.Parse(Session["quantity"].ToString());
            price = float.Parse(Session["price"].ToString());

            byte[] imageBytes = null;

            connection.Open();
            string selectQuery = "SELECT imagePath FROM menuitem WHERE restaurantName = '" + rest_Name + "';";
            MySqlCommand command;
            MySqlDataReader mdr;
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                imageBytes = (byte[])mdr[0];

            }
            Image1.ImageUrl = "data:Imaga;base64," + Convert.ToBase64String(imageBytes);
            connection.Close();
            yu.ReadOnly = true;
            totalPriceTxt.ReadOnly = true;
            disountTxt.ReadOnly = true;

            yu.Text = price.ToString();
            totalPriceTxt.Text = totalPrice.ToString();
            disountTxt.Text = "0";
        }

        protected void ConfirmOrderBtn_OnClick(object sender, EventArgs e)
        {


            string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;";
            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            string iquery = "INSERT INTO `user_order`(`orderId`, `userName`, `menuItemQuantity`, `discountApplied`, `totalPrice`) VALUES (@orderId,@username,@quantity,@discount,@totalPrice)";

            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);

            databaseConnection.Open();
            commandDatabase.Parameters.AddWithValue("@orderId", order_Id);
            commandDatabase.Parameters.AddWithValue("@userName", user_Name);
            commandDatabase.Parameters.AddWithValue("@quantity", quantity);
            commandDatabase.Parameters.AddWithValue("@discount", 0);
            commandDatabase.Parameters.AddWithValue("@totalPrice", totalPrice);
            commandDatabase.ExecuteNonQuery();
            databaseConnection.Close();


        }
    }
}