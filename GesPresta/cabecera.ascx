<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cabecera.ascx.cs" Inherits="cabecera" %>
<header style="text-align:center; margin-bottom:20px;/*or padding-bottom:20px;*/">
    <div>
        <asp:LinkButton ID="aInicio" runat="server" PostBackUrl="~/Default.aspx">Inicio</asp:LinkButton> |
        <asp:LinkButton ID="aEmpleados" runat="server" PostBackUrl="~/Empleados.aspx">Empleados</asp:LinkButton> |
        <asp:LinkButton ID="aPrestaciones" runat="server" PostBackUrl="~/Prestaciones.aspx">Prestaciones</asp:LinkButton>
    </div>
        <h1 style="margin-bottom:0;">ACME INNOVACIÓN, S. FIG.</h1>
        <h3 style="margin-top:0; margin-bottom:0; font-weight:normal;">Gestión de Prestaciones Sociales</h3>
</header>