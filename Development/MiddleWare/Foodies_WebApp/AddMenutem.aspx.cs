using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodies_WebApp
{
    public partial class AddMenutem : System.Web.UI.Page
    {
        private MySqlConnection connection =
           new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadMenuItem_OnClick(object sender, EventArgs e)
        {
            
          

        }
    }
}