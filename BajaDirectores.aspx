<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaDirectores.aspx.cs" Inherits="Desemp1_Bauer.BajaDirectores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Eliminar directores"></asp:Label>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="idDirector" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
            <Columns>
                <asp:BoundField DataField="idDirector" HeaderText="Id" ReadOnly="True" SortExpression="idDirector" />
                <asp:BoundField DataField="nombreDirector" HeaderText="Nombre" SortExpression="nombreDirector" />
                <asp:BoundField DataField="apellidoDirector" HeaderText="Apellido" SortExpression="apellidoDirector" />
                <asp:CommandField ShowSelectButton="True" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Directores] WHERE [idDirector] = @idDirector" InsertCommand="INSERT INTO [Directores] ([nombreDirector], [apellidoDirector]) VALUES (@nombreDirector, @apellidoDirector)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT [idDirector], [nombreDirector], [apellidoDirector] FROM [Directores]" UpdateCommand="UPDATE [Directores] SET [nombreDirector] = @nombreDirector, [apellidoDirector] = @apellidoDirector WHERE [idDirector] = @idDirector">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idDirector" PropertyName="SelectedValue" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombreDirector" Type="String" />
                <asp:Parameter Name="apellidoDirector" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombreDirector" Type="String" />
                <asp:Parameter Name="apellidoDirector" Type="String" />
                <asp:Parameter Name="idDirector" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnBaja" runat="server" OnClick="btnBaja_Click" Text="Eliminar director" />
        <br />
        <br />
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
    </form>
</body>
</html>
