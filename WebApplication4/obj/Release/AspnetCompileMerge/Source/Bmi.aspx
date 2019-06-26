<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bmi.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function calculateBmi() {
            
            document.getElementById("pbmi").innerHTML = "";
            document.getElementById("pcal3").innerHTML = "";
            var weight = document.getElementById('<%=weight.ClientID %>').value;
            var height = document.getElementById('<%=height.ClientID %>').value;
            var age = document.getElementById('<%=age.ClientID %>').value;
            var male = document.getElementById('<%=gender1.ClientID %>');
            var female = document.getElementById('<%=gender2.ClientID %>');
            var Bmi;
            if (weight == "" || weight == null) {
                document.getElementById("pweight").innerHTML = "Enter your weight";
                weight.focus();
                return false;
            }
            else if (weight < 20) {
                document.getElementById("pweight").innerHTML = "you weight cannot be less than 20kgs";
                weight.focus();
                return false;
            }
            else if (weight > 500) {
                document.getElementById("pweight").innerHTML = "you weight cannot be greater than 500kgs";
                weight.focus();
                return false;
            }
            document.getElementById("pweight").innerHTML = "";
            if (height == "" || height == null) {
                document.getElementById("pheight").innerHTML = "Enter your height";
                height.focus();
                return false;
            }
            else if (height < 120) {
                document.getElementById("pheight").innerHTML = "you height cannot be less than 120cm";
                height.focus();
                return false;
            }
            else if (height > 240) {
                document.getElementById("pheight").innerHTML = "you height cannot be greater than 240cm";
                height.focus();
                return false;
            }
            document.getElementById("pheight").innerHTML = "";
            if (age == "" || age == null) {
                document.getElementById("page").innerHTML = "Enter your age";
                age.focus();
                return false;
            }
            else if (age < 18) {
                document.getElementById("page").innerHTML = "your age cannot be less than 18";
                age.focus();
                return false;
            }
            else if (age > 60) {
                document.getElementById("page").innerHTML = "your age cannot be greater than 60";
                age.focus();
                return false;
            }
            document.getElementById("page").innerHTML = "";
            if (female.checked == false && male.checked == false) {
                document.getElementById("pgender").innerHTML = "select your gender";
                male.focus();
                return false;
            }
            document.getElementById("pgender").innerHTML = "";
            bmi = (weight * 10000) / (height * height);
            var finalBmi = bmi.toFixed(2);
            document.getElementById("pbmi").innerHTML = "Your BMI is " + finalBmi;
            if (male.checked == true) {
                if (finalBmi < 19.1) {
                    document.getElementById("pcal1").innerHTML = "You are Underweight!";
                    document.getElementById("pcal2").innerHTML = "";
                    document.getElementById("pcal3").innerHTML = "";
                }
                else if (finalBmi <= 27) {
                    document.getElementById("pcal2").innerHTML = "You have a healthy weight.";
                    document.getElementById("pcal1").innerHTML = "";
                    document.getElementById("pcal3").innerHTML = "";
                }
                else if (finalBmi <= 31) {
                    document.getElementById("pcal3").innerHTML = "You are at a risk of overweight!";
                    document.getElementById("pcal1").innerHTML = "";
                    document.getElementById("pcal2").innerHTML = "";
                }
                else {
                    document.getElementById("pcal1").innerHTML = "You are overweight!";
                    document.getElementById("pcal2").innerHTML = "";
                    document.getElementById("pcal3").innerHTML = "";
                }
            }
            else if (female.checked == true) {
                if (finalBmi < 17.8) {
                    document.getElementById("pcal1").innerHTML = "You are underweight!";
                    document.getElementById("pcal2").innerHTML = "";
                    document.getElementById("pcal3").innerHTML = "";
                }
                else if (finalBmi < 26.5) {
                    document.getElementById("pcal2").innerHTML = "You have a healthy weight.";
                    document.getElementById("pcal1").innerHTML = "";
                    document.getElementById("pcal3").innerHTML = "";
                }
                else if (finalBmi <= 31.8) {
                    document.getElementById("pcal3").innerHTML = "You are at a risk of overweight!";
                    document.getElementById("pcal1").innerHTML = "";
                    document.getElementById("pcal2").innerHTML = "";
                }
                else {
                    document.getElementById("pcal1").innerHTML = "You are overweight!";
                    document.getElementById("pcal2").innerHTML = "";
                    document.getElementById("pcal3").innerHTML = "";
                }
            }
        }
    </script>  
    <div style=" margin-top:50px">
        <table style="text-align:right; background-color:lightgray; width:400px; border-radius:10px; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="text-align:center; padding:10px; background-color:black; border-top-left-radius:10px; border-top-right-radius:10px;">
                    <h4 style="color:antiquewhite">BMI</h4>                
                </th>
            </tr>
            <tr>
                <td style="padding:10px; text-align:right">Your Weight(kg):</td>
                <td style="padding:10px">
                    <asp:TextBox runat="server" type="number" id="weight" name="weight"/><br />
                    <i style="color:red;" id="pweight"></i>
                </td>
            </tr>
            <tr>
                <td style="padding:10px; text-align:right">Your Height(cm):            </td>
                <td style="padding:10px">
                    <asp:TextBox runat="server" type="number" id="height" name="height" /><br />
                    <i style="color:red;" id="pheight"></i>
                </td>
            </tr>
            <tr>
                <td style="padding:10px; text-align:right">Your Age:</td>
                <td style="padding:10px">
                    <asp:TextBox runat="server" type="number" id="age" name="age" /><br />
                    <i style="color:red;" id="page"></i>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px; text-align:right">Gender:</td>
                <td style="padding:10px">                
                    <asp:RadioButton runat="server"  type="radio" name="gender" id="gender1" value="male"/>Male&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton runat="server" type="radio" name="gender" id="gender2" value="female"/>Female
                    <br/>
                    <i style="color:red;" id="pgender"></i>
                </td>
            </tr>
            <tr>
                <td style="padding:10px">      
                </td>
                <td style="padding:10px">
                    <u style="color:black; font-size: 15px; font-weight: bolder" id="pbmi"></u>
                </td>
            </tr>
            <tr>
                <td style="padding:10px" colspan="2">
                    <u style="color:red; font-size: 15px; font-weight: bolder" id="pcal1"></u><u style="color:green; font-size: 15px; font-weight: bolder" id="pcal2"></u><u style="color:orangered; font-size: 15px; font-weight: bolder" id="pcal3"></u>
                </td>
            </tr>
            <tr>
                <td style="padding:10px; text-align:right" colspan="2">
                    <input type="button" value="Calculate" onClick="calculateBmi()" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder ">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
