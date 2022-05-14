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
        MySqlCommand command1;
        MySqlDataReader mdr1;
        public string order_Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            string order_Id = Session["orderId"] as string;
        }

        protected void ConfirmOrderBtn_OnClick(object sender, EventArgs e)
        {
            
            var noOfOrders = 0;
            connection.Open();
            string selectQuery = "SELECT * from user_order where orderid = '" + int.Parse(order_Id) + "';"; 
            command1 = new MySqlCommand(selectQuery, connection);
            mdr1 = command1.ExecuteReader();

            
        }
    }
}