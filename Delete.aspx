<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Delete.aspx.vb" Inherits="Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">


        .style5
        {
            font-family: "Brush Script Std";
            font-size: larger;
            color: #FFFFFF;
        }
        #Text1
        {
            z-index: 1;
            left: 463px;
            top: 233px;
            position: absolute;
            width: 140px;
            height: 31px;
        }
        </style>
</head>
<body background="Images/Login-Info2.jpg">
    <form id="form1" runat="server">
    <p>
    
        <span class="style5" 
            style="font-family: 'MS PMincho'; font-size: xx-large; color: #FFFFFF">Prometheus</span></p>
    <p>
        <strong style="color: #00FFFF; font-weight: bold; font-size: xx-large;">Deletion Home</strong></p>
    <div style="height: 288px">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="BtnCourse" runat="server" ForeColor="Black" Text="Delete a Course" 
            Width="139px" />
        <asp:Label ID="Label1" runat="server" ForeColor="Aqua" 
            style="z-index: 1; left: 292px; top: 234px; position: absolute; height: 24px; right: 355px;" 
            Text="Enter Name" Font-Size="X-Large" Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="Aqua" 
            style="z-index: 1; left: 292px; top: 314px; position: absolute; height: 24px; right: 339px;" 
            Text="Select Course" Font-Size="X-Large" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" ForeColor="Aqua" 
            style="z-index: 1; left: 292px; top: 384px; position: absolute; height: 24px" 
            Text="Select Dept." Font-Size="X-Large" Visible="False"></asp:Label>
        <asp:Label ID="Label4" runat="server" ForeColor="Aqua" 
            style="z-index: 1; left: 292px; top: 454px; position: absolute; height: 24px" 
            Text="Select Year" Font-Size="X-Large" Visible="False"></asp:Label>
        <asp:TextBox ID="TxtEnter" runat="server" 
            
            style="z-index: 1; left: 460px; top: 230px; position: absolute; height: 35px; width: 139px;" 
            BorderColor="Aqua" Visible="False"></asp:TextBox>
        <br />
        &nbsp;<br />
        <br />
        <br />
        <asp:Button ID="BtnDept" runat="server" ForeColor="Black" 
            Text="Delete a Department" Width="139px" />
        <asp:DropDownList ID="ListCourse" runat="server" 
            
            style="z-index: 1; left: 460px; top: 310px; position: absolute; height: 28px; bottom: 103px; right: 477px;" 
            Visible="False">
            <asp:ListItem>btech</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="BtnDelete" runat="server" 
            style="z-index: 1; left: 369px; top: 523px; position: absolute; width: 92px" 
            Text="Delete" Visible="False" />
        <asp:DropDownList ID="ListDept" runat="server" 
            
            
            style="z-index: 1; left: 460px; top: 380px; position: absolute; height: 28px; bottom: 103px; right: 477px;" 
            Visible="False">
            <asp:ListItem>btech</asp:ListItem>
        </asp:DropDownList>
         <asp:DropDownList ID="ListYr" runat="server" 
            
            
            style="z-index: 1; left: 460px; top: 450px; position: absolute; height: 28px; bottom: 103px; right: 477px;" 
            Visible="False">
            <asp:ListItem>btech</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="BtnSub" runat="server" ForeColor="Black" Text="Delete a Subject" 
            Width="139px" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
