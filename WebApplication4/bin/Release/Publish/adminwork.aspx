<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminwork.aspx.cs" Inherits="WebApplication4.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type = "text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
    </script> 
    <div style="margin-top:50px">
        <table style="background-color:lightgray; border-radius:10px;  width:400px; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="padding:10px; background-color:black; border-top-left-radius:10px; border-bottom-right-radius10px;">
                    <h4 style="color:antiquewhite">Tasks</h4>
                </th>
                            
            </tr>
            <tr>
                <th style="padding:10px;" colspan="2">
                    <h6 style="color:blue"><asp:Label ID="Label1" runat="server"></asp:Label></h6>
                    <h6 style="color:red"><asp:Label ID="Label2" runat="server"></asp:Label></h6>                
                </th>
            </tr>        
            <tr>
                <td style="padding:10px">User</td>            
                <td style="padding:10px; text-align:right">
                    <asp:Button ID="Button2" runat="server" Text="Delete User" OnClick="Button2_Click" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />
                </td>
            </tr>        
        </table>
    </div>
</asp:Content>
