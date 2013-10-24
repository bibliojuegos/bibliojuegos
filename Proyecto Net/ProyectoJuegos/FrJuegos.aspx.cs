using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btAgregar_Click(object sender, EventArgs e)
    {
        Libreria.Entity.Juego j1 = new Libreria.Entity.Juego(int.Parse(txIdJuego.Text), txNombre.Text, int.Parse(txPlataforma.Text), txIdioma.Text, int.Parse(txAno.Text), txRestriccion.Text, int.Parse(txCompania.Text), int.Parse(txGenero.Text), int.Parse(txStock.Text), int.Parse(txPrecio.Text));
       // Libreria.Entity.Juego test = new Libreria.Entity.Juego(1, "name", 3, "language", 1234, "restriction", 3, 4, 5, 6);
        if (!Libreria.DAO.DAOJuego.sqlInsert(j1))
            Response.Write("Error al agregar");
        else
        {
            Response.Write("Agregado");
            GridView1.DataBind();
        }
    }
    protected void btEliminar_Click(object sender, EventArgs e)
    {
       // Libreria.Entity.Juego j1 = new Libreria.Entity.Juego(int.Parse(txIdJuego.Text), txNombre.Text, int.Parse(txPlataforma.Text), txIdioma.Text, int.Parse(txAno.Text), txRestriccion.Text, int.Parse(txCompania.Text), int.Parse(txGenero.Text), int.Parse(txStock.Text), int.Parse(txPrecio.Text));
        if (!Libreria.DAO.DAOJuego.sqlDelete(txIdJuego.Text))
            Response.Write("No existe el dato");
        else
        {
            Response.Write("Eliminado");
            GridView1.DataBind();
            limpiarCampos();
        }
    }
    public void limpiarCampos()
    {
        txIdJuego.Text = String.Empty;
        txNombre.Text = String.Empty;
        txPlataforma.Text = String.Empty;
        txCompania.Text = String.Empty;
        txAno.Text = String.Empty;
        txGenero.Text = String.Empty;
        txPrecio.Text = String.Empty;
        txRestriccion.Text = String.Empty;
        txStock.Text = String.Empty;
        txIdioma.Text = String.Empty;
    }
    protected void btLeer_Click(object sender, EventArgs e)
    {

    }
    protected void btSalir_Click(object sender, EventArgs e)
    {
        
    }
    protected void btCancelar_Click(object sender, EventArgs e)
    {
        limpiarCampos();
    }
}
