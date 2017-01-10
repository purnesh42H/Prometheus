Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Net

Partial Class MyDoc
    Inherits System.Web.UI.Page
    Dim nick, reg, course, dept As String
    Dim folder As String
    Protected Sub BtnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim objconn As New SqlConnection
        Dim objcmd As SqlCommand = New SqlCommand()
        Dim reader As SqlDataReader
        Dim validFileTypes As String()
        folder = Request.QueryString("query")
        If (folder = "Documents") Then
            validFileTypes = {"docx", "txt", "doc", "pdf", "xls"}
        ElseIf (folder = "Softwares") Then
            validFileTypes = {"exe", "rar", "zip"}
        ElseIf (folder = "Articles" Or folder = "Journals") Then
            validFileTypes = {"docx", "doc", "pdf"}
        ElseIf (folder = "Presentations") Then
            validFileTypes = {"ppt", "pptx"}
        Else
            validFileTypes = {"bmp", "jpg", "png", "gif"}
        End If
        Dim ext As String = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName)
        Dim isValidFile As Boolean = False
        For i As Integer = 0 To validFileTypes.Length - 1
            If ext = "." & validFileTypes(i) Then
                isValidFile = True
                Exit For
            End If
        Next
        If Not isValidFile Then
            Label3.ForeColor = System.Drawing.Color.Red
            Label3.Text = "Invalid File. Please upload a File with extension " & _
                          String.Join(",", validFileTypes)
            Label3.Visible = True
        Else
            nick = CType(Session.Item("id"), String)
            objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=User_Information;User ID=sa;Password=prometheus"
            objconn.Open()
            objcmd.Connection = objconn
            objcmd.CommandText = "Select * from registration where nick_name = '" & nick & "'"
            reader = objcmd.ExecuteReader
            reader.Read()
            reg = reader.Item("reg_no")
            course = reader.Item("course").ToString().ToLower
            dept = reader.Item("dept_name").ToString().ToLower
            reader.Close()
            objconn.Close()
            objconn.Dispose()
            Try
                objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=Data_Information;User ID=sa;Password=prometheus"
                objconn.Open()
                objcmd.Connection = objconn
                objcmd.CommandText = "INSERT INTO " & folder & "(holder, filename, share_type, status) VALUES('" & reg & "', '" & FileUpload1.FileName & "','" & DropDownList1.Text & "', 'pending')"
                objcmd.ExecuteNonQuery()
                objconn.Close()
                objconn.Dispose()
            Catch ex As Exception
                MsgBox(ex.ToString())
                objconn.Close()
                objconn.Dispose()
            End Try
            Dim ftprequest As System.Net.FtpWebRequest = DirectCast(System.Net.WebRequest.Create("ftp://ftp.drivehq.com/" & course & "/" & dept & "/users/" & reg & "/" & folder & "/" & FileUpload1.FileName), System.Net.FtpWebRequest)
            ftprequest.Credentials = New System.Net.NetworkCredential("prometheus2013", "coders")
            ftprequest.Method = System.Net.WebRequestMethods.Ftp.UploadFile
            FileUpload1.SaveAs(Server.MapPath("~/") & FileUpload1.FileName)
            Dim filez() As Byte = System.IO.File.ReadAllBytes(Server.MapPath("~/") & FileUpload1.FileName)
            Dim strz As System.IO.Stream = ftprequest.GetRequestStream()
            strz.Write(filez, 0, filez.Length)
            strz.Close()
            strz.Dispose()
            File.Delete(Server.MapPath("~/") & FileUpload1.FileName)
            Label3.ForeColor = System.Drawing.Color.White
            Label3.Visible = True
        End If
    End Sub

    Protected Sub Page_LoadComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
        Dim objconn As New SqlConnection
        Dim objcmd As SqlCommand = New SqlCommand()
        Dim reader As SqlDataReader
        folder = Request.QueryString("query")
        nick = CType(Session.Item("id"), String)
        Label1.Text = folder & " you have uploaded"
        Label4.Text = folder & " available for download"
        objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=User_Information;User ID=sa;Password=prometheus"
        objconn.Open()
        objcmd.Connection = objconn
        objcmd.CommandText = "Select * from registration where nick_name = '" & nick & "'"
        reader = objcmd.ExecuteReader
        reader.Read()
        reg = reader.Item("reg_no")
        reader.Close()
        objconn.Close()
        objconn.Dispose()
        ListBox1.Items.Clear()
        ListBox2.Items.Clear()
        objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=Data_Information;User ID=sa;Password=prometheus"
        objconn.Open()
        objcmd.Connection = objconn
        objcmd.CommandText = "Select * from " & folder & " where (holder = '" & reg & "')"
        reader = objcmd.ExecuteReader
        While reader.Read()
            ListBox1.Items.Add(reader.Item("filename"))
        End While
        reader.Close()
        objcmd.CommandText = "Select * from " & folder & " where (share_type = 'Shared')"
        reader = objcmd.ExecuteReader
        While reader.Read()
            ListBox2.Items.Add(reader.Item("filename"))
        End While
        reader.Close()
    End Sub

    Protected Sub BtnDL_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim objconn As New SqlConnection
        Dim objcmd As SqlCommand = New SqlCommand()
        Dim reader As SqlDataReader
        Dim holder As String
        Dim status As String
        Dim course, dept As String
        objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=Data_Information;User ID=sa;Password=prometheus"
        objconn.Open()
        folder = Request.QueryString("query")
        objcmd.Connection = objconn
        If (ListBox1.SelectedIndex <> -1) Then
            objcmd.CommandText = "Select * from " & folder & " where (filename = '" & ListBox1.SelectedItem.ToString() & "')"
        ElseIf (ListBox2.SelectedIndex <> -1) Then
            objcmd.CommandText = "Select * from " & folder & " where (filename = '" & ListBox2.SelectedItem.ToString() & "')"
        Else
            MsgBox("Please select a File to download!", MsgBoxStyle.OkOnly, "Select a File")
            Exit Sub
        End If
            reader = objcmd.ExecuteReader
            reader.Read()
            holder = reader.Item("holder")
            status = reader.Item("status")
            reader.Close()
            objconn.Close()
        objconn.Dispose()
        If (status = "pending") Then
            MsgBox("File is pending for the approval by administrator")
        ElseIf (status = "rejected") Then
            MsgBox("File has been rejected by the administrator")
        Else
            objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=User_Information;User ID=sa;Password=prometheus"
            objcmd.CommandText = "select course, dept_name from registration where reg_no = '" & holder & "'"
            objconn.Open()
            objcmd.Connection = objconn
            reader = objcmd.ExecuteReader
            reader.Read()
            course = reader.Item("course").ToString().ToLower()
            dept = reader.Item("dept_name").ToString().ToLower()
            reader.Close()
            objconn.Close()
            objconn.Dispose()

            Dim myftp As New Utilities.FTP.FTPclient("ftp://ftp.drivehq.com/" & course & "/" & dept & "/users/" & holder & "/" & folder & "/", "prometheus2013", "coders")
            If (ListBox1.SelectedIndex <> -1) Then
                myftp.Download(ListBox1.SelectedItem.ToString, Server.MapPath("~/" & ListBox1.SelectedItem.ToString))
            ElseIf (ListBox2.SelectedIndex <> -1) Then
                myftp.Download(ListBox2.SelectedItem.ToString, Server.MapPath("~/" & ListBox2.SelectedItem.ToString))
            Else
                MsgBox("Please select a File to download!", MsgBoxStyle.OkOnly, "Select a File")
                Exit Sub
            End If
            Label3.ForeColor = System.Drawing.Color.White
            Label3.Text = "File Download Complete!"
            Label3.Visible = True
        End If
    End Sub

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
