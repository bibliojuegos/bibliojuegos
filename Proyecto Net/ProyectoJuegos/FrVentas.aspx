<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FrVentas.aspx.cs" Inherits="FrVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        height: 303px;
    }
        .style2
        {
            width: 131px;
            margin-left: 40px;
        }
        .style3
        {
        width: 150px;
    }
        .style4
        {
        width: 146px;
    }
        .style5
    {
        width: 224px;
    }
    .style6
    {
        width: 146px;
        height: 37px;
    }
    .style7
    {
        width: 150px;
        height: 37px;
    }
    .style8
    {
        width: 131px;
        height: 37px;
    }
    .style9
    {
        width: 224px;
        height: 37px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cpCuerpo" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                Ventas :</td>
            <td class="style3">
                <asp:TextBox ID="TxtBuscar" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Button ID="BtSelect" runat="server" Text="Buscar"/>
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="dsVenta" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" style="margin-top: 0px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" 
                            SortExpression="nombre" />
                        <asp:BoundField DataField="restriccion" HeaderText="restriccion" 
                            SortExpression="restriccion" />
                        <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                        <asp:BoundField DataField="precio" HeaderText="precio" 
                            SortExpression="precio" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dsVenta" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                    SelectCommand="SELECT [nombre], [restriccion], [stock], [precio] FROM [juegos]">
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" align="center">
                <asp:GridView ID="carroCompra" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField HeaderText="Juego" DataField="Juego" />
                        <asp:BoundField HeaderText="Plataforma" DataField="Plataforma" />
                        <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        <asp:BoundField HeaderText="Cantidad" DataField="Cantidad" />
                        <asp:BoundField HeaderText="Total" DataField="Total" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="lbInicio" runat="server" Text="Total compra: " Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lbTotal" runat="server"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Juego:</td>
            <td class="style3">
                <asp:TextBox ID="TxtJuego" runat="server"></asp:TextBox>
                                    </td>
            <td class="style2">
                Precio:</td>
            <td class="style2">
                <asp:TextBox ID="TxtPrecio" runat="server"></asp:TextBox>
                                    </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="BtActualizar" runat="server" Text="Actualizar" />
            </td>
            <td class="style3">
                Cantidad</td>
            <td class="style2">
                <asp:TextBox ID="TxtCantidad" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Button ID="btAgregar" runat="server" onclick="btAgregar_Click" 
                    Text="Agregar" />
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="BtGuardar" runat="server" Text="Guardar" />
            </td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="BtSalir" runat="server" Text="Salir" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

