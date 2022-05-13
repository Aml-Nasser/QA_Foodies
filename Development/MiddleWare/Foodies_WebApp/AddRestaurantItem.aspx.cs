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

        }

        protected void AddRestaurant_OnClick(object sender, EventArgs e)
        {
            var menuitemid = 0;
            connection.Open();
            string selectQuery = "SELECT MAX(menuitemid) FROM menuitem";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                menuitemid = int.Parse(mdr[0].ToString());
            }
            connection.Close();
            menuitemid++;
            if (FileUpload1.HasFile)
            {
                string Extent = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (Extent.ToLower() != ".png" || Extent.ToLower() == ".jpg" || Extent.ToLower() == ".JPEG")
                {
                    FileUpload1 = null;
                    MessageBox.Show("menu item image must be  JPG, JPEG  or PNG extension");
                    ResName.Text = " ";
                   
                }
                else
                {
                    Stream sm = FileUpload1.PostedFile.InputStream;
                    BinaryReader binReader = new BinaryReader(sm);
                    byte[] bytes = binReader.ReadBytes((Int32)sm.Length);

                    //Insert Data
                  

                }

            }
        }
    }
}