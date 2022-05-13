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
    public partial class MenuItem : System.Web.UI.Page
    {
        private MySqlConnection connection =
          new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command1;
        MySqlDataReader mdr1;

        protected void Page_Load(object sender, EventArgs e)
        {
            //ToDo:select restaurant Iamge upon restrant name
            string rest_Name = Session["rest_Name"] as string;
        }

        protected void ConfirmBtn_onClick(object sender, EventArgs e)
        {
            string user_Name = Session["user_Name"] as string;



            var orderId = 0;
            var noOfOrders = 0;
            connection.Open();
            string selectQuery = "SELECT MAX(orderid) FROM user_order";
            command1 = new MySqlCommand(selectQuery, connection);
            mdr1 = command1.ExecuteReader();

            while (mdr1.Read())
            {
                orderId = int.Parse(mdr1[0].ToString());
            }
            orderId++;
            connection.Close();
            connection.Open();

            MySqlCommand command2;
            MySqlDataReader mdr2;
            string selectQuery2 = "SELECT COUNT(*) FROM user_order; ";
            command2 = new MySqlCommand(selectQuery2, connection);
            mdr2 = command2.ExecuteReader();

            while (mdr2.Read())
            {
                noOfOrders = int.Parse(mdr2[0].ToString());
            }
            connection.Close();


            var total = int.Parse(quant.Text) * 200;

            string connectionString = ("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;");
            string iquery = "INSERT INTO `user_order`(`orderId`, `userName`, `menuItemImage`, `menuItemQuantity`, `discountApplied`, `totalPrice`)" +
                "VALUES (@orderId,@userName,NULL,'" + int.Parse(quant.Text) + "', 0 ,@total )";

            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
            databaseConnection.Open();
            commandDatabase.Parameters.AddWithValue("@orderId", orderId);
            commandDatabase.Parameters.AddWithValue("@userName", user_Name);
            commandDatabase.Parameters.AddWithValue("@total", total);
            commandDatabase.ExecuteNonQuery();
            commandDatabase.CommandTimeout = 60;
            databaseConnection.Close();
            noOfOrders++;
            Response.Redirect("UserHomePage.aspx");
        }

    }
}
