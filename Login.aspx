<%@ Page Title="Login Page" Language="VB" AutoEventWireup="false"
    CodeFile="Login.aspx.vb" Inherits="_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
        }
        .style2
        {
            font-family: "Brush Script Std";
            font-size: larger;
            color: #CC0000;
        }
        .style3
        {
            font-family: Gisha;
            font-size: x-large;
        }
        .style4
        {
            font-family: Papyrus;
        }
        .style5
        {
            font-family: "Brush Script Std";
            font-size: larger;
            color: #FFFFFF;
        }
        .style8
        {
            font-family: Gisha;
            font-size: large;
        }
        .style9
        {
            color: #FFFFFF;
            font-family: Gisha;
            font-size: xx-large;
        }
        .style10
        {
            text-align: left;
        }
    </style>
</head>
<body background="Images/Login-Info2.jpg" style="color: #00FFFF">
    <form id="form1" runat="server">
    <div style="font-family: 'MS PMincho'; font-size: xx-large; color: #00FFFF" 
        class="style10">
    
        <br class="style1" />
        <span class="style5">Prometheus</span><span class="style2"><br />
        </span><span class="style3"><strong>Forum for the Students by the Students</strong></span></div>
    <h2 class="style4">
        &nbsp;</h2>
    <h2 class="style4">
        &nbsp;<span class="style9">Sign In</span></h2>
    <p class="style8">
        <strong>Nick Name/Phone_No</strong></p>
    <p>
        <span class="style2">
        <asp:TextBox ID="TxtBxUID" runat="server" Height="31px" Width="295px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        </span>
    </p>
    <p class="style8">
        <strong>Password</strong></p>
    <p>
        <span class="style2">
        <asp:TextBox ID="TxtBxPsswrd" runat="server" Height="30px" Width="299px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large" TextMode="Password"></asp:TextBox>
        </span>
    </p>
    <p style="font-family: Gisha; font-size: large; font-weight: 700"; class="style8">
        Not Yet A Member? Sign Up Now!!!</p>
    <p style="font-family: Gisha; font-size: large; font-weight: 700"; class="style8">
        E-Mail ID:</p>
    <p>
        <span class="style2">
        <asp:TextBox ID="TxtBxMail" runat="server" Height="30px" Width="383px" 
            BorderColor="Aqua" BorderStyle="Ridge" Font-Size="Large"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnRegister" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Height="36px" Text="Register" Width="135px" 
            onclick="BtnRegister_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
    </p>
    <p>
        <span class="style2">
        <asp:Label ID="LblLogin" runat="server" 
            style="font-family: Gisha; font-weight: 700" Text="Login Unsuccessful. " 
            Visible="False"></asp:Label>
        </span>
    </p>
    <p>
        <asp:Button ID="BtnLogin" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Height="36px" Text="Login" Width="135px" 
            onclick="BtnLogin_Click" />
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
