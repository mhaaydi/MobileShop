    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="NouveauUtilisateur.aspx.cs" Inherits="ParaShop.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 200px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1350px">
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
            <h1>Nouveau Utilisateur</h1>
        </td>
        <td style="width:25%"></td>
    </tr>
    <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
            <asp:TextBox class="form-control input-sm" placeholder="Nom" ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
            <asp:TextBox class="form-control input-sm" placeholder="E-mail" type="email" ID="TextBox2" runat="server" ></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
              <asp:TextBox class="form-control input-sm" placeholder="Mot de passe" type="password" ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
           <asp:Button style="width:100%" class="btn btn-success" ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" />
        <td style="width:25%"></td>
    </tr>
    </table>
</asp:Content>
