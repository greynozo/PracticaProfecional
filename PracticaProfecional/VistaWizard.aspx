<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VistaWizard.aspx.cs" Inherits="PracticaProfecional.Vista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div id="content" class="p-4 p-md-5 pt-5">
            <asp:GridView ID="gdTabla" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cadena %>" SelectCommand="SELECT * FROM [vw_LIBROS]"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
