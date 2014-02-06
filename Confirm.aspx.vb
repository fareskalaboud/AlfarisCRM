
Partial Class Confirm
    Inherits System.Web.UI.Page

    Protected Sub imgbtnBack_Click(sender As Object, e As ImageClickEventArgs) Handles imgbtnBack.Click
        Server.Transfer("Default.aspx")
    End Sub
End Class
