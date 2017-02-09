<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpleadosCalendar.aspx.cs" Inherits="Empleados" %>

<%@ Register src="~/cabecera.ascx" TagPrefix="ucc" TagName="cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
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
            display:block;
            width:80px;
            margin-left:calc(50% - 40px);
            padding:2px;
            margin-top:15px;
        }
        /*Styles individuales de etiquetas ASP*/
        #lblValores{
            display:block;
            margin:auto;
            text-align:center;
            width:60%;
            background:#66FFFF;
        }
        /*================*/
        #calendarWrapper {
            width:100vw;
            display:flex;
            flex-flow:row, wrap;
        }
        #calendarWrapper > div {
            box-sizing:border-box;
            justify-content:space-around;
        }
        #calendarWrapper > .cal {
            width:20vw;
        }
        #calendarWrapper > .cal > .calendar {
            width:100%;
        }
        #calendarWrapper > .fechaIn {
            width:20vw;
        }
        #calendarWrapper > .fechaIn > * {
            width:100%;
            margin:0 auto;
            text-align:center;
        }
        #calendarWrapper > .fechaIn > input {
            width:80%;
            margin-left:10%;
        }
        #calendarWrapper > #oldWrapper {
            width:20vw;
        }
        #oldWrapper > div {
            width:100%;
            margin: 5px;
        }
        #oldWrapper > div > * {
            display:inline-block;
        }
        #oldWrapper input {
            width:25%;
        }
         #oldWrapper label {
            margin-right:5px;
            width:40%;
        }
        #erroresFecha {
            margin-top:25px;
        }
        #erroresFecha > .errorFecha {
            display:block;
            margin:0 auto;
            color: red;
            width:100% !important;
            text-align:center;
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
        <!--<p><label for="txtFnaEmp1">Fecha de Nacimiento</label><asp:TextBox ID="txtFnaEmp1" runat="server" CssClass="campo"></asp:TextBox></p>
        <p><label for="txtFinEmp1">Fecha de Ingreso</label><asp:TextBox ID="txtFinEmp1" runat="server" CssClass="campo"></asp:TextBox></p>-->
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
        <div id="calendarWrapper">
            <div class="fechaIn">
                <label for="txtFnaEmp">Fecha de Nacimiento</label><asp:TextBox ID="txtFnaEmp" runat="server" CssClass="campo" AutoPostBack="True" OnTextChanged="txtFnaEmp_TextChanged"></asp:TextBox>
            </div>
            <div class="cal">
                <asp:Calendar ID="Calendar1" CssClass="calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>
            <div class="fechaIn">
                <label for="txtFinEmp">Fecha de Ingreso</label><asp:TextBox ID="txtFinEmp" runat="server" CssClass="campo" AutoPostBack="True" OnTextChanged="txtFinEmp_TextChanged"></asp:TextBox>
            </div>
            <div class="cal">
                <asp:Calendar ID="Calendar2" CssClass="calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar2_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>
            <div id="oldWrapper">
                <h4 style="margin:0 auto; font-size:medium; font-weight:bold; text-align:center;">Antigüedad</h4>
                    <div><input id="i1" type="text" class="inputAnt" runat="server" /><label for="i1">Años</label></div>
                    <div><input id="i2" type="text" class="inputAnt" runat="server" /><label for="i2">Meses</label></div>
                    <div><input id="i3" type="text" class="inputAnt" runat="server" /><label for="i3">Días</label></div>
            </div>
        </div>

        <div id="erroresFecha" style="text-align:center; width:100vw;">
            <label visible="false" runat="server" id="error1" class="errorFecha">*La fecha de ingreso debe ser mayor que la fecha de nacimiento.</label><br />
            <label visible="false" runat="server" id="error2" class="errorFecha">*La fecha de ingreso debe ser menor que la fecha actual.</label>
        </div>
        <div style="padding:15px;">
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
        </div>
        
        
        <p><asp:Label ID="lblValores" runat="server" Text="" Visible="false"></asp:Label></p>
    </fieldset>
    </form>
</body>
</html>
