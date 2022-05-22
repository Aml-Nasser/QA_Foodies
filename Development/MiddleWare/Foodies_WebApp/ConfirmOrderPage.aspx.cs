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
        float loyaltyPoints = 0.0f;
        bool usedLoyaltyPoints = false;
        bool useOffer = false;
        float discountAmount = 0.0f;
        protected void Page_Load(object sender, EventArgs e)
        {
            order_Id = int.Parse(Session["orderId"].ToString());
            rest_Name = Session["rest_Name"] as string;
            user_Name = Session["user_Name"] as string;
            totalPrice = float.Parse(Session["totalPrice"].ToString());
            quantity = int.Parse(Session["quantity"].ToString());
            loyaltyPoints = float.Parse(Session["loyaltyPoints"].ToString());
            usedLoyaltyPoints = bool.Parse(Session["usedLoyaltyPoints"].ToString());
            price = float.Parse(Session["price"].ToString());
            useOffer = bool.Parse(Session["useOffer"].ToString());
            discountAmount = float.Parse(Session["discountAmount"].ToString());
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
            if (usedLoyaltyPoints == true)
            {
                float reminder = totalPrice - loyaltyPoints;
                if (reminder > 0)
                {
                    totalPrice = reminder;
                    discountAmount = loyaltyPoints;
                    disountTxt.Text = loyaltyPoints.ToString();
                    loyaltyPoints = 0;
                }
                else
                {
                   
                    loyaltyPoints = Math.Abs(reminder);
                    disountTxt.Text = loyaltyPoints.ToString();
                    totalPrice = 0;
                }
                usedLoyaltyPoints = false;
              
            }
            if (useOffer == true)
            {
                float reminder = totalPrice - discountAmount;
                if (reminder > 0)
                {
                    totalPrice = reminder;
                }
                else
                {
                    totalPrice = 0;
                }
                useOffer = false;
                disountTxt.Text = discountAmount.ToString();
            }

            string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;";
            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            string iquery = "UPDATE `user` SET `loyaltyPoints`=@loyaltyPoints WHERE userName = @user_Name;";

            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);


            databaseConnection.Open();
            commandDatabase.Parameters.AddWithValue("@user_Name", user_Name);
            commandDatabase.Parameters.AddWithValue("@loyaltyPoints", loyaltyPoints);
            commandDatabase.ExecuteNonQuery();
            databaseConnection.Close();


            totalPriceTxt.ReadOnly = true;
            disountTxt.ReadOnly = true;

            yu.Text = price.ToString();
            totalPriceTxt.Text = totalPrice.ToString();

           
        }

        protected void ConfirmOrderBtn_OnClick(object sender, EventArgs e)
        {
            float oldLoyalityPoints = 0.0f;
            connection.Open();
            string selectQuery2 = "SELECT loyaltyPoints FROM user where username = '" + user_Name + "' ;";
            MySqlCommand command2 = new MySqlCommand(selectQuery2, connection);
            var reader2 = command2.ExecuteReader();
            while (reader2.Read())
            {
                oldLoyalityPoints = float.Parse(reader2[0].ToString());
            }
            connection.Close();

            loyaltyPoints = oldLoyalityPoints + (totalPrice / 4 );

            string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;";
            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            string iquery = "UPDATE `user` SET `loyaltyPoints`=@loyaltyPoints WHERE userName= @user_Name;";

            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
           

            databaseConnection.Open();
            commandDatabase.Parameters.AddWithValue("@user_Name", user_Name);
            commandDatabase.Parameters.AddWithValue("@loyaltyPoints", loyaltyPoints);
            commandDatabase.ExecuteNonQuery();
            databaseConnection.Close();

            string iquery1 = "INSERT INTO `userorder`(`orderId`, `userName`, `menuItemQuantity`, `totalprice`, `discountApplied`) VALUES (@orderId,@username,@quantity,@totalPrice,@discount)";
            MySqlCommand commandDatabase1 = new MySqlCommand(iquery1, databaseConnection);
          

            databaseConnection.Open();
            commandDatabase1.Parameters.AddWithValue("@orderId", order_Id);
            commandDatabase1.Parameters.AddWithValue("@userName", user_Name);
            commandDatabase1.Parameters.AddWithValue("@quantity", quantity);
            commandDatabase1.Parameters.AddWithValue("@totalPrice", totalPrice);
            commandDatabase1.Parameters.AddWithValue("@discount", discountAmount);
            commandDatabase1.ExecuteNonQuery();
            databaseConnection.Close();
          
            Response.Redirect("UserHomePage.aspx");

        }
    }
}