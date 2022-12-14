<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />
        <div>
            <h2>DATOS DE LOS EMPLEADOS</h2>
            <div class="cuerpo-calendar">
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
                <div class="flex-container">
                    <div class="flex-content"> 
                        <div>Fecha nacimiento</div>
                        <asp:TextBox ID="txtFechNac" runat="server" AutoPostBack="true" Height="20px" OnTextChanged="txtFechNac_TextChanged"></asp:TextBox>
                    </div>
                    <div class="cal-nacimiento">
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">

                        </asp:Calendar>
                    </div>
                    <div class="flex-content">
                        <div>Fecha de ingreso</div>
                        <asp:TextBox ID="txtFechIng" runat="server" AutoPostBack="true" OnTextChanged="txtFechIng_TextChanged"></asp:TextBox>
                    </div>
                    <div class="cal-ingreso">
                        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged">

                        </asp:Calendar>
                    </div>

                    <div class="flex-content">
                            Antiguedad:
                            <div>
                                <asp:TextBox ID="txtAnyos" runat="server" Width="40px"></asp:TextBox>
                                <div class="flex-content antiguedad">Años</div>
                            </div>
                            <div>
                                <asp:TextBox ID="txtMeses" runat="server" Width="40px"></asp:TextBox>
                                <div class="flex-content antiguedad">Meses</div>
                            </div>
                            <div>
                                <asp:TextBox ID="txtDias" runat="server" Width="40px"></asp:TextBox>
                                <div class="flex-content antiguedad">Días </div>
                            </div>
                        </div>
                </div>
                <div class="boton">
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click"/>
                </div>
                <div class="errores">
                    <asp:Label ID="lblError1" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lblError2" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lblError3" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="valores">
                    <asp:Label ID="lblValores" runat="server" BackColor="#66ffff" Width="100%" Visible="false"></asp:Label>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
