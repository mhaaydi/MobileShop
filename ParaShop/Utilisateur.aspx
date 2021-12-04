<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Utilisateur.aspx.cs" Inherits="ParaShop.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1100px;">
        <tr>
            <td style="width:15%"></td>
            <td style="width:15%"></td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                         <asp:TextBox class="form-control input-sm" type="email" ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                         <asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Supprimer" OnClick="Button1_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width:200px;">

            </td>
            <td >
                <asp:Menu ID="Menu2" runat="server" OnMenuItemClick="Menu2_MenuItemClick">
                    <Items>
                        <asp:MenuItem Text="Nouveau Utilisateur" Value="Nouveau Utilisateur" NavigateUrl="~/NouveauUtilisateur.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Supprimer Utilisateur" Value="Supprimer Utilisateur"></asp:MenuItem>
                        <asp:MenuItem Text="Log out" Value="Log out" NavigateUrl="~/Index.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
