Imports System.Data


Partial Class Homepage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" Then Server.Transfer("Default.aspx")
        If Session("FullAccess") = "False" Then
            hdUsers.Visible = False
        End If
        Session.Timeout = 10
        lblSession.Text = Session("Username")
        Page.Form.DefaultButton = "btnAdd"
    End Sub


    Protected Sub btnAdd_Click(sender As Object, e As ImageClickEventArgs) Handles btnAdd.Click
        If clientFirst.Text = "" Or clientLast.Text = "" Or clientMob.Text = "" Then
            ErrorLabel.Text = "Error: You have left a required field blank. Please check all the fields and enter all the required information."
        Else
            Dim telNo As String = clientTel.Text
            Dim mobNo As String = clientMob.Text
            Dim invalidTel As Boolean = False
            'Checks that the data entered in the Telephone Number field only contains numbers.
            For i = 1 To telNo.Length
                Dim x As String = Mid(telNo, i, 1)
                If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" And x <> "+" Then invalidTel = True
            Next
            For i = 1 To telNo.Length
                Dim x As String = Mid(telNo, i, 1)
                If x <> "0" And x <> "1" And x <> "2" And x <> "3" And x <> "4" And x <> "5" And x <> "6" And x <> "7" And x <> "8" And x <> "9" And x <> "+" Then invalidTel = True
            Next
            If invalidTel = True Then
                ErrorLabel.Text = "Error: You have entered an invalid phone number. Please try again."
            Else
                'creates the conection connects to db
                Dim connection As New OleDb.OleDbConnection
                Dim provider As String
                Dim source As String
                provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
                source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
                connection.ConnectionString = provider & source
                Dim SQL As String
                SQL = "INSERT INTO Clients(CFirstName, CSurname, CCompany, CEmail, CTelephone, CMobile, CNationality, CAlfursan, CDateOfBirth, CPassportNumber, CPassportExpiryDate, CNotes, CUser) " & _
                    "VALUES('" & clientFirst.Text & "', '" & clientLast.Text & "', '" & clientOrg.Text & "', '" & clientEmail.Text & "', '" & clientTel.Text & "', '" & clientMob.Text & "', '" & clientNat.Text & "', '" & clientFursan.Text & "', '" & clientDOB.Text & "', '" & clientPassp.Text & "', '" & clientExp.Text & "', '" & clientNotes.Text & "', '" & Session("Username") & "')"
                Dim cmd As New OleDb.OleDbCommand(SQL, connection)
                connection.Open()
                cmd.ExecuteNonQuery()
                connection.Close()
                Status.Text = "The client " & clientFirst.Text & " " & clientLast.Text & " has been successfully added to the Clients list."
                clientFirst.Text = ""
                clientLast.Text = ""
                clientOrg.Text = ""
                clientEmail.Text = ""
                clientTel.Text = ""
                clientMob.Text = ""
                ErrorLabel.Text = ""
            End If
        End If
    End Sub

    Protected Sub hdLogOut_Click(sender As Object, e As EventArgs) Handles hdLogOut.Click
        Session("Username") = ""
        Server.Transfer("Default.aspx")
    End Sub

    Protected Sub hdClients_Click(sender As Object, e As EventArgs) Handles hdClients.Click
        Server.Transfer("Clients.aspx")
    End Sub

    Protected Sub hdUsers_Click(sender As Object, e As EventArgs) Handles hdUsers.Click
        Response.Redirect("Users.aspx")
    End Sub

End Class
