<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

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
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ErrorMessage="El código de empleado es obligatorio" ControlToValidate="txtCodEmp" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="textos">Código empleado</div>
                <asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtNifEmp" runat="server" ErrorMessage="El NIF del empleado es obligatorio" ControlToValidate="txtNifEmp" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="textos">NIF</div>
                <asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtNomEmp" runat="server" ErrorMessage="El campo de Nombre y apellidos es obligatorio" ControlToValidate="txtNomEmp" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="textos">Apellidos y Nombre</div>
                <asp:TextBox ID="txtNomEmp" runat="server" Width="300px"></asp:TextBox>
                <div class="textos">Dirección</div>
                <asp:TextBox ID="txtDirEmp" runat="server" Width="325px"></asp:TextBox>
                <div class="textos">Ciudad</div>
                <asp:TextBox ID="txtCiudEmp" runat="server" Width="325px"></asp:TextBox>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtTelEmp" runat="server" ErrorMessage="El campo de teléfono es obligatorio" ControlToValidate="txtTelEmp" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="textos">Teléfono</div>
                <asp:TextBox ID="txtTelEmp" runat="server" Width="250px"></asp:TextBox>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtFnaEmp" runat="server" ErrorMessage="La fecha de nacimiento es obligatoria" ControlToValidate="txtFnaEmp" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                    <asp:CompareValidator ID="cmpTxtFnaEmp" runat="server" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" ControlToValidate="txtFnaEmp" Display="Dynamic" ControlToCompare="txtFinEmp" Type="Date" Operator="LessThan"></asp:CompareValidator>
                </div>
                <div class="textos">Fecha de nacimiento</div>
                <asp:TextBox ID="txtFnaEmp" runat="server"></asp:TextBox>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtFinEmp" runat="server" ErrorMessage="La fecha de ingreso es obligatoria" ControlToValidate="txtFinEmp" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
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
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
