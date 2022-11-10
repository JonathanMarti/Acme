<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <h2>DATOS DE LAS PRESTACIONES</h2>
            <div class="cuerpo">
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdtxtCodPre" runat="server" ErrorMessage="El código de prestación es obligatorio" ControlToValidate="txtCodPre" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regTxtCodPre" runat="server" ValidationExpression="\d{3}-\d{3}-\d{3}" ErrorMessage="El formato de los datos es: 3 dígitos, un guión, 3 dígitos un guión y 3 dígitos" ControlToValidate="txtCodPre" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
                <div class="textos">Código Prestación</div>
                <asp:TextBox ID="txtCodPre" runat="server"></asp:TextBox>
                <div class="textos">Descripción</div>
                <asp:TextBox ID="txtDesPre" runat="server" Width="300px"></asp:TextBox>
                <div class="validacion" style="width:50%; margin:auto; text-align:center;color:red;">
                    <asp:RequiredFieldValidator ID="rqdtxtImpPre" runat="server" ErrorMessage="El importe fijo es obligatorio" ControlToValidate="txtImpPre" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rngTxtImpPre" runat="server" ErrorMessage="El importe máximo es de 500€" ControlToValidate="txtImpPre" Display="Dynamic" Type="Double" MaximumValue="500" MinimumValue="0"></asp:RangeValidator>
                </div>
                <div class="textos">Importe fijo</div>
                <asp:TextBox ID="txtImpPre" runat="server"></asp:TextBox>
                <div class="validacion" style="width:50%;margin:auto;text-align:center;color:red;">
                <asp:RequiredFieldValidator ID="rqdTxtPorPre" runat="server" ErrorMessage="El porcentaje de la prestación es obligatorio" ControlToValidate="txtPorPre" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngTxtPorPre" runat="server" ErrorMessage="El porcentaje de la prestación ha de ser un 15% como maximo." ControlToValidate="txtPorPre" Display="Dynamic" Type="Double" MaximumValue="15" MinimumValue="0"></asp:RangeValidator>
                </div>
                <div class="textos">Porcentaje del importe</div>
                <asp:TextBox ID="txtPorPre" runat="server"></asp:TextBox>
                <div class="textos">Tipo de Prestación</div>
                <asp:DropDownList ID="ddlTipPre" runat="server">
                    <asp:ListItem>Dentaria</asp:ListItem>
                    <asp:ListItem>Familiar</asp:ListItem>
                    <asp:ListItem Selected="True">Ocular</asp:ListItem>
                    <asp:ListItem>Otras</asp:ListItem>
                </asp:DropDownList>
                <div class="boton">
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar"/>
                </div>
            </div>
</asp:Content>
