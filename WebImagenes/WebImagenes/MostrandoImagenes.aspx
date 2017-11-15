<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrandoImagenes.aspx.cs" Inherits="WebImagenes.MostrandoImagenes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:ImageField DataImageUrlField="IMAGEN" DataImageUrlFormatString="~/Imagenes/{0}" HeaderText="IMAGEN">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbImagenesConnectionString %>" SelectCommand="SELECT * FROM IMAGENES"></asp:SqlDataSource>
    </form>
</body>
</html>
