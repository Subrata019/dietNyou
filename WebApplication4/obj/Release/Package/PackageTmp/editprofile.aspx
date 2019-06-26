<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="WebApplication4.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="margin-top:50px">
        <table style="background-color:lightgray; width:400px; border-radius:10px; margin-left:auto; margin-right:auto">
            <tr>
                <th style="padding:10px; background-color:black; border-top-left-radius:10px;">
                    <h4 style="color:antiquewhite">Edit Profile</h4>
                </th> 
                <th style="padding:10px; border-top-right-radius:10px; background-color:black; text-align:right">
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />          
                </th>
            </tr>
            <tr>
                <td style="padding:10px">
                    <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px">
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding:10px; text-align:left"></td>
                <td style="padding:10px; text-align:right">
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
