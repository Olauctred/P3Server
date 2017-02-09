<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prestaciones1.aspx.cs" Inherits="Prestaciones" %>

<%@ Register Src="~/cabecera.ascx" TagPrefix="uc1" TagName="cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME - Prestaciones1</title>
    <style>
        /*Reset Table*/
        td, tr, table, tbody{
            padding:0;
        }
        fieldset{
            border:0;
        }
        fieldset legend{
            font-size:x-large;
            font-weight:normal;
            text-align:center;
            margin:0 auto;
        }
        fieldset label{
            display:inline-block;
            text-align:right;
            float:left;
            width:50%;

        }
        tbody label{
            display:inline-block;
            width:auto;
        }
        fieldset .campo{
            margin-left:15px;
        }
        fieldset #ddlTipPre{
            display:inline-block;
            margin-left:15px;
            line-height:28px;
        }
        fieldset #cmdEnviar{
            width:80px;
            margin-left:calc(50% - 40px);
            padding:2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:cabecera runat="server" ID="cabecera" />
    <fieldset>
        <legend>DATOS DE LAS PRESTACIONES</legend>
        <p><label>Código de Prestación</label><asp:TextBox class="campo" ID="txtCodPre" runat="server"></asp:TextBox></p>
        <p><label>Descripción</label><asp:TextBox class="campo" ID="txtDesPre" runat="server"></asp:TextBox></p>
        <p><label>Importe Fijo</label><asp:TextBox class="campo" ID="txtImpPre" runat="server"></asp:TextBox></p>
        <p><label>Porcentaje del Importe</label><asp:TextBox class="campo" ID="txtPorPre" runat="server"></asp:TextBox></p>
        <p><label>Tipo de Prestación</label>
            <asp:DropDownList ID="ddlTipPre" runat="server">
                <asp:ListItem Text="Dentaria" Value="Dentaria">Dentaria</asp:ListItem>
                <asp:ListItem Text="Familiar" Value="Familiar">Familiar</asp:ListItem>
                <asp:ListItem Text="Ocular" Value="Ocular" Selected="True">Ocular</asp:ListItem>
                <asp:ListItem Text="Otras" Value="Otras">Otras</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" PostBackUrl="~/Prestaciones1Respuesta.aspx"/>
    </fieldset>
    </form>
</body>
</html>
