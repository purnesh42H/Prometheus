Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Net
Imports System.IO

Partial Class Registration
    Inherits System.Web.UI.Page

    Protected Sub BtnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim CmdString As String
        Dim Conn As New SqlConnection
        Dim Cmd As New SqlCommand
        CmdString = "UPDATE registration set name = '" & TxtBxName.Text & "', course = '" & TxtBxCourse.Text & "',dept_name = '" & TxtBxdept.Text & "', type = '" & DropType.Text & "', nick_name = '" & TxtBxNickName.Text & "', passwrd = '" & TxtBxPass.Text & "', phone_no = '" & TxtBxPhoneNo.Text & "' where reg_no = '" & TxtBxRegNo.Text & "' and email_id = '" & TxtBxEmail.Text & "'"
        Try
            Conn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=User_Information;User ID=sa;Password=prometheus"
            Conn.Open()
            Cmd.CommandText = CmdString
            Cmd.CommandType = CommandType.Text
            Cmd.Connection = Conn
            Cmd.ExecuteNonQuery()
            Conn.Close()
            Conn.Dispose()
        Catch ex As Exception
            MsgBox("One Or The Other Field Is Empty/Creation Of Duplicates")
            Conn.Close()
            Conn.Dispose()
            Exit Sub
        End Try
        CmdString = "insert into authentication(nick_name, phone_no, passwrd) values('" & TxtBxNickName.Text & "','" & TxtBxPhoneNo.Text & "','" & TxtBxPass.Text & "')"
        Try
            Conn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=User_Information;User ID=sa;Password=prometheus"
            Conn.Open()
            Cmd.CommandText = CmdString
            Cmd.CommandType = CommandType.Text
            Cmd.Connection = Conn
            Cmd.ExecuteNonQuery()
            Conn.Close()
            Conn.Dispose()
        Catch ex As Exception
            MsgBox("One Or The Other Field Is Empty/Creation Of Duplicates")
            Conn.Close()
            Conn.Dispose()
            Exit Sub
        End Try
        MakeDir(TxtBxRegNo.Text)
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub Page_LoadComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
        TxtBxEmail.Text = Request.QueryString("Email_id")
    End Sub
    Private Sub MakeDir(ByVal dirName As String)
        Dim reqFTP As FtpWebRequest = Nothing
        Dim ftpStream As Stream = Nothing
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower() & "/" & TxtBxdept.Text.ToLower() & "/users/" + dirName)), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower() & "/" & TxtBxdept.Text.ToLower() & "/users/" & dirName & "/Documents")), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower & "/" & TxtBxdept.Text.ToLower & "/users/" & dirName & "/Softwares")), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower() & "/" & TxtBxdept.Text.ToLower() & "/users/" & dirName & "/Journals")), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower() & "/" & TxtBxdept.Text.ToLower() & "/users/" & dirName & "/Articles")), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower() & "/" & TxtBxdept.Text.ToLower() & "/users/" & dirName & "/Presentations")), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
        Try
            reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & TxtBxCourse.Text.ToLower() & "/" & TxtBxdept.Text.ToLower() & "/users/" & dirName & "/Others")), FtpWebRequest)
            reqFTP.Method = WebRequestMethods.Ftp.MakeDirectory
            reqFTP.UseBinary = True
            reqFTP.Credentials = New NetworkCredential("prometheus2013", "coders")
            Dim response As FtpWebResponse = DirectCast(reqFTP.GetResponse(), FtpWebResponse)
            ftpStream = response.GetResponseStream()
            ftpStream.Close()
            response.Close()
        Catch ex As Exception
            If ftpStream IsNot Nothing Then
                ftpStream.Close()
                ftpStream.Dispose()
            End If
            MsgBox("Error In Creation Of Directory For You")
            Exit Sub
        End Try
    End Sub
End Class


