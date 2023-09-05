using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PracticaProfecional.Clases;

namespace PracticaProfecional
{
    public partial class Inicio : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //string usuario = Session["Usuario"].ToString();
                
                if (!string.IsNullOrEmpty(Session["Usuario"]))
                    Response.Redirect("Login.aspx");
            }

            lblUsuario.Text = Session["Usuario"].ToString();

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string script = "INSERT INTO TablaAlumno (Nombre, Apellido, DNI) VALUES('" + txtNombre.Text + "','" + txtApellido.Text +
                    "','" + txtDNI.Text + "')";

            bool respuesta = ClaseSQL.EjecutarScript(script);


        }

        protected void btnDatos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio2.aspx?op1=1&op2=2");
        }
    }

}