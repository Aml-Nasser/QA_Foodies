﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Foodies_WebApp
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        private MySqlConnection connection =
           new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddAdminBtn_Click(object sender, EventArgs e)
        {
            connection.Open();
            string selectQuery = "SELECT * FROM admin WHERE adminname = '" + username1.Text + "';";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                MessageBox.Show("Admin name already taken!");

            }
            else
            {

                string connectionString = ("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;");
                string iquery = "INSERT INTO `admin`(`adminName`, `email`, `password`, `address`, `phoneNumber`, `fullName`) Values ('" + username1.Text + "', '" + email.Text + "', '" + pass1.Text + "','" + address.Text + "','" + phone.Text + "','" + fullName.Text + "')";

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

                MessageBox.Show("Admin Account Successfully Created!");
            }

            connection.Close();

            if (string.IsNullOrEmpty(username1.Text) || string.IsNullOrEmpty(pass1.Text))
            {
                MessageBox.Show("Please input all data", "Error");
            }
        }
    }
}
