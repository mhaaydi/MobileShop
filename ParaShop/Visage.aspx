<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Visage.aspx.cs" Inherits="ParaShop.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <table style="width:1100px; margin:0 auto;">
        <tr>
            <td style="border-color: inherit; border-width: thin; border-style: solid;" class="w-25">
                <h3 class="auto-style2" style="box-sizing: border-box; margin: 0px; padding: 20px; border-image: initial; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.333em; font-family: Merriweather; vertical-align: baseline; display: block; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; border-left-style: none; border-left-color: inherit; border-left-width: 0px; border-right-style: none; border-right-color: inherit; border-right-width: 0px; border-top-style: none; border-top-color: inherit; border-top-width: 0px; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium;">Achat</h3>
                <table class="w-100">
                    <tr>
                        <td>Produit</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td>Quantité</td>
                        <td>
                            <asp:TextBox  ID="TextBox2" TextMode="Number" runat="server" min="1" max="20" step="1" Width="89px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>

                     <tr>
                        <td>
                         <br />
                         <br />
                            <asp:Button class="btn btn-default" runat="server" Text="Ajouter Panier" OnClick="Unnamed1_Click"></asp:Button>
                        </td>
                    </tr>
                    </table>
                    </td>

             <td style="width:50%; border:thin; border-style:solid">

                 <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                     <AlternatingRowStyle BackColor="White" />
                     <FooterStyle BackColor="#CCCC99" />
                     <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                     <RowStyle BackColor="#F7F7DE" />
                     <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#FBFBF2" />
                     <SortedAscendingHeaderStyle BackColor="#848384" />
                     <SortedDescendingCellStyle BackColor="#EAEAD3" />
                     <SortedDescendingHeaderStyle BackColor="#575357" />
                 </asp:GridView>

             </td>
            </table>
</asp:Content>
