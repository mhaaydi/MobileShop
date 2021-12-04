<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Produits.aspx.cs" Inherits="ParaShop.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1100px;">
        <tr>
            <td class="auto-style4"></td>
            <td style ="width:15%"></td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                         <asp:TextBox  class="form-control input-sm" placeholder="Nom" ID="TextBox1" width="320px" runat="server"></asp:TextBox>
                         <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Supprimer" OnClick="Button1_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">

            </td>
            <td>
                <asp:Menu ID="Menu2" runat="server" OnMenuItemClick="Menu2_MenuItemClick">
                    <Items>
                        <asp:MenuItem Text="Nouveau Produit" Value="Nouveau Produit" NavigateUrl="~/NouveauProduit.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Supprimer Produit" Value="Supprimer Produit"></asp:MenuItem>
                        <asp:MenuItem Text="Log out" Value="Log out" NavigateUrl="~/Index.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style2">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                
            </td>
        </tr>
    </table>
</asp:Content>
