<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PracticaProfecional.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
       
        
        <form runat="server">
             <h2 class="mb-4"> <asp:Label Text="text" runat="server" ID="lblUsuario" /> </h2>
        <h3>Libreria</h3>
        <table>
            <tr>
                <td><asp:Label runat="server" Text="Nombre"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="txtNombre"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNombre" runat="server" Text="*" ErrorMessage="El campo no puede estar vacio" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label runat="server" Text="Año"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="txtApellido"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ErrorMessage="El apellido es obligatorio" Text="*" ForeColor="Red" ControlToValidate="txtApellido" runat="server" /> </td>
            </tr>
            <tr>
                <td><asp:Label runat="server" Text="Editorial"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="txtDNI"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label runat="server" Text="Autor"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="TextBox1"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label runat="server" Text="ISBN"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="TextBox2"></asp:TextBox></td>
            </tr>
           <%-- <tr>
                <td><asp:Label runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td><asp:Label runat="server" Text="Repetir Password"></asp:Label></td>
                <td><asp:TextBox runat="server" ID="txtRepPassword"></asp:TextBox></td>
                <td><asp:CompareValidator runat="server" ID="cmpValidator" Text="*" ErrorMessage="Los campos deben ser iguales." ControlToValidate="txtPassword" ControlToCompare="txtRepPassword" ForeColor="Red" ></asp:CompareValidator> </td>
            </tr>--%>
            <tr>
                <td>
                    <asp:Button runat="server" CssClass="btn-success" Text="Enviar" ID="btnEnviar" OnClick="btnEnviar_Click"/>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Green" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" CssClass="btn-success" Text="Datos" ID="btnDatos" OnClick="btnDatos_Click" />
                </td>
            </tr>
        </table>    
            </form>
    </div>
</asp:Content>
