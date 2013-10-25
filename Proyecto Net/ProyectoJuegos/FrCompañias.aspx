<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FrCompañias.aspx.cs" Inherits="FrCompañias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 103%;
        }
        .style2
        {
            width: 154px;
        }
        .style3
        {
            width: 56px;
        }
        .style5
        {
            width: 165px;
        }
        .style6
        {
            width: 165px;
            height: 42px;
        }
        .style8
        {
            width: 154px;
            height: 42px;
        }
        .style9
        {
            width: 56px;
            height: 42px;
        }
        .style10
        {
            width: 165px;
            height: 38px;
        }
        .style12
        {
            width: 154px;
            height: 38px;
        }
        .style13
        {
            width: 56px;
            height: 38px;
        }
        .style14
        {
            width: 165px;
            height: 36px;
        }
        .style16
        {
            width: 154px;
            height: 36px;
        }
        .style17
        {
            width: 56px;
            height: 36px;
        }
        .style18
        {
            width: 162px;
        }
        .style19
        {
            width: 162px;
            height: 36px;
        }
        .style20
        {
            width: 162px;
            height: 38px;
        }
        .style21
        {
            width: 162px;
            height: 42px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpCuerpo" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style18">
                Compañias De juegos</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Id De Compañia :</td>
            <td class="style19">
                <asp:TextBox ID="TxtIdCompañia" runat="server"></asp:TextBox>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style10">
                Nombre De la Compañia :
            </td>
            <td class="style20">
                <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="style12">
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td class="style6">
                Pais De la Compañia :</td>
            <td class="style21">
                <asp:TextBox ID="TxtPais" runat="server" Height="23px"></asp:TextBox>
            </td>
            <td class="style8">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="btAgregar" runat="server" onclick="btAgregar_Click" 
                    Text="Agregar" />
            </td>
            <td class="style18">
                <asp:Button ID="BtSalir" runat="server" Text="Salir" />
            </td>
            <td class="style2">
                <asp:Button ID="BtLimpiar" runat="server" Text="Limpiar" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Solid" 
                    BorderWidth="2px" DataKeyNames="idCompania" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="idCompania" HeaderText="idCompania" ReadOnly="True" 
                            SortExpression="idCompania" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" 
                            SortExpression="nombre" />
                        <asp:BoundField DataField="idPais" HeaderText="idPais" 
                            SortExpression="idPais" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                    DeleteCommand="DELETE FROM [compania] WHERE [idCompania] = @idCompania" 
                    InsertCommand="INSERT INTO [compania] ([idCompania], [nombre], [idPais]) VALUES (@idCompania, @nombre, @idPais)" 
                    SelectCommand="SELECT [idCompania], [nombre], [idPais] FROM [compania]" 
                    UpdateCommand="UPDATE [compania] SET [nombre] = @nombre, [idPais] = @idPais WHERE [idCompania] = @idCompania">
                    <DeleteParameters>
                        <asp:Parameter Name="idCompania" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="idPais" Type="Decimal" />
                        <asp:Parameter Name="idCompania" Type="Decimal" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="idCompania" Type="Decimal" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="idPais" Type="Decimal" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

