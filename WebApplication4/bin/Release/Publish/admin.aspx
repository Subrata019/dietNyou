<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication4.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <script type="text/javascript">
        function validation2() {
            var adminid = document.getElementById('<%=adminid.ClientID %>').value;
            var adpass = document.getElementById('<%=adpass.ClientID %>').value;
            if (adminid == "" || adminid == null) {
                document.getElementById("padminid").innerHTML = "Enter your e-mail";
                padminid.focus();
                return false;
            }
            document.getElementById("padminid").innerHTML = "";
            if (adpass == "") {
                document.getElementById("padpass").innerHTML = "Password is required";
                adpass.focus();
                return false;
            }
            else if (adpass.length < 8) {
                document.getElementById("padpass").innerHTML = "password must be between 8 to 15 charactors";
                adpass.focus();
                return false;
            }
            document.getElementById("padpass").innerHTML = "";
        }
    </script>
    <div style="margin-top:50px">
        <table style="background-color:lightgray; width:400px; border-radius:10px; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="padding:10px; background-color:black; border-top-left-radius:10px; border-top-right-radius:10px;">
                    <h4 style="color:antiquewhite">Admin Login</h4>
                </th>            
            </tr>
            <tr>
                <th>
                    <h4 style="color:blue"><asp:Label ID="Label1" runat="server"></asp:Label></h4>
                    <h4 style="color:red"><asp:Label ID="Label2" runat="server"></asp:Label></h4>
                </th>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px">
                   <asp:TextBox runat="server" type="text" placeholder="adminid" id="adminid" name="adminid" style="width:100%" />
                    <br><i style="color:red;" id="padminid"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; height: 62px;">
                    <asp:TextBox runat="server" type="password" placeholder="password" id="adpass" name="adpass" style="width:100%" />
                    <br><i style="color:red;" id="padpass"></i>
                </td>
            </tr>        
            <tr>            
                <td style="padding:10px; text-align:right">
                    <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" onClientClick="return validation2()" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />
                </td>

            </tr>
        
         </table>
    </div>
</asp:Content>
