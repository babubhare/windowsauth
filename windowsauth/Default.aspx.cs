using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace windowsauth
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IIdentity winid = HttpContext.Current.User.Identity;
            loggedInUser.Text = winid.Name;

        }

        protected void connect_Click(object sender, EventArgs e)
        {
            results.Text = "Connecting .....";
            var connectionStr = connectionString.Text;
            var query = "SELECT COUNT(*) AS TOTAL FROM TABLE1";
            using (SqlConnection connection =
            new SqlConnection(connectionStr))
            {
                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        results.Text = reader[0].ToString();
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    results.Text = (ex.ToString());
                }
            }
        }
    }
}