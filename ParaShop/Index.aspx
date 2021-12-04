<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ParaShop.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server">

    </asp:ScriptManager>
    <table>
        
    <tr>
        <td style="width:25%"></td>
           <td style="width:auto"><asp:Image style="align-content:center;" ID="Image1" Height="450px" Width="1100px" runat="server" />
               <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick">
               </asp:Timer>
        </td>
        <td style="width:25%"></td>
    </tr>
    </table>
</asp:Content>
