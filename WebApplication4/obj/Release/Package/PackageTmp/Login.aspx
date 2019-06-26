<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   
    <script type="text/javascript">
        function validationl() {
            var emaill = document.getElementById('<%=emaill.ClientID %>').value;
            var passwordl = document.getElementById('<%=passwordl.ClientID %>').value;            
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
            if (passwordl == "") {
                document.getElementById("ppasswordl").innerHTML = "Password is required";
                passwordl.focus();
                return false;
            }
            else if (passwordl.length < 8) {
                document.getElementById("ppasswordl").innerHTML = "password must be between 8 to 15 charactors";
                passwordl.focus();
                return false;
            }
            document.getElementById("ppasswordl").innerHTML = "";
        }
    </script>
    <div style="margin-top:50px">
        <table style="background-color:lightgray; border-radius:10px; width:400px; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="padding:10px; background-color:black; border-top-left-radius:10px; border-top-right-radius:10px;">
                    <h4 style="color:antiquewhite">Login</h4>
                        <h4 style="color:blue"><asp:Label ID="Label1" runat="server"></asp:Label></h4>
                        <h4 style="color:red"><asp:Label ID="Label2" runat="server"></asp:Label></h4>
                </th>            
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; text-align:center">
                   <asp:TextBox runat="server" type="text" placeholder="email-id" id="emaill" name="emaill" style="width:100%" />
                    <br><i style="color:red;" id="pemaill"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px; text-align:center">
                    <asp:TextBox runat="server" type="password" placeholder="password" id="passwordl" name="passwordl" style="width:100%" />
                    <br><i style="color:red;" id="ppasswordl"></i>
                </td>
            </tr>
            <tr>
                <td style="padding:10px; text-align:left"><a runat="server" href="~/forgotpassword">Forgot Password</a></td>
                <td style="padding:10px; text-align:right">
                    <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" onClientClick="return validation1()" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />
                </td>
            </tr>
            <tr>
                <td style="padding:10px" colspan="2">
                    Don't have an account?? Click <a runat="server" href="~/Signup">here</a> to Sign up.
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
