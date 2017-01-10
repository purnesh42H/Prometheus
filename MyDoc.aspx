<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MyDoc.aspx.vb" Inherits="MyDoc" %>

folder: <%=Request.QueryString("query")%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script type ="text/javascript">

    function ValidateFile() {
        if(folder == "Documents")
            var validFilesTypes = ["docx", "txt", "doc", "pdf", "xls"];
        else if (folder == "Softwares")
            var validFilesTypes = ["exe", "rar", "zip"];
        else if (folder == "Articles" || folder == "Journals")
            var validFilesTypes = ["docx", "doc", "pdf"];
        else if (folder == "Presentations")
            var validFilesTypes = ["ppt", "pptx"];
        else
            var validFilesTypes = ["bmp", "jpg", "png", "gif", "rar", "zip", "mpg" , "avi"];
        var file = document.getElementById("<%=FileUpload1.ClientID%>");
        var label = document.getElementById("<%=Label3.ClientID%>");
        var path = file.value;
        var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();
        var isValidFile = false;
        for (var i = 0; i < validFilesTypes.length; i++) {
            if (ext == validFilesTypes[i]) {
                isValidFile = true;
                break;
            }
        }
        if (!isValidFile) {
            label.style.color = "red";
            label.innerHTML = "Invalid File. Please upload a File with" +
         " extension:\n\n" + validFilesTypes.join(", ");
        }
        return isValidFile;
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: Gisha;
        }
        .style2
        {
            font-family: "Brush Script MT";
        }
        .style3
        {
            font-size: larger;
            color: #FFFFFF;
        }
    </style>
    <style type="text/css">
        .wrp { width: 100%; text-align: center;vertical-align: -50px}
        .frm { text-align: left; width: 500px; margin: auto;}
        .fldLbl { white-space: nowrap; }
        .center {width: 300px; height: 300px; position: absolute; left: 50%; top: 50%; margin-left: -150px; margin-top: -150px;}
    </style>
</head>
<body background="Images/Login-Info2.jpg">
    <form id="form1" runat="server">
    <div style="font-family: 'MS PMincho'; font-size: xx-large; color: #00FFFF" 
        class="style10">
    
        <span class="style2"><span class="style3">Prometheus</span><br />
        </span><span class="style1"><strong>Forum for the Students by the Students</strong></span>
    </div>
    <div>
    
    </div>
    <h2>
    <asp:Label ID="Label1" runat="server" Text="Documents you have uploaded" 
            style="font-family: Gisha; color: #FFFFFF"></asp:Label>
    </h2>
    <asp:ListBox ID="ListBox1" runat="server" Font-Names="Gisha" Height="292px" 
        Width="497px"></asp:ListBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <div class="wrp">
    <div class="frm">
        <span class="style2">
            <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Aqua" 
                BorderStyle="Ridge" Height="34px" Width="360px" Font-Names="Papyrus" 
                Font-Overline="False" Font-Size="23px" ForeColor="White" 
            Style = "margin:auto" />
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Gisha" 
            Font-Size="15pt" Height="51px">
                <asp:ListItem>Shared</asp:ListItem>
                <asp:ListItem>Private</asp:ListItem>
        </asp:DropDownList>
            &nbsp;
        </span>
        <br />
        <br />
        <asp:Button ID="BtnUpload" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Height="36px" Text="Upload" Width="135px" 
            style="position: relative; top: -3px; left: 172px" OnClientClick = "return ValidateFile()" OnClick = "BtnUpload_Click"/>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="White" Text="The File has been uploaded successfully!" 
            Font-Size="15pt" style="position: relative" ViewStateMode="Enabled" 
            Visible="False"></asp:Label>
    </div>    
    </div>
    <h2>
    <asp:Label ID="Label4" runat="server" Text="Documents available for you" 
            style="font-family: Gisha; color: #FFFFFF"></asp:Label>
    </h2>
    <asp:ListBox ID="ListBox2" runat="server" Font-Names="Gisha" Height="292px" 
        Width="497px"></asp:ListBox>
&nbsp;<br />
    <br />
        <asp:Button ID="BtnDL" runat="server" Font-Bold="True" Font-Names="Gisha" 
            ForeColor="Black" Height="36px" Text="Download" Width="135px" 
            onclick="BtnDL_Click" />
    
    </form>

</body>
</html>
