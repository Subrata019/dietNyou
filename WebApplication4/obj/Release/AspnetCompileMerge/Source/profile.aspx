<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication4.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type = "text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
    </script>
    <div style="margin-top:50px">
        <table style="background-color:lightgray; width:400px; border-radius:10px; margin-left:auto; margin-right:auto">
            <tr>
                <th style="padding:10px; background-color:black; border-top-left-radius:10px;">
                    <h4 style="color:antiquewhite">
                        <asp:Label ID="Fname" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Lname" runat="server" Text=""></asp:Label>
                    </h4>
                </th> 
                <th style="padding:10px; border-top-right-radius:10px; background-color:black; text-align:right">
                    <asp:Button ID="Button2" runat="server" Text="Edit Profile" OnClick="Button2_Click" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />          
                </th>
            </tr>
            <tr>
                <td style="padding:10px; text-align:center">
                    Email
                </td>
                <td style="padding:10px">
                    <asp:Label ID="Email" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
