<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Desemp1_Bauer.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Menú Principal"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Películas"></asp:Label>
            <br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaPeliculas.aspx">Cargar nuevas películas</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ModificacionPeliculas.aspx">Modificar películas</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BajaPeliculas.aspx">Eliminar películas</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Directores"></asp:Label>
        </div>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AltaDirectores.aspx">Cargar nuevos directores</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ModificacionDirectores.aspx">Modificar Directores</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/BajaDirectores.aspx">Eliminar Directores</asp:HyperLink>
        <br />
    </form>
</body>
</html>
