<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInicio.Master" AutoEventWireup="true" CodeBehind="registracion.aspx.cs" Inherits="Desempeno2.registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Emial:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Completar Campos Requeridos &quot;Email&quot;" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="El valor ingresado no tiene formato Email." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
    </p>
    <p>
        Nombre De Usuario:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Completar Campos Requeridos &quot;Nombre de Usuario&quot;" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    </p>
    <p>
        Edad:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Completar Campos Requeridos &quot;Edad&quot;" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="La Edad tiene que ser entre 15 y 99." ForeColor="Red" MaximumValue="99" MinimumValue="15" Type="Integer"></asp:RangeValidator>
    </p>
    <p>
        &nbsp;Contraseña:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Completar Campos Requeridos &quot;Contraseña&quot;" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="None" ErrorMessage="La Contraseña no coincide" ForeColor="Red"></asp:CompareValidator>
    </p>
<p>
        Repetir Contraseña:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Completar Campos Requeridos &quot;Repetir Contraseña&quot;" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    </p>
    <p>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
    <p>
        <asp:Button ID="Button1" runat="server" Text="CrearCooki" OnClick="Button1_Click" />
    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CrearSession" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
</asp:Content>
