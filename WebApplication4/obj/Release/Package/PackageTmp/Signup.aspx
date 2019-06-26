<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication4.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function validation() {

            var fname = document.getElementById('<%= fname.ClientID %>').value;
            var lname = document.getElementById('<%= lname.ClientID %>').value;
            var email = document.getElementById('<%= email.ClientID %>').value;
            var pass = document.getElementById('<%= pass.ClientID %>').value;
            var cpass = document.getElementById('<%= cpass.ClientID %>').value;
            emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
            if (fname == "") {
                document.getElementById("pfname").innerHTML = "Enter your first name";
                fname.focus();
                return false;
            }
            document.getElementById("pfname").innerHTML = "";
            if (lname == "") {
                document.getElementById("plname").innerHTML = "Enter your last name";
                lname.focus();
                return false;
            }
            document.getElementById("plname").innerHTML = "";
            if (email == "" || email == null) {
                document.getElementById("pemail").innerHTML = "Enter your e-mail";
                email.focus();
                return false;
            }
        
            document.getElementById("pemail").innerHTML = "";

            if (!email.match(emailExp))  
            {  
               document.getElementById("pemail").innerHTML = "invalid e-mail";
                email.focus();
                return false;  
            }  
   
            document.getElementById("pemail").innerHTML = "";
            if (pass == "") {
                document.getElementById("ppass").innerHTML = "Password is required";
                pass.focus();
                return false;
            }
            else if (pass.length < 8) {
                document.getElementById("ppass").innerHTML = "password must be between 8 to 15 charactors";
                pass.focus();
                return false;
            }
            document.getElementById("ppass").innerHTML = "";

            if (cpass != pass) {
                document.getElementById("pcpass").innerHTML = "Password password does not match";
                cpass.focus();
                return false;
            }
            document.getElementById("pcpass").innerHTML = "";
        }        
    </script>
    <div style="margin-top:50px">
        <table style="background-color:lightgray; border-radius:10px; width:400px; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="padding:10px; background-color:black; border-top-left-radius:10px; border-top-right-radius:10px;">
                    <h4 style="color:antiquewhite">Sign Up&nbsp;
                    </h4>
                </th>
            </tr>
            <tr>
                <td colspan="2">                
                        <h6 style="color:blue"><asp:Label ID="Label1" runat="server"></asp:Label></h6>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px">
                    FIRST NAME<br/>
                    <asp:TextBox runat="server" type="text" style="width:100%;" id="fname" name="fname"/>
                    <br/><i style="color:red;" id="pfname"></i>
                </td>
                <td  style="padding:10px">
                    LAST NAME<br/>
                    <asp:TextBox runat="server" type="text" style="width: 100%;" id="lname" name="lname" />
                    <br/><i style="color:red;" id="plname"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2"  style="padding:10px">
                    EMAIL<br/>
                    <asp:TextBox runat="server" type="email" style="width:100%" id="email" name="email" />
                    <br/><i style="color:red;" id="pemail"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2"  style="padding:10px">
                   PASSWORD<br/>
                    <asp:TextBox runat="server" type="password" style="width: 100%" id="pass" name="password" />
                    <br/><i style="color:red;" id="ppass"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2"  style="padding:10px">
                    CONFIRM PASSWORD<br/>
                    <asp:TextBox type="password" style="width: 100%;"  id="cpass" runat="server" />
                    <br/><i style="color:red;" id="pcpass"></i>
                </td>
            </tr>
            <tr>
                <td colspan="2"  style="padding:10px; text-align:right">
                    <asp:Button ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" onClientClick="return validation()" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder " /><br />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding:10px">
                    Already have an account?? Click <a runat="server" href="~/Login">here</a> to Login.
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
