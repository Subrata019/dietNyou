<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CC.aspx.cs" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function calculateBmr() {            
            document.getElementById("pbmrc").innerHTML = "";
            document.getElementById("pcalc").innerHTML = "";
            var weight = document.getElementById('<%=weightc.ClientID %>').value;
            var height = document.getElementById('<%=heightc.ClientID %>').value;
            var age = document.getElementById('<%=agec.ClientID %>').value;
            var male = document.getElementById('<%=gender1c.ClientID %>');
            var female = document.getElementById('<%=gender2c.ClientID %>');
            var activity = document.getElementById('<%=activityc.ClientID %>');
            var goal = document.getElementById('<%=goalc.ClientID %>');
            var Bmr;
            var finalBmr;
            if (weight == "" || weight == null) {
                document.getElementById("pweightc").innerHTML = "Enter your weight";
                weight.focus();
                return false;
            }
            else if (weight < 10) {
                document.getElementById("pweightc").innerHTML = "you weight cannot be less than 10kgs";
                weight.focus();
                return false;
            }
            else if (weight > 500) {
                document.getElementById("pweightc").innerHTML = "you weight cannot be greater than 500kgs";
                weight.focus();
                return false;
            }
            document.getElementById("pweightc").innerHTML = "";
            if (height == "" || height == null) {
                document.getElementById("pheightc").innerHTML = "Enter your height";
                height.focus();
                return false;
            }
            else if (height < 60) {
                document.getElementById("pheightc").innerHTML = "you height cannot be less than 60cm";
                height.focus();
                return false;
            }
            else if (height > 320) {
                document.getElementById("pheightc").innerHTML = "you height cannot be greater than 320cm";
                height.focus();
                return false;
            }
            document.getElementById("pheightc").innerHTML = "";
            if (age == "" || age == null) {
                document.getElementById("pagec").innerHTML = "Enter your age";
                age.focus();
                return false;
            }
            else if (age < 18) {
                document.getElementById("pagec").innerHTML = "your age cannot be less than 18";
                age.focus();
                return false;
            }
            else if (age > 60) {
                document.getElementById("pagec").innerHTML = "your age cannot be greater than 60";
                age.focus();
                return false;
            }
            document.getElementById("pagec").innerHTML = "";
            if (female.checked == false && male.checked == false) {
                document.getElementById("pgenderc").innerHTML = "select your gender";
                male.focus();
                return false;
            }
            document.getElementById("pgenderc").innerHTML = "";
            if (activity.selectedIndex == 0) {
                document.getElementById("pactivityc").innerHTML = "select activity";
                activity.focus();
                return false;
            }
            document.getElementById("pactivityc").innerHTML = "";
            if (goal.selectedIndex == 0) {
                document.getElementById("pgoalc").innerHTML = "select Goal";
                goal.focus();
                return false;
            }
            document.getElementById("pgoalc").innerHTML = "";
            if (male.checked == true) {
                var Bmr = 66.47 + (13.7 * weight) + (5 * height) - (6.8 * age);
            }
            if (female.checked == true) {
                var Bmr = 655.1 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
            }
            Bmr = Bmr.toFixed(2);
            document.getElementById("pbmrc").innerHTML = "Your BMR is " + Bmr;
            if (activity.selectedIndex == 1) {
                if (goal.selectedIndex == 1) {
                    finalBmr = (Bmr * 1.2) - 500;
                }
                if (goal.selectedIndex == 2) {
                    finalBmr = (Bmr * 1.2);
                }
                else if (goal.selectedIndex == 3) {
                    finalBmr = (Bmr * 1.2) + 500;
                }
            }
            else if (activity.selectedIndex == 2) {
                if (goal.selectedIndex == 1) {
                    finalBmr = (Bmr * 1.375) - 500;
                }
                if (goal.selectedIndex == 2) {
                    finalBmr = (Bmr * 1.375);
                }
                else if (goal.selectedIndex == 3) {
                    finalBmr = (Bmr * 1.375) + 500;
                }
            }
            else if (activity.selectedIndex == 3) {
                if (goal.selectedIndex == 1) {
                    finalBmr = (Bmr * 1.55) - 500;
                }
                if (goal.selectedIndex == 1) {
                    finalBmr = (Bmr * 1.55);
                }
                else if (goal.selectedIndex == 3) {
                    finalBmr = (Bmr * 1.55) + 500;
                }
            }
            else if (activity.selectedIndex == 4) {
                if (goal.selectedIndex == 1) {
                    finalBmr = (Bmr * 1.725) - 500;
                }
                if (goal.selectedIndex == 2) {
                    finalBmr = (Bmr * 1.2);
                }
                else if (goal.selectedIndex == 3) {
                    finalBmr = (Bmr * 1.725) + 500;
                }
            }
            else if (activity.selectedIndex == 5) {
                if (goal.selectedIndex === 1) {
                    finalBmr = (Bmr * 1.9) - 500;
                }
                if (goal.selectedIndex == 2) {
                    finalBmr = (Bmr * 1.2);
                }
                else if (goal.selectedIndex == 3) {
                    finalBmr = (Bmr * 1.9) + 500;
                }
            }
            finalBmr = finalBmr.toFixed(2);
            document.getElementById("pcalc").innerHTML = "Your calorie consumption should be " + finalBmr + "Cal";
        }
    </script>
    <div style="margin-top:50px">
        <table style="background-color:lightgray; border-radius:10px; width:400px; padding:100px; text-align:right; margin-left:auto; margin-right:auto">
            <tr>
                <th colspan="2" style="padding:10px; background-color:black; border-top-left-radius:10px; border-top-right-radius:10px;">  
                    <h4 style="color:antiquewhite">Your Calorie consumption should be</h4>
                </th>
            <tr>
                <td  style="padding:10px"">Your Weight(kg):</td>
                <td  style="padding:10px">
                    <asp:TextBox runat="server" type="number" id="weightc" name="weightc" style="width: 100%;"/><br />
                    <i style="color:red;" id="pweightc"></i>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px">Your Height(cm):</td>
                <td  style="padding:10px">
                    <asp:TextBox runat="server" type="number" id="heightc" name="heightc" style="width: 100%;"/><br />
                    <i style="color:red;" id="pheightc"></i>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px">Your Age:</td>
                <td  style="padding:10px">
                    <asp:TextBox runat="server" type="number" id="agec" name="agec" style="width: 100%;"/><br />
                    <i style="color:red;" id="pagec"></i>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px">Gender:</td>
                <td  style="padding:10px">
                    <asp:RadioButton runat="server" type="radio" name="genderc" id="gender1c" value="male" style="width: 100%;"/>Male&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton runat="server" type="radio" name="genderc" id="gender2c" value="female"/>Female<br />
                    <i style="color:red;" id="pgenderc"></i>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px">Your Activity:</td>
                <td  style="padding:10px">
                    <asp:DropDownList runat="server" id="activityc" name="activityc" style="width: 100%;">
                        <asp:ListItem Enabled="true" Text="Select activity" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Little or No Activity" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Lighly Active" Value="2"></asp:ListItem> 
                        <asp:ListItem Text="Moderately Active" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Very Active" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Extra Active" Value="5"></asp:ListItem>
                    </asp:DropDownList><br/>
                    <i style="color:red;" id="pactivityc"></i>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px">Your Goal:</td>
                <td  style="padding:10px">    
                    <asp:DropDownList runat="server" id="goalc" name="goalc" style="width: 100%;">
                        <asp:ListItem Enabled="true" Text="Select goal" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Loose Weight" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Maintain Current Weight" Value="2"></asp:ListItem> 
                        <asp:ListItem Text="Gain Weight" Value="3"></asp:ListItem>
                    </asp:DropDownList><br/>
                    <i style="color:red;" id="pgoalc"></i>
                </td>
            </tr>
            <tr>            
                <td  style="padding:10px" colspan="2">
                    <u style="color:black; font-size: 15px; font-weight: bolder" id="pbmrc"></u>
                </td>
            </tr>
            <tr>
                <td style="padding:10px" colspan="2">
                     <u style="color:black; font-size: 15px; font-weight: bolder" id="pcalc"></u>
                </td>
            </tr>
            <tr>
                <td  style="padding:10px" colspan="2">
                    <input type="button" value="Calculate" onClick="calculateBmr()" style="background-color: #ffc100; border-color:  #ffc100; border-width: 5px; color: #000000; width:120px; height:35px; border-radius: 5px; font-size: 15px; font-weight: bolder ">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
