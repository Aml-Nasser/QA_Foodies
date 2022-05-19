using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Foodies_WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        public string user_Name;
        private MySqlConnection connection =
            new MySqlConnection("datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        bool usedLoyaltyPoints = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_OnClick(object sender, EventArgs e)
        {
            connection.Open();
            string selectQuery = "SELECT userName,password,loyaltyPoints FROM user WHERE userName = '" + username.Text + "' AND password = '" + password.Text + "';";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                Session["user_Name"] = username.Text;
                Session["loyaltyPoints"] = mdr[2].ToString();
                Session["usedLoyaltyPoints"] = usedLoyaltyPoints;
                Response.Redirect("UserHomePage.aspx");

            }
            else
            {
                MessageBox.Show("Invalid username or password");
            }
            connection.Close();

            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(password.Text))
            {
                MessageBox.Show("Please input Username and Password", "Error");
            }
            username.Text = username.Text.Remove(0, username.Text.Length);
            password.Text = password.Text.Remove(0, password.Text.Length);
        }
    }
}
