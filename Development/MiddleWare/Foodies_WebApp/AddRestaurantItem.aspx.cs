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
    public partial class AddRestaurantItem : System.Web.UI.Page
    {
        private MySqlConnection connection =
              new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/Images/FoodiesLogo.png";
        }

        protected void AddRestaurant_OnClick(object sender, EventArgs e)
        {
            connection.Open();
            string selectQuery = "SELECT * FROM restuarants WHERE restaurantName = '" + ResName.Text + "';";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                MessageBox.Show("Resturant already exists");
                FileUpload1 = null;
                ResName.Text = " ";

            }
            else
            {
                if (FileUpload1.HasFile)
                {
                    string Extent = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (Extent.ToLower() == ".png" || Extent.ToLower() == ".jpg" || Extent.ToLower() == ".jpeg")
                    {
                        Stream sm = FileUpload1.PostedFile.InputStream;
                        BinaryReader binReader = new BinaryReader(sm);
                        byte[] bytes = binReader.ReadBytes((Int32)sm.Length);

                        string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;";
                        MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                        string iquery = "INSERT INTO `restuarants`(`restaurantName`, `adminName`, `image`) VALUES (@restaurantName,NULL,@image)";

                        MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);

                        databaseConnection.Open();
                        commandDatabase.Parameters.AddWithValue("@restaurantName", ResName.Text);
                        commandDatabase.Parameters.AddWithValue("@image", bytes);
                        commandDatabase.ExecuteNonQuery();
                        databaseConnection.Close();

                        Image1.ImageUrl = "data:Imaga;base64," + Convert.ToBase64String(bytes);
                        MessageBox.Show("Now you need to add Menu Item");
                        Session["rest_Name"] = ResName.Text;
                        Response.Redirect("AddMenuItem.aspx");

                    }
                    else
                    {
                        FileUpload1 = null;
                        MessageBox.Show("menu item image must be  JPG, JPEG  or PNG extension");
                        ResName.Text = " ";


                    }
                }
            }
        }
    }
}