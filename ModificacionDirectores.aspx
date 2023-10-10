<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificacionDirectores.aspx.cs" Inherits="Desemp1_Bauer.ModificacionDirectores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Modificar directores"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="apellidoDirector" DataValueField="idDirector">
            </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="quitar filtro" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="idDirector" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="idDirector" HeaderText="Id" ReadOnly="True" SortExpression="idDirector" />
                <asp:BoundField DataField="nombreDirector" HeaderText="Nombre" SortExpression="nombreDirector" />
                <asp:BoundField DataField="apellidoDirector" HeaderText="Apellido" SortExpression="apellidoDirector" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Directores] WHERE [idDirector] = @idDirector" InsertCommand="INSERT INTO [Directores] ([nombreDirector], [apellidoDirector]) VALUES (@nombreDirector, @apellidoDirector)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT [idDirector], [nombreDirector], [apellidoDirector] FROM [Directores]" UpdateCommand="UPDATE [Directores] SET [nombreDirector] = @nombreDirector, [apellidoDirector] = @apellidoDirector WHERE [idDirector] = @idDirector">
            <DeleteParameters>
                <asp:Parameter Name="idDirector" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombreDirector" Type="String" />
                <asp:Parameter Name="apellidoDirector" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtNombre" Name="nombreDirector" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtApellido" Name="apellidoDirector" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="GridView1" Name="idDirector" PropertyName="SelectedValue" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Apellido:"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
        <br />
        <br />
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
    </form>
</body>
</html>
