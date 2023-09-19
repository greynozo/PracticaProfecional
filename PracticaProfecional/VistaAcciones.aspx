<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VistaAcciones.aspx.cs" Inherits="PracticaProfecional.VistaAcciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="AÑO" HeaderText="AÑO" SortExpression="AÑO" />
                    <asp:BoundField DataField="EDITORIAL" HeaderText="EDITORIAL" SortExpression="EDITORIAL" />
                    <asp:BoundField DataField="AUTOR" HeaderText="AUTOR" SortExpression="AUTOR" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                </columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cadena %>" SelectCommand="SELECT * FROM [vw_LIBROS]"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
