<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vista.aspx.cs" Inherits="PracticaProfecional.Vista2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="AÑO" HeaderText="AÑO" SortExpression="AÑO" />
                    <asp:BoundField DataField="EDITORIAL" HeaderText="EDITORIAL" SortExpression="EDITORIAL" />
                    <asp:BoundField DataField="AUTOR" HeaderText="AUTOR" SortExpression="AUTOR" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cadena %>" SelectCommand="SELECT * FROM [vw_LIBROS]"></asp:SqlDataSource>
        </div>
        
    </form>
</body>
</html>
