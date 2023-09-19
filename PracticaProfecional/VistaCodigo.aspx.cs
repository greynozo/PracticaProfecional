using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfecional
{
    public partial class Vista3 : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                SqlCommand consulta = new SqlCommand("SELECT * FROM LIBROS", connection);

                SqlDataAdapter Adaptador = new SqlDataAdapter(consulta);
                DataTable dataTable = new DataTable();
                Adaptador.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }
    }
}