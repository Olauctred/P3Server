<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Empleados1.aspx.cs" Inherits="Empleados" %>

<%@ Register src="~/cabecera.ascx" TagPrefix="ucc" TagName="cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME - Empleados1</title>
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
        fieldset #rblSexEmp{
            display:inline-block;
            margin-left:15px;
            line-height:28px;
        }
        fieldset #cmdEnviar{
            width:80px;
            margin-left:calc(50% - 40px);
            padding:2px;
        }
        /*Styles individuales de etiquetas ASP*/
        #lblValores{
            display:block;
            margin:auto;
            text-align:center;
            width:60%;
            background:#66FFFF;
        }
    </style>
</head>
<body>
    
    <form id="formEmp" runat="server">
        <ucc:cabecera runat="server" ID="cabecera"/>
    <fieldset>
        <legend>DATOS DE LOS EMPLEADOS</legend>
        <p><label for="txtCodEmp">Código Empleado</label><asp:TextBox ID="txtCodEmp" runat="server" CssClass="campo"></asp:TextBox></p>
        <p><label for="txtNifEmp">NIF</label><asp:TextBox ID="txtNifEmp" runat="server" CssClass="campo"></asp:TextBox></p>
        <p><label for="txtNomEmp">Apellidos y Nombre</label><asp:TextBox ID="txtNomEmp" runat="server" CssClass="campo" Width="325px"></asp:TextBox></p>
        <p><label for="txtDirEmp">Dirección</label><asp:TextBox ID="txtDirEmp" runat="server" Width="370px" CssClass="campo"></asp:TextBox></p>
        <p><label for="txtCiuEmp">Ciudad</label><asp:TextBox ID="txtCiuEmp" runat="server" CssClass="campo" Width="370px"></asp:TextBox></p>
        <p><label for="txtTelEmp">Teléfonos</label><asp:TextBox ID="txtTelEmp" runat="server" CssClass="campo" Width="280px"></asp:TextBox></p>
        <p><label for="txtFnaEmp">Fecha de Nacimiento</label><asp:TextBox ID="txtFnaEmp" runat="server" CssClass="campo"></asp:TextBox></p>
        <p><label for="txtFinEmp">Fecha de Ingreso</label><asp:TextBox ID="txtFinEmp" runat="server" CssClass="campo"></asp:TextBox></p>
        <div style="line-height:32px; height:32px;"><label>Sexo</label>
            <asp:RadioButtonList ID="rblSexEmp" runat="server" OnSelectedIndexChanged="rblSexEmp_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Table">
                <asp:ListItem Selected="True">Hombre</asp:ListItem>
                <asp:ListItem>Mujer</asp:ListItem>
            </asp:RadioButtonList>
        </div>       
        <p><label for="ddlDepEmp">Departamento</label>
            <asp:DropDownList ID="ddlDepEmp" runat="server" CssClass="campo">
                <asp:ListItem Text="Investigación" Value="Investiagación" Selected="True">Investigación</asp:ListItem>
                <asp:ListItem Text="Desarrollo" Value="Desarrollo">Desarrollo</asp:ListItem>
                <asp:ListItem Text="Innovación" Value="Innovación">Innovación</asp:ListItem>
                <asp:ListItem Text="Administración" Value="Administración">Administración</asp:ListItem>
            </asp:DropDownList></p>
        <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
        
        <p><asp:Label ID="lblValores" runat="server" Text="" Visible="false"></asp:Label></p>
    </fieldset>
    </form>
</body>
</html>
