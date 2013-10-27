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

public partial class FrCliente : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            grCliente.DataBind();
    }
    protected void BtActualizar_Click(object sender, EventArgs e)
    {
        Libreria.Entity.Cliente cliente = new Libreria.Entity.Cliente(int.Parse(txtIdCliente.Text), txtNombre.Text, txtAppelido.Text, int.Parse(txtEdad.Text), int.Parse(TxtIdVentas.Text), txtTelefono.Text);
        //Libreria.Entity.Cliente cliente = new Libreria.Entity.Cliente(1, "1", "1", 2, 2, "1");
        if (Libreria.DAO.DAOCliente.sqlInsertar(cliente))
        {
            Response.Write("Agregado");
            grCliente.DataBind();
            //BtActualizar.Text = "Guardar";
        }
        else
        {
            Response.Write("Llave primaria ya existe");
            //Libreria.DAO.DAOCliente.sqlModificar(cliente);
            //Response.Write("Actualizado");
            //BtActualizar.Text = "Actualizar";
        }   
        

    }
}
