<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style2
        {
            font-family: "Brush Script Std";
            font-size: larger;
            color: #CC0000;
        }
        .style5
        {
            font-family: "Brush Script Std";
            font-size: larger;
            color: #FFFFFF;
        }
        .style3
        {
            font-family: Gisha;
            font-size: x-large;
            color: #00CCFF;
        }
        .style7
        {
            font-family: Gisha;
            color: #FFFFFF;
            font-size: xx-large;
        }
    </style>
</head>
<body background="Images/Login-Info2.jpg">
    <form id="form1" runat="server">
    <h1>
    
        <span class="style5">Prometheus</span><span class="style2"><br />
        </span><span class="style3"><strong>Forum for the Students by the Students</strong></span></h1>
    <p>
        &nbsp;</p>
    <h2 class="style7">
        Registration</h2>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
&nbsp;Name</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxName" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Registration Number</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxRegNo" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Course</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxCourse" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Department</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxdept" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Email ID</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxEmail" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Who are you?</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <asp:DropDownList ID="DropType" runat="server" Font-Names="Gisha" 
            Font-Size="Large" Height="31px" Width="295px">
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Teacher</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Nick Name</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxNickName" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Password</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:TextBox ID="TxtBxPass" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TxtBxPhoneNo" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large" 
            style="z-index: 1; left: 9px; top: 1021px; position: absolute"></asp:TextBox>
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        Phone. No.</p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        <span class="style2">
        <asp:Button ID="BtnRegister" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Height="36px" Text="Register" Width="135px" 
            onclick="BtnRegister_Click" 
            style="z-index: 1; left: 10px; top: 1083px; position: absolute" />
        </span>
    </p>
    <p style="font-size: large; font-family: Gisha; font-weight: 700; color: #00CCFF">
        &nbsp;</p>
    </form>
</body>
</html>
