<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Requests.aspx.vb" Inherits="Requests" %>

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
        </style>
</head>
<body background="Images/Login-Info2.jpg">
    <form id="form1" runat="server">
    <div>
    
    <p>
    
        <span class="style5" 
            style="font-family: 'MS PMincho'; font-size: xx-large; color: #FFFFFF">Prometheus</span></p>
    <p>
        <strong style="color: #00FFFF; font-weight: bold; font-size: xx-large;">Requests Home</strong></p>
    
    </div>
    <div style="height: 282px">
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListItems" runat="server" Font-Names="Gisha" Height="292px" 
        Width="497px"></asp:ListBox>
        <asp:Button ID="BtnViewDate" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="View By Date" Width="135px" 
            style="z-index: 1; left: 577px; top: 180px; position: absolute; height: 33px" />
        <asp:Button ID="BtnViewType" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="View By Type" Width="135px" 
            style="z-index: 1; left: 577px; top: 300px; position: absolute; height: 33px" />
        <asp:Button ID="BtnMore" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="More Than 7 Days" Width="135px" 
            style="z-index: 1; left: 577px; top: 420px; position: absolute; height: 33px" />
        <asp:Button ID="BtnViewItem" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="View" Width="135px" 
            style="z-index: 1; left: 5px; top: 535px; position: absolute" />
        <asp:Button ID="BtnDownloadItem" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="Download" Width="135px" 
            style="z-index: 1; left: 155px; top: 535px; position: absolute" />
        <asp:Button ID="BtnApprove" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="Approve" Width="135px" 
            style="z-index: 1; left: 305px; top: 535px; position: absolute" />
        <asp:Button ID="BtnReject" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Text="Reject" Width="135px" 
            style="z-index: 1; left: 455px; top: 535px; position: absolute" />
        <asp:Calendar ID="Calendar1" runat="server" 
            
            style="z-index: 1; left: 777px; top: 180px; position: absolute; height: 188px; width: 229px" 
            Visible="False">
        </asp:Calendar>
        <asp:DropDownList ID="ListType" runat="server" 
            
            style="z-index: 1; left: 777px; top: 300px; position: absolute; height: 33px; width: 78px;" 
            Visible="False">
        </asp:DropDownList>
        <asp:Calendar ID="Calendar2" runat="server" 
            
            style="z-index: 1; left: 1077px; top: 180px; position: absolute; height: 188px; width: 229px" 
            Visible="False">
        </asp:Calendar>
    </div>
    </form>
</body>
</html>
