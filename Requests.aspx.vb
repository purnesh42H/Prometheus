Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Imports System.Net
Partial Class Requests
    Inherits System.Web.UI.Page


    Protected Sub BtnViewDate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnViewDate.Click
        Calendar1.visible = True
        Calendar2.Visible = True
        ListType.Visible = False
        ListItems.Items.Clear()
    End Sub

    Protected Sub BtnViewType_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnViewType.Click
        Calendar1.Visible = False
        Calendar2.Visible = False
        ListType.Visible = True
        ListItems.Items.Clear()
    End Sub

    Protected Sub BtnMore_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnMore.Click
        Calendar1.Visible = False
        Calendar2.Visible = False
        ListType.Visible = False
        ListItems.Items.Clear()
    End Sub

    Protected Sub BtnApprove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnApprove.Click
        Dim objconn As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim tab_name(6) As String
        tab_name(1) = "Documents"
        tab_name(2) = "Presentations"
        tab_name(3) = "Articles"
        tab_name(4) = "Journals"
        tab_name(5) = "Softwares"
        tab_name(6) = "Others"
        For i = 1 To 6
            objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=Data_Information;User ID=sa;Password=prometheus"
            objconn.Open()
            objcmd.Connection = objconn
            objcmd.CommandText = "update " & tab_name(i) & " set status = 'approved' where filename = '" & ListItems.SelectedItem.ToString() & "'"
            Try
                objcmd.ExecuteNonQuery()
            Catch
                objconn.Close()
                objconn.Dispose()
                Continue For
            End Try
            objconn.Close()
            objconn.Dispose()
        Next
        ListItems.Items.Clear()
    End Sub

    Protected Sub BtnReject_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnReject.Click
        Dim objconn As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim tab_name(6) As String
        tab_name(1) = "Documents"
        tab_name(2) = "Presentations"
        tab_name(3) = "Articles"
        tab_name(4) = "Journals"
        tab_name(5) = "Softwares"
        tab_name(6) = "Others"
        For i = 1 To 6
            objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=Data_Information;User ID=sa;Password=prometheus"
            objconn.Open()
            objcmd.Connection = objconn
            objcmd.CommandText = "update " & tab_name(i) & " set status = 'rejected' where filename = '" & ListItems.SelectedItem.ToString() & "'"
            Try
                objcmd.ExecuteNonQuery()
            Catch
                objconn.Close()
                objconn.Dispose()
                Continue For
            End Try
            objconn.Close()
            objconn.Dispose()
        Next
        ListItems.Items.Clear()
    End Sub

    Protected Sub Page_InitComplete(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
        Dim objconn As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim reader As SqlDataReader
        Dim tab_name(6) As String
        tab_name(1) = "Documents"
        tab_name(2) = "Presentations"
        tab_name(3) = "Articles"
        tab_name(4) = "Journals"
        tab_name(5) = "Softwares"
        tab_name(6) = "Others"
        For i = 1 To 6
            objconn.ConnectionString = "Data Source=PURNESH-PC;Initial Catalog=Data_Information;User ID=sa;Password=prometheus"
            objcmd.CommandText = "select * from " & tab_name(i) & " where status = 'pending'"
            objconn.Open()
            objcmd.Connection = objconn
            Try
                reader = objcmd.ExecuteReader
            Catch
                reader.Close()
                objconn.Close()
                objconn.Dispose()
                Continue For
            End Try
            While (reader.Read())
                ListItems.Items.Add(reader.Item("filename"))
            End While
            reader.Close()
            objconn.Close()
            objconn.Dispose()
        Next
    End Sub
End Class
