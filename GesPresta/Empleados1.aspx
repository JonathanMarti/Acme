<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" type="text/css" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />
        <div>
            <h2>DATOS DE LOS EMPLEADOS</h2>
            <div class="cuerpo">
                <div class="textos">Código empleado</div>
                <asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
                <div class="textos">NIF</div>
                <asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox>
                <div class="textos">Apellidos y Nombre</div>
                <asp:TextBox ID="txtNomEmp" runat="server" Width="300px"></asp:TextBox>
                <div class="textos">Dirección</div>
                <asp:TextBox ID="txtDirEmp" runat="server" Width="325px"></asp:TextBox>
                <div class="textos">Ciudad</div>
                <asp:TextBox ID="txtCiudEmp" runat="server" Width="325px"></asp:TextBox>
                <div class="textos">Teléfono</div>
                <asp:TextBox ID="txtTelEmp" runat="server" Width="250px"></asp:TextBox>
                <div class="textos">Fecha de nacimiento</div>
                <asp:TextBox ID="txtFnaEmp" runat="server"></asp:TextBox>
                <div class="textos">Fecha de ingreso</div>
                <asp:TextBox ID="txtFinEmp" runat="server"></asp:TextBox>
                <div class="textos">Sexo</div>
                <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                </asp:RadioButtonList>
                <div class="textos">Departamento</div>
                <asp:DropDownList ID="ddlDepEmp" runat="server">
                    <asp:ListItem Selected="True">Investigación</asp:ListItem>
                    <asp:ListItem>Desarrollo</asp:ListItem>
                    <asp:ListItem>Innovación</asp:ListItem>
                    <asp:ListItem>Administración</asp:ListItem>
                </asp:DropDownList>
                <div class="boton">
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click"/>
                </div>
                <div class="ventana" style="width:60%; text-align: center;margin:20px auto;">
                    <asp:Label ID="lblValores" runat="server" BackColor="#66ffff" Width="100%" Visible="false"></asp:Label>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
