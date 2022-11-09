<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1Respuesta.aspx.cs" Inherits="GesPresta.Prestaciones1Respuesta" %>

<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="Styles.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;">VALORES RECIBIDOS DESDE EL FORMULARIO PRESTACIONES1.ASPX</h1>
            <asp:Label ID="lblValores" runat="server" style="display:block; margin:0px auto;text-align:center;" BackColor="#C0FFFF" Width="70%"></asp:Label>
        </div>
    </form>
</body>
</html>
