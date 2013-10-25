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
        if (!IsPostBack)
            GridView1.DataBind();
        
    }
    protected void BtActualizar_Click(object sender, EventArgs e)
    {
        //Libreria.Entity.Empleados emp = new Libreria.Entity.Empleados(1, "1", "1", "1", "1", 1);
        Libreria.Entity.Empleados empleados = new Libreria.Entity.Empleados(int.Parse(TxtIdEmpleado.Text), TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtTelefono.Text, int.Parse(TxtSucursal.Text));
        if (Libreria.DAO.DAOEmpleados.sqlInsertar(empleados))
        {
            Response.Write("Agregado");
            GridView1.DataBind();
        }
        else Response.Write("Error al agregar");
    }
}
