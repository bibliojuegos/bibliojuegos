using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class FrVentas : System.Web.UI.Page
{
    DataTable dt;
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dt = new DataTable();
            MakeDataTable();
        }
        else
        {
            dt = (DataTable)ViewState["DataTable"];
        }
        ViewState["DataTable"] = dt;
    }

    private void MakeDataTable()
    {
        dt.Columns.Add("Juego");
        dt.Columns.Add("Plataforma");
        dt.Columns.Add("Precio");
        dt.Columns.Add("Cantidad");
        dt.Columns.Add("Total");
    }

    private void AddToDataTable()
    {
        DataRow dr = dt.NewRow();
        dr["Juego"] = TxtJuego.Text;
        dr["Plataforma"] = "unnamed";
        dr["Precio"] = TxtPrecio.Text;
        dr["Cantidad"] = TxtCantidad.Text;
        dr["Total"] = (int.Parse(TxtPrecio.Text) * int.Parse(TxtCantidad.Text)).ToString();
        dt.Rows.Add(dr);
    }

    private void BindGrid()
    {
        carroCompra.DataSource = dt;
        carroCompra.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        TxtJuego.Text = row.Cells[1].Text;
        TxtPrecio.Text = row.Cells[4].Text;

    }
    protected void btAgregar_Click(object sender, EventArgs e)
    {
        AddToDataTable();
        lbInicio.Visible = true;
        for(int x = 0;x<dt.Rows.Count;x++)
        {
            total = total+int.Parse(dt.Rows[x]["Total"].ToString());
        }
        BindGrid();
        lbTotal.Text = total.ToString();
    }
}
