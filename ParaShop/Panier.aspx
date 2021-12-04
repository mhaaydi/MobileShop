<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Panier.aspx.cs" Inherits="ParaShop.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 27%;
        }
        .auto-style2 {
            width: 397px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1100px;">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2; ">&nbsp;<asp:TextBox style="width:100%; border:#505050;"  enalbled="false" ReadOnly="true" class="btn btn-default" ID="TextBox1" runat="server" Width="61px" Enabled="false" Font-Bold="False" Font-Italic="True" Font-Size="Larger" Font-Names="Arial"></asp:TextBox>
                </td>
            <td style="width:auto"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
            <td style="width:25%;"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
            <td style="width:auto; font-family:Arial; font-size:16px;">&nbsp;<asp:TextBox class="btn btn-default" readonly="true" type="text" ID="TextBox2" runat="server" Width="245px" Font-Bold="True" Font-Size="Larger" Font-Names="Arial"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="width:30%" class="auto-style1"></td>
            <td style="width:auto;">
                <asp:Button style="width:100%;" class="btn btn-default" ID="Button1" runat="server" Text="Commander" Width="525px" />
            </td>
            <td style="width:30%"></td>
        </tr>
    </table>
</asp:Content>
