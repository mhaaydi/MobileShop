<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="ParaShop.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1100px; margin:0 auto;">
        <tr>
            <td style="width:50%; border:thin; border-style:solid">
                <h3 class="title_block" style="box-sizing: border-box; margin: 0px; padding: 20px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: 1.333em; font-family: Merriweather; font-size: 1.333em; vertical-align: baseline; text-transform: none; display: block; color: rgb(82, 87, 121); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Créez votre compte</h3>
                <table style="">
                    <tr>
                        <td style="">
                            <asp:TextBox class="form-control input-sm" placeholder="Nom Et Prénom" ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox class="form-control input-sm" placeholder="E-mail" type="email" ID="TextBox2" runat="server" Width="320px"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox class="form-control input-sm" placeholder="Mot De Passe" type="password" ID="TextBox3" runat="server" Width="196px" ></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                     <br />
                     <br />
                            <asp:Button class="btn btn-success" runat="server" Text="Créez Votre Compte" OnClick="Unnamed1_Click"></asp:Button>
                        </td>
                    </tr>
                    </table>
            </td>

            <td style="width:50%; border:thin; border-style:solid">
                <h3 class="title_block" style="box-sizing: border-box; margin: 0px; padding: 20px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; line-height: 1.333em; font-family: Merriweather; font-size: 1.333em; vertical-align: baseline; text-transform: none; display: block; color: rgb(82, 87, 121); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Déjà inscrit?</h3>
                <table style="width:100%;">
                <tr>
                        <td>
                            <asp:TextBox class="form-control input-sm" placeholder="E-mail" ID="TextBox4" runat="server" Width="320px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox class="form-control input-sm" placeholder="Mot De Passe" type="password" ID="TextBox5" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                            <td><a href="mailto:admin@parashop.com">Mot de pass oublié?</a></td>
                    </tr>
                    <tr>
                     <td>
                         <br />
                         <br />
                             <asp:Button class="btn btn-success" runat="server" Text="Conexion" OnClick="Unnamed2_Click"></asp:Button>
                     </td>
                    </tr>
            </table>
            </td>
        </tr>
     </table>

</asp:Content>
