<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deleteuser.aspx.cs" Inherits="WebApplication4.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type = "text/javascript" >
        function preventBack(){window.history.forward();}
         setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    </script>
     <script type="text/javascript">
        function validation4() {
            var emaill = document.getElementById('<%=emaill.ClientID %>').value;          
            emailExp2 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
            if (emaill == "" || emaill == null) {
                document.getElementById("pemaill").innerHTML = "Enter your e-mail";
                emaill.focus();
                return false;
            }
            document.getElementById("pemaill").innerHTML = "";            
            if (!emaill.match(emailExp2))  
            {  
                document.getElementById("pemaill").innerHTML = "invalid e-mail";
                email.focus();
                return false;
            }  
            document.getElementById("pemaill").innerHTML = "";           
        }
    </script>
    <div style="margin-top:50px">
        <table style="background-color:lightgray; border-radius:10px; width:400px; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="padding:10px; background-color:black; border-top-left-radius:10px; border-bottom-right-radius:10px;">
                    <h4 style="color:antiquewhite">Delete User</h4>
                </th>           
                            
            </tr>
            <tr>
                 <th style="padding:10px;" colspan="2">
                        <h6 style="color:blue"><asp:Label ID="Label1" runat="server"></asp:Label></h6>
                     <h6 style="color:red"><asp:Label ID="Label2" runat="server"></asp:Label></h6>                
                </th>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px">
                   <asp:TextBox runat="server" type="text" placeholder="email-id" id="emaill" name="emaill" style="width:100%" />
                    <br><i style="color:red;" id="pemaill"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; height: 62px;">
                    <asp:Label runat="server" id="fname" name="fname" style="width:100%" />                
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; height: 62px;">
                    <asp:Label runat="server" id="lname" name="lname" style="width:100%" />                
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; height: 62px;">
                    <asp:Label runat="server" id="email" name="email" style="width:100%" />
                
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; height: 62px;">
                    <asp:Label runat="server" id="password" name="password" style="width:100%" />                
                </td>
            </tr>
            <tr>
                <td style="padding:10px; text-align:left">
                    <asp:Button ID="finduser" runat="server" Text="Find User" OnClick="Button1_Click" onClientClick="return validation4()" style="background-color: #ffc100; border-color: #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius:5px; font-size: 15px; font-weight: bolder " /><br />
                </td>
                <td style="padding:10px; text-align:right">
                    <asp:Button ID="deleteuser" runat="server" Text="Delete User" OnClick="Button2_Click" OnClientClick="preventBack()" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
