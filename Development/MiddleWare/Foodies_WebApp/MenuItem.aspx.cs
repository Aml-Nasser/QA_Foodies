using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Foodies_WebApp
{
    public partial class MenuItem : System.Web.UI.Page
    {
        private MySqlConnection connection =
          new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command1;
        MySqlDataReader mdr1;
        string rest_Name;
        protected void Page_Load(object sender, EventArgs e)
        {
            Img.ImageUrl = "~/Images/FoodiesLogo.png";
            rest_Name = Session["rest_Name"] as string;
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
            Img.ImageUrl = "data:Imaga;base64," + Convert.ToBase64String(imageBytes);
            connection.Close();
        }

        protected void ConfirmBtn_onClick(object sender, EventArgs e)
        {
            string user_Name = Session["user_Name"] as string;

            var orderId = 0;
            connection.Open();
            string selectQuery = "SELECT MAX(orderid) FROM userorder";
            command1 = new MySqlCommand(selectQuery, connection);
            mdr1 = command1.ExecuteReader();

            while (mdr1.Read())
                if (mdr1[0] == DBNull.Value)
                {
                    orderId = 1;
                }
                else
                {
                    orderId = int.Parse(mdr1[0].ToString());
            }
            orderId++;
            connection.Close();

            int quantity = int.Parse(quant.Text);
            float price = 0.0f;
            connection.Open();
            string selectQuery1 = "SELECT price FROM menuitem WHERE restaurantName = '" + rest_Name + "';";
            command1 = new MySqlCommand(selectQuery1, connection);
            mdr1 = command1.ExecuteReader();

            while (mdr1.Read())
            {
                price = float.Parse(mdr1[0].ToString());
            }
            float totalPrice = quantity * price;

            connection.Close();

            Session["orderId"] = orderId;
            Session["totalPrice"] = totalPrice;
            Session["quantity"] = quantity;
            Session["price"] = price;

            bool usedLoyaltyPoints = bool.Parse(Session["usedLoyaltyPoints"].ToString());
            float loyaltyPoints = float.Parse(Session["loyaltyPoints"].ToString());

            Response.Redirect("ConfirmOrderPage.aspx");
        }

    }
}
