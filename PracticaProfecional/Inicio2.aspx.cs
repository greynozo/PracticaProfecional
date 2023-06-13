using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfecional
{
    public partial class Inicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string op1 = Request.QueryString["op1"];
            string op2 = Request.QueryString["op2"];
        }
    }
}