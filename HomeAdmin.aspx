<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HomeAdmin.aspx.vb" Inherits="HomeAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

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
        }
        </style>
</head>
<body background="Images/Login-Info2.jpg">
    <form id="form1" runat="server">
    <div style="height: 41px">
    
        <span class="style5" 
            style="font-family: 'MS PMincho'; font-size: xx-large; color: #FFFFFF">Prometheus</span></div>
    <p class="style3">
        <strong style="color: #00FFFF; font-weight: bold">Administrator Home</strong></p>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p style="width: 222px; height: 281px; color: #00FFFF; font-weight: bold; text-decoration: underline; font-size: large;">
        <asp:HyperLink ID="Create" runat="server" Font-Bold="True" ForeColor="Aqua" 
            NavigateUrl="~/Create.aspx">Create</asp:HyperLink>
        <asp:HyperLink ID="Delete" runat="server" Font-Bold="True" ForeColor="Aqua" 
            NavigateUrl="~/Delete.aspx" 
            style="z-index: 1; left: 8px; top: 250px; position: absolute">Delete</asp:HyperLink>
        <asp:HyperLink ID="Requests" runat="server" Font-Bold="True" ForeColor="Aqua" 
            NavigateUrl="~/Requests.aspx" 
            style="z-index: 1; left: 8px; top: 310px; position: absolute">Requests</asp:HyperLink>
        <asp:HyperLink ID="Messages" runat="server" Font-Bold="True" ForeColor="Aqua" 
            NavigateUrl="~/Registration.aspx" 
            style="z-index: 1; left: 8px; top: 370px; position: absolute">Messages</asp:HyperLink>
    </p>
    </form>
</body>
</html>
