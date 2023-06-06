using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfecional
{
    public partial class Login : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {
                    //SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                    //builder.DataSource = "BANGHO";
                    //builder.InitialCatalog = "ABM_BIB";
                    //builder.UserID = "sa";
                    //builder.Password = "13213";

                    string script = "SELECT EMAIL FROM TablaUsuarios WHERE EMAIL = '" + txtEmail.Text + "' AND" +
                        " PASS = '" + txtPassword.Text + "'";

                    connection.Open();

                    SqlCommand command = new SqlCommand(script, connection);

                    //SqlDataReader reader = command.ExecuteReader();

                    int filas = command.ExecuteNonQuery();


                    connection.Close();

                    if (filas < 0)
                    {
                        Session["Usuario"] = txtEmail.Text;
                        Response.Redirect("Inicio.aspx", false);
                    }
                    //else
                    //    lblError.Text = "Usuario o Password incorrectos.";

                    //reader.Close();


                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.Message);
                }
            }
        }
    }
}