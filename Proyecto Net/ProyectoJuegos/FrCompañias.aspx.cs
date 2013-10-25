using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrCompañias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            GridView1.DataBind();
    }
    protected void btAgregar_Click(object sender, EventArgs e)
    {
        Libreria.Entity.Compania comp = new Libreria.Entity.Compania(int.Parse(TxtIdCompañia.Text),TxtNombre.Text,int.Parse(TxtPais.Text));
        if(Libreria.DAO.DAOCompania.sqlInsertar(comp))
        {
            Response.Write("Agregado");
            GridView1.DataBind();
        }
        else
            Response.Write("Dato ya existe");
    }
}
