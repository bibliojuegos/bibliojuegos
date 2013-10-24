<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FrJuegos.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 260px;
            margin-left: 40px;
        }
        .style2
        {
            width: 48px;
        }
    </style>
</head>
<body>
    <form id="frJuegos" runat="server">
    <div dir="ltr">
        <table border="1">
        <tr>
        <td class="style1">
            <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label> 
        </td>
        <td>
            <asp:TextBox ID="txIdJuego" runat="server">5</asp:TextBox>
        </td>
        <td class="style2">
            <asp:Button ID="btLeer" runat="server" Text="Leer" Width="46px" 
                onclick="btLeer_Click"/>
        </td>
        <td>
            <asp:Button ID="btSalir" runat="server" Text="Salir" Width="55px" 
                onclick="btSalir_Click"/>
        </td>
        </tr>
        <tr>
        <td class="style1">
            <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txNombre" runat="server">juego1</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label3" runat="server" Text="Id plataforma:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txPlataforma" runat="server">1</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label4" runat="server" Text="Idioma:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txIdioma" runat="server">ingles</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label5" runat="server" Text="Año publicacion:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txAno" runat="server">1993</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label6" runat="server" Text="Restriccion: "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txRestriccion" runat="server">teen</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label7" runat="server" Text="Id genero:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txGenero" runat="server">4</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label9" runat="server" Text="Id compañia: "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txCompania" runat="server">3</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label10" runat="server" Text="Stock: "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txStock" runat="server">20</asp:TextBox>
        </td>
        </tr>
         <tr>
        <td class="style1">
            <asp:Label ID="Label11" runat="server" Text="Precio: "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txPrecio" runat="server">9000</asp:TextBox>
        </td>
        </tr>
        <tr>
        <td class="style1">
            <asp:Button ID="btAgregar" runat="server" Text="Agregar" 
                onclick="btAgregar_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=localhost\SQLEXPRESS;Initial Catalog=master;Integrated Security=True" 
                ProviderName="System.Data.SqlClient" 
                
                SelectCommand="SELECT [IdJuego], [Nombre], [IdPlataforma], [Idioma], [Año], [restriccion], [IdCompañia], [IdGenero], [stock], [precio] FROM [Juegos]" 
                DeleteCommand="delete from Juegos where IdJuego = @IdJuego;" 
                UpdateCommand="update Juegos set Nombre = @Nombre, IdPlataforma = @IdPlataforma, Idioma = @Idioma, Año = @Año, restriccion = @restriccion, IdCompañia = @IdCompañia,IdGenero = @IdGenero, stock = @stock, precio = @precio where IdJuego = @IdJuego;">
                <DeleteParameters>
                    <asp:Parameter Name="IdJuego" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" />
                    <asp:Parameter Name="IdJuego" />
                    <asp:Parameter Name="IdPlataforma" />
                    <asp:Parameter Name="Idioma" />
                    <asp:Parameter Name="Año" />
                    <asp:Parameter Name="restriccion" />
                    <asp:Parameter Name="IdCompañia" />
                    <asp:Parameter Name="IdGenero" />
                    <asp:Parameter Name="stock" />
                    <asp:Parameter Name="precio" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
        </td>
        <td>
            <asp:Button ID="btEliminar" runat="server" Text="Eliminar" 
                onclick="btEliminar_Click" />
        </td>
        <td class="style2">
            <asp:Button ID="btCancelar" runat="server" Text="Cancelar" 
                onclick="btCancelar_Click" />
        </td>
        </tr>
        </table>
        <table>
        <tr>
        <td>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdJuego" 
                DataSourceID="SqlDataSource1" BorderStyle="Groove" BorderWidth="5px" >
                <Columns>
                    <asp:BoundField DataField="IdJuego" HeaderText="Juego" ReadOnly="True" 
                        SortExpression="IdJuego" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                        SortExpression="Nombre" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IdPlataforma" HeaderText="Plataforma" 
                        SortExpression="IdPlataforma" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Idioma" HeaderText="Idioma" 
                        SortExpression="Idioma" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="restriccion" HeaderText="Restriccion" 
                        SortExpression="restriccion" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IdCompañia" HeaderText="Compañia" 
                        SortExpression="IdCompañia" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IdGenero" HeaderText="Genero" 
                        SortExpression="IdGenero" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="precio" HeaderText="Precio" 
                        SortExpression="precio" >
                        <ControlStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
