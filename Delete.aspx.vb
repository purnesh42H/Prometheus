
Partial Class Delete
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Enabled = False
        Label2.Enabled = False
        Label3.Enabled = False
        Label4.Enabled = False
        TxtEnter.Enabled = False
        BtnDelete.Enabled = False
        ListCourse.Enabled = False
        ListDept.Enabled = False
        ListYr.Enabled = False
    End Sub

    Protected Sub BtnCourse_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnCourse.Click
        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        TxtEnter.Visible = True
        BtnDelete.Visible = True
        ListCourse.Visible = True
        ListDept.Visible = True
        ListYr.Visible = True
        Label1.Enabled = True
        TxtEnter.Enabled = True
        BtnDelete.Enabled = True
    End Sub

    Protected Sub BtnDept_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnDept.Click
        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        TxtEnter.Visible = True
        BtnDelete.Visible = True
        ListCourse.Visible = True
        ListDept.Visible = True
        ListYr.Visible = True
        Label1.Enabled = True
        TxtEnter.Enabled = True
        BtnDelete.Enabled = True
        Label2.Enabled = True
        Label3.Enabled = True
        ListCourse.Enabled = True
    End Sub

    Protected Sub BtnSub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnSub.Click
        Label1.Visible = True
        Label2.Visible = True
        Label3.Visible = True
        Label4.Visible = True
        TxtEnter.Visible = True
        BtnDelete.Visible = True
        ListCourse.Visible = True
        ListDept.Visible = True
        ListYr.Visible = True
        Label1.Enabled = True
        TxtEnter.Enabled = True
        BtnDelete.Enabled = True
        Label2.Enabled = True
        ListDept.Enabled = True
        Label3.Enabled = True
        ListCourse.Enabled = True
        Label4.Enabled = True
        ListYr.Enabled = True
    End Sub
End Class
