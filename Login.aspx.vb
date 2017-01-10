Imports Microsoft.VisualBasic
Imports System.Data.Sql
Imports System.Net
Imports System.IO
Imports System.Data.SqlClient

Partial Class _Login
    Inherits System.Web.UI.Page
    Protected Sub BtnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnRegister.Click, BtnLogin.Click
        Dim objconn As New SqlConnection
        Dim objcmd As SqlCommand = New SqlCommand()
        Dim reader As SqlDataReader
        objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=User_Information;User ID=sa;Password=prometheus"
        Try
            objconn.Open()
            objcmd.Connection = objconn
            objcmd.CommandText = "Select * from authentication where (nick_name = '" & TxtBxUID.Text & "' or phone_no = '" & TxtBxUID.Text & "') and passwrd = '" & TxtBxPsswrd.Text & "'"
        Catch ex As Exception
            MsgBox("Couldn't Connect To The Server")
            Exit Sub
        End Try
        reader = objcmd.ExecuteReader
        If (reader.Read()) Then
            If (reader("nick_name").ToString = "prom_admin" And reader("passwrd").ToString = "admin1096") Then
                reader.Close()
                objconn.Close()
                objconn.Dispose()
                Response.Redirect("HomeAdmin.aspx")
            End If
            Dim id As String
            id = TxtBxUID.Text
            Session("id") = id
            reader.Close()
            objconn.Close()
            objconn.Dispose()
            Response.Redirect("Home.aspx")
        Else
            reader.Close()
            objconn.Close()
            objconn.Dispose()
            LblLogin.Text = "Login Unsuccessful!"
            LblLogin.Visible = True
        End If
    End Sub

    Protected Sub BtnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnRegister.Click
        LblLogin.Visible = False
        If (TxtBxMail.Text <> "") Then
            Response.Redirect("Registration.aspx?Email_id=" & TxtBxMail.Text)
        Else
            LblLogin.Text = "Please fill in your Email ID!"
            LblLogin.Visible = True
        End If
    End Sub


End Class


