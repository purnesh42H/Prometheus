Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Net
Partial Class Create
    Inherits System.Web.UI.Page

    Dim flag As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Enabled = False
        Label2.Enabled = False
        Label3.Enabled = False
        Label4.Enabled = False
        TxtEnter.Enabled = False
        BtnAdd.Enabled = False
        ListCourse.Enabled = False
        ListDept.Enabled = False
        ListYr.Enabled = False
        TxtEnter.Text = ""
    End Sub

    Protected Sub BtnCourse_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnCourse.Click
        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        TxtEnter.Visible = True
        BtnAdd.Visible = True
        ListCourse.Visible = True
        ListDept.Visible = True
        ListYr.Visible = True
        Label1.Enabled = True
        TxtEnter.Enabled = True
        BtnAdd.Enabled = True
        flag = 1
        Session("flag") = flag
    End Sub

    Protected Sub BtnDept_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnDept.Click
        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        TxtEnter.Visible = True
        BtnAdd.Visible = True
        ListCourse.Visible = True
        ListDept.Visible = True
        ListYr.Visible = True
        Label1.Enabled = True
        TxtEnter.Enabled = True
        BtnAdd.Enabled = True
        Label2.Enabled = True
        Label3.Enabled = True
        ListCourse.Enabled = True
        flag = 2
        Session("flag") = flag
    End Sub

    Protected Sub BtnSub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnSub.Click
        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        TxtEnter.Visible = True
        BtnAdd.Visible = True
        ListCourse.Visible = True
        ListDept.Visible = True
        ListYr.Visible = True
        Label1.Enabled = True
        TxtEnter.Enabled = True
        BtnAdd.Enabled = True
        Label2.Enabled = True
        ListDept.Enabled = True
        Label3.Enabled = True
        ListCourse.Enabled = True
        Label4.Enabled = True
        ListYr.Enabled = True
        flag = 3
        Session("flag") = flag
    End Sub

    Protected Sub BtnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnAdd.Click
        Dim dirname As String = TxtEnter.Text.ToString()
        Dim reqFTP As FtpWebRequest = Nothing
        Dim ftpStream As Stream = Nothing
        flag = CType(Session.Item("flag"), Integer)
        If (flag = 1) Then
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" + dirname)), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
        ElseIf (flag = 2) Then
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" + dirname)), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/groups")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/users")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/groups/1year")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/groups/2year")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/groups/3year")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/groups/4year")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & dirname & "/groups/created")), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
        Else
            Try
                reqFTP = DirectCast(FtpWebRequest.Create(New Uri("ftp://ftp.drivehq.com/" & ListCourse.Text.ToString() & "/" & ListDept.Text.ToString() & "/groups/" & ListYr.Text.ToString & "/subject/" + dirname)), FtpWebRequest)
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
                MsgBox(ex.Message.ToString())
            End Try
        End If
    End Sub
End Class
