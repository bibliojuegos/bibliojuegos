<%@ Page EnableEventValidation="false" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FrEmpleados.aspx.cs" Inherits="FrEmpleados" Title="Página sin título" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 59%;
        }
        .style2
        {
            width: 90px;
        }
        .style3
        {
            width: 90px;
            height: 36px;
        }
        .style4
        {
            height: 36px;
        }
        .style5
        {
            width: 90px;
            height: 33px;
        }
        .style6
        {
            height: 33px;
        }
        .style7
        {
            width: 90px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
        }
        .style9
        {
            width: 90px;
            height: 41px;
        }
        .style10
        {
            height: 41px;
        }
        .style11
        {
            width: 90px;
            height: 42px;
        }
        .style12
        {
            height: 42px;
        }
        .style13
        {
            width: 90px;
            height: 35px;
        }
        .style14
        {
            height: 35px;
        }
        .style15
        {
            width: 90px;
            height: 40px;
        }
        .style16
        {
            height: 40px;
        }
        .style17
        {
            width: 138px;
        }
        .style18
        {
            height: 40px;
            width: 138px;
        }
        .style19
        {
            height: 35px;
            width: 138px;
        }
        .style20
        {
            height: 42px;
            width: 138px;
        }
        .style21
        {
            height: 41px;
            width: 138px;
        }
        .style22
        {
            height: 45px;
            width: 138px;
        }
        .style23
        {
            height: 33px;
            width: 138px;
        }
        .style24
        {
            height: 36px;
            width: 138px;
        }
        .style25
        {
            width: 95px;
        }
        .style26
        {
            height: 40px;
            width: 95px;
        }
        .style27
        {
            height: 35px;
            width: 95px;
        }
        .style28
        {
            height: 42px;
            width: 95px;
        }
        .style29
        {
            height: 41px;
            width: 95px;
        }
        .style30
        {
            height: 45px;
            width: 95px;
        }
        .style31
        {
            height: 33px;
            width: 95px;
        }
        .style32
        {
            height: 36px;
            width: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpCuerpo" Runat="Server">
    <table id="BtSalir" class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style17">
                Empleados:</td>
            <td class="style25">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                IdEmpleado :</td>
            <td class="style18">
                <asp:TextBox ID="TxtIdEmpleado" runat="server"></asp:TextBox>
            </td>
            <td class="style26">
                <asp:Button ID="BtLeer" runat="server" Text="Leer" />
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style13">
                Rut :</td>
            <td class="style19">
                <asp:TextBox ID="TxtRut" runat="server"></asp:TextBox>
            </td>
            <td class="style27">
            </td>
            <td class="style14">
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style11">
                Nombre :</td>
            <td class="style20">
                <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
            </td>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style9">
                Apellidos :</td>
            <td class="style21">
                <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
            </td>
            <td class="style29">
            </td>
            <td class="style10">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style7">
                Telefono :</td>
            <td class="style22">
                <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
            </td>
            <td class="style8">
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style5">
                Sucursal:</td>
            <td class="style23">
                <asp:TextBox ID="TxtSucursal" runat="server"></asp:TextBox>
            </td>
            <td class="style31">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style24">
            </td>
            <td class="style32">
                <asp:Button ID="BtActualizar" runat="server" onclick="BtActualizar_Click" 
                    Text="Agregar" />
            </td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="Salir" />
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idEmpleado" 
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idEmpleado" HeaderText="idEmpleado" ReadOnly="True" 
                        SortExpression="idEmpleado" />
                    <asp:BoundField DataField="rut" HeaderText="rut" SortExpression="rut" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" 
                        SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" 
                        SortExpression="apellido" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" 
                        SortExpression="telefono" />
                    <asp:BoundField DataField="idSucursal" HeaderText="idSucursal" 
                        SortExpression="idSucursal" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                DeleteCommand="DELETE FROM [empleados] WHERE [idEmpleado] = @idEmpleado" 
                InsertCommand="INSERT INTO [empleados] ([idEmpleado], [rut], [nombre], [apellido], [telefono], [idSucursal]) VALUES (@idEmpleado, @rut, @nombre, @apellido, @telefono, @idSucursal)" 
                SelectCommand="SELECT [idEmpleado], [rut], [nombre], [apellido], [telefono], [idSucursal] FROM [empleados]" 
                UpdateCommand="UPDATE [empleados] SET [rut] = @rut, [nombre] = @nombre, [apellido] = @apellido, [telefono] = @telefono, [idSucursal] = @idSucursal WHERE [idEmpleado] = @idEmpleado">
                <DeleteParameters>
                    <asp:Parameter Name="idEmpleado" Type="Decimal" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="rut" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="idSucursal" Type="Decimal" />
                    <asp:Parameter Name="idEmpleado" Type="Decimal" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="idEmpleado" Type="Decimal" />
                    <asp:Parameter Name="rut" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="idSucursal" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
        </tr>
    </table>
</asp:Content>

