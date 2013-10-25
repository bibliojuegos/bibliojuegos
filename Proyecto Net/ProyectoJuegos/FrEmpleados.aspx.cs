using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class FrEmpleados : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtActualizar_Click(object sender, EventArgs e)
    {
        Libreria.Entity.Empleados empleados = new Libreria.Entity.Empleados(int.Parse(TxtIdEmpleado.Text), TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtTelefono.Text);

    }
}
