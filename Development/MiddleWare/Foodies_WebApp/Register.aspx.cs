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
    public partial class Register : System.Web.UI.Page
    {
        private MySqlConnection connection =
          new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            connection.Open();
            string selectQuery = "SELECT * FROM user WHERE Username = '" + username1.Text + "';";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                MessageBox.Show("Username already taken!");
                username1.Text = " ";
            }
            else
            {

                string connectionString = ("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;");
                string iquery = "INSERT INTO `user`(`fullName`, `userName`, `restaurantName`, `phoneNumber`, `address`, `password`, `email`, `loyaltyPoints`) VALUES ('" + fullName.Text + "','" + username1.Text + "', Null ,'" + phone.Text + "', '" + address.Text + "','" + pass1.Text + "','" + email.Text + "',0)";

                MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                commandDatabase.CommandTimeout = 60;

                try
                {
                    databaseConnection.Open();
                    MySqlDataReader myReader = commandDatabase.ExecuteReader();
                    databaseConnection.Close();
                }
                catch (Exception ex)
                {
                    // Show any error message.
                    MessageBox.Show(ex.Message);
                }

                MessageBox.Show("Account Successfully Created!");
               
                Response.Redirect("Login.aspx");
            }

            connection.Close();
        }
    }
}