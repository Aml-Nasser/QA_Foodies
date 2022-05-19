﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies_WebApp
{
    public partial class OffersandPormotions : System.Web.UI.Page
    {
        private MySqlConnection connection =
               new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlCommand command1;
        float loyaltyPoints = 0.0f;
        protected void Page_Load(object sender, EventArgs e)
        {
            string user_Name = Session["user_Name"] as string;
            var restName = " ";
            var discountAmount = 0.00f;
           
            yu.ReadOnly = true;
           
            connection.Open();
            string selectQuery = "SELECT restaurantName,discountamount FROM offer ;";
            command = new MySqlCommand(selectQuery, connection);
            var reader = command.ExecuteReader();
            DropDownList1.Items.Add("Choose your offer ");
            while (reader.Read())
            {
                restName = reader[0].ToString();
                discountAmount = float.Parse(reader[1].ToString());
                DropDownList1.Items.Add(restName + " " + discountAmount + " " + "LE");
            }
            connection.Close();

            connection.Open();
            string selectQuery1 = "SELECT loyaltyPoints FROM user where username = '" + user_Name + "' ;";
            command1 = new MySqlCommand(selectQuery1, connection);
            var reader1 = command1.ExecuteReader();
            while (reader1.Read())
            {
                loyaltyPoints += float.Parse(reader1[0].ToString());
            }
            yu.Text = loyaltyPoints.ToString();
        }
       

    protected void UseOffer_OnClick(object sender, EventArgs e)
        {
            bool usedLoyaltyPoints = true;
            Session["usedLoyaltyPoints"] = usedLoyaltyPoints;
            Session["loyaltyPoints"] = loyaltyPoints;
            Response.Redirect("UserHomePage.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string rest_Name = Session["rest_Name"] as string;
            Response.Redirect("MenuItem.aspx");
        }
    }
}