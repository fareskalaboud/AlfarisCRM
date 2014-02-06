Imports System.Data

Partial Class Signup
    Inherits System.Web.UI.Page

    Protected Sub imgbtnBack_Click(sender As Object, e As ImageClickEventArgs) Handles imgbtnBack.Click
        Server.Transfer("Default.aspx")
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If empFirst.Text = "" Or empLast.Text = "" Or empBranch.Text = "" Or empPass1.Text = "" Or empPass2.Text = "" Or empSector.Text = "" Then
            ErrorLabel.Text = "Error: You have left a field blank. Please fill in all the field with correct information and try again."
        ElseIf empPass1.Text <> empPass2.Text Then
            ErrorLabel.Text = "Error: Your passwords are not the same. Please re-enter your passwords and try again."
            empPass1.Text = ""
            empPass2.Text = ""
        Else
            btnLogin.Visible = False
            'creates the conection connects to db
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "INSERT INTO Signups(UserID, UFirstName, USurname, UBranch, UPassword, USector, UFullAccess) " & _
                "VALUES('" & empFirst.Text & empLast.Text & "', '" & empFirst.Text & "', '" & empLast.Text & "', '" & empBranch.Text & "', '" & empPass1.Text & "', '" & empSector.Text & "', 'No')"
            Dim cmd As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            Server.Transfer("Confirm.aspx")
        End If
    End Sub
End Class
