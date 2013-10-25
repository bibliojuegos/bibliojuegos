<%@ Page EnableEventValidation="false" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FrCliente.aspx.cs" Inherits="FrCliente" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 105%;
            height: 290px;
        }
        .style2
        {
            width: 96px;
        }
        .style3
        {
            width: 166px;
        }
        .style4
        {
            width: 116px;
        }
    .style5
    {
        width: 96px;
        height: 17px;
    }
    .style6
    {
        width: 166px;
        height: 17px;
    }
    .style7
    {
        width: 116px;
        height: 17px;
    }
    .style8
    {
        height: 17px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpCuerpo" Runat="Server">
    <table id="Bt" class="style1">
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                Cliente:</td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            IdCliente :</td>
                        <td class="style3">
                            <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Nombre :</td>
            <td class="style3">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Apellidos :</td>
            <td class="style3">
                <asp:TextBox ID="txtAppelido" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Edad :</td>
            <td class="style3">
                <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Telefono :</td>
            <td class="style3">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Id Venta:</td>
            <td class="style3">
                <asp:TextBox ID="TxtIdVentas" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:Button ID="BtEliminar" runat="server" Text="Eliminar" />
            </td>
            <td>
                <asp:Button ID="BtSalir" runat="server" Text="Salir" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="BtActualizar" runat="server" onclick="BtActualizar_Click" 
                    Text="Agregar" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:GridView ID="grCliente" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="idCliente" DataSourceID="grClienteSource" AllowPaging="True" 
                    AllowSorting="True" BorderStyle="Solid" BorderWidth="2px">
                    <Columns>
                        <asp:BoundField DataField="idCliente" HeaderText="idCliente" ReadOnly="True" 
                            SortExpression="idCliente" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" 
                            SortExpression="nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" 
                            SortExpression="apellido" />
                        <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                        <asp:BoundField DataField="idVentas" HeaderText="idVentas" 
                            SortExpression="idVentas" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" 
                            SortExpression="telefono" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="grClienteSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                    
                    SelectCommand="SELECT [idCliente], [nombre], [apellido], [edad], [idVentas], [telefono] FROM [cliente]" 
                    DeleteCommand="DELETE FROM [cliente] WHERE [idCliente] = @idCliente" 
                    InsertCommand="INSERT INTO [cliente] ([idCliente], [nombre], [apellido], [edad], [idVentas], [telefono]) VALUES (@idCliente, @nombre, @apellido, @edad, @idVentas, @telefono)" 
                    
                    
                    UpdateCommand="UPDATE [cliente] SET [nombre] = @nombre, [apellido] = @apellido, [edad] = @edad, [idVentas] = @idVentas, [telefono] = @telefono WHERE [idCliente] = @idCliente">
                    <DeleteParameters>
                        <asp:Parameter Name="idCliente" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="edad" Type="Decimal" />
                        <asp:Parameter Name="idVentas" Type="Decimal" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="idCliente" Type="Decimal" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="idCliente" Type="Decimal" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="edad" Type="Decimal" />
                        <asp:Parameter Name="idVentas" Type="Decimal" />
                        <asp:Parameter Name="telefono" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

