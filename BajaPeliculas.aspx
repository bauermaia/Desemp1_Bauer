<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaPeliculas.aspx.cs" Inherits="Desemp1_Bauer.Baja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Eliminar películas"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="apellidoDirector" DataValueField="idDirector">
            </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" />
&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 29px" Text="Quitar filtro" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idPelicula" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
            <Columns>
                <asp:BoundField DataField="idPelicula" HeaderText="id Pelicula" InsertVisible="False" ReadOnly="True" SortExpression="idPelicula" />
                <asp:BoundField DataField="nombrePelicula" HeaderText="Pelicula" SortExpression="nombrePelicula" />
                <asp:BoundField DataField="idDirector" HeaderText="id Director" SortExpression="idDirector" />
                <asp:BoundField DataField="nombreDirector" HeaderText="Director" SortExpression="nombreDirector" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Peliculas] WHERE [idPelicula] = @idPelicula" InsertCommand="INSERT INTO [Peliculas] ([nombrePelicula], [idDirector]) VALUES (@nombrePelicula, @idDirector)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT Peliculas.idPelicula, Peliculas.nombrePelicula, Peliculas.idDirector, Directores.nombreDirector FROM Peliculas INNER JOIN Directores ON Peliculas.idDirector = Directores.idDirector" UpdateCommand="UPDATE [Peliculas] SET [nombrePelicula] = @nombrePelicula, [idDirector] = @idDirector WHERE [idPelicula] = @idPelicula">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idPelicula" PropertyName="SelectedValue" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombrePelicula" Type="String" />
                <asp:Parameter Name="idDirector" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombrePelicula" Type="String" />
                <asp:Parameter Name="idDirector" Type="Int32" />
                <asp:Parameter Name="idPelicula" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
        <br />
        <br />
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
    </form>
</body>
</html>
