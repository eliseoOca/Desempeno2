<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageInicio.Master" AutoEventWireup="true" CodeBehind="gestionDeArchivos.aspx.cs" Inherits="Desempeno2.gestionDeArchivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Botón" />
        </Columns>
    </asp:GridView>
    </asp:Content>
