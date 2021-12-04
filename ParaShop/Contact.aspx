<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ParaShop.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="width:1000px">
    <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
            <h1>Contact Us</h1>
        </td>
        <td style="width:25%"></td>
    </tr>
    <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
             <asp:TextBox class="form-control input-sm" placeholder="Nom Et Prénom" type="text" ID="TextBox2" runat="server" ></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
             <asp:TextBox class="form-control input-sm" placeholder="E-mail" type="email" ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
             <asp:TextBox class="form-control input-sm" placeholder="Votre Message" type="text" ID="TextBox3"  TextMode="multiline" Rows="5" runat="server" ></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
           <asp:Button style="width:100%" class="btn btn-success" ID="Button2" runat="server" Text="Envoyer" /> 
        <td style="width:25%"></td>
    </tr>
</table>
</asp:Content>
