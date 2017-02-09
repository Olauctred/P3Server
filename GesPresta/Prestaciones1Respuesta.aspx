<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prestaciones1Respuesta.aspx.cs" Inherits="Prestaciones1Respuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME - Prestaciones1Respuesta</title>
    <style>
        header{
            text-align:center;
            font-size:x-large;
        }
        /*Styles individuales de etiquetas ASP*/
        .lblValores{
            display:block;
            margin:auto;
            text-align:center;
            width:70%;
        }
    </style>
</head>
<body>

    <header>VALORES RECIBIDOS DEL FORMULARIO prestaciones1.aspx</header>
    <main>
        <p><asp:Label ID="lblValores1" CssClass="lblValores" Text="AAAA" runat="server"  BackColor="#C0FFFF"/></p>
        <p><asp:Label ID="lblValores2" CssClass="lblValores" Text="BBBB" runat="server"  BackColor="#C0FFC0" /></p>
        <p><asp:Label ID="lblValores3" CssClass="lblValores" Text="CCCC" runat="server"  BackColor="#FFC0C0" /></p>
        <p><asp:Label ID="lblValores4" CssClass="lblValores" Text="DDDD" runat="server"  BackColor="#FFFFC0" /></p>
    </main>

    <form id="form1" runat="server">
    <div>
        
    </div>
    </form>
</body>
</html>
