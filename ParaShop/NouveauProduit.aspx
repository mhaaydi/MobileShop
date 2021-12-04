<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="NouveauProduit.aspx.cs" Inherits="ParaShop.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
            font-size: 1.333em;
            color: rgb(82, 87, 121);
            letter-spacing: normal;
        margin-right: 0px;
        margin-top: 0px;
        margin-bottom: 0px;
            margin-left: 200px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:1350px">
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
            <h1>Nouveau Produit</h1>
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
            <asp:TextBox class="form-control input-sm" placeholder="Prix" type="number" ID="TextBox2" runat="server" ></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
     <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
              <asp:TextBox class="form-control input-sm" placeholder="Quantité" type="number" ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
              <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
              <asp:TextBox class="form-control input-sm" placeholder="Catégorie" type="text" ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
<tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
              <asp:TextBox class="form-control input-sm" placeholder="Déscription" TextMode="multiline" Rows="5" ID="TextArea1" runat="server"></asp:TextBox>
        </td>
        <td style="width:25%"></td>
    </tr>
         <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
             <asp:FileUpload  ID="FileUpload1" runat="server" />
        </td>
        <td style="width:25%"></td>
    </tr>
        <tr>
        <td style="width:25%"></td>
        <td  style="margin-left: auto; margin-right: auto; text-align: center;" >
           <asp:Button style="width:100%" class="btn btn-success" ID="Button2" runat="server" Text="Ajouter" OnClick="Button1_Click" />
        <td style="width:25%"></td>
    </tr>
         </table>
</asp:Content>
