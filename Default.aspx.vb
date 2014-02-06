Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim maintenance As Boolean
        'maintenance = True
        maintenance = False

        If maintenance = True Then
            lblUser.Visible = False
            lblPass.Visible = False
            txtUser.Visible = False
            txtPass.Visible = False
            btnLogin.Visible = False
        End If

        If maintenance = False Then
            lblMaint.Visible = False
            lblOffline.Visible = False
            lblContact.Visible = False
        End If
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim userID As String = txtUser.Text
        Dim attemptSQL As Boolean = False
        For i = 1 To userID.Length
            If Mid(userID, i, 1) = "'" Or Mid(userID, i, 1) = ";" Or Mid(userID, i, 2) = "OR" Or Mid(userID, i, 1) = "=" Or Mid(userID, i, 4) = "DROP" Then
                attemptSQL = True
            End If
        Next

        Dim pass As String = txtPass.Text
        For i = 1 To pass.Length
            If Mid(pass, i, 1) = "'" Or Mid(pass, i, 1) = ";" Or Mid(pass, i, 2) = "OR" Or Mid(pass, i, 1) = "=" Or Mid(pass, i, 4) = "DROP" Then
                attemptSQL = True
            End If
        Next

        If attemptSQL = True Then
            ErrorLabel.Text = "Invalid characters detected. Please try again and ensure input is correct."
        Else
            'The beginning If statement.
            'The connection to the db.
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            Dim SQL As String
            Dim adaptor As New OleDb.OleDbDataAdapter
            Dim dataSet = New DataSet
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
            connection.ConnectionString = provider & source
            'Opening the connection.
            connection.Open()
            'Query to find the data.
            SQL = "SELECT UserID, UPassword " & _
                        "FROM Users " & _
                        "WHERE UserID = '" & txtUser.Text & "'" _
                           & "AND UPassword = '" & txtPass.Text & "'"
            adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
            'Assign the query result to a dataset.
            adaptor.Fill(dataSet, "Users")
            'Compare the data in the textboxes to the query results.
            Dim row As DataRow
            Dim check As Integer = 0
            For Each row In dataSet.Tables("Users").Rows
                check += 1
            Next
            'If a match is found...
            If check = 0 Then ErrorLabel.Text = "Username and/or Password not recognized."
            If check > 0 Then
                Session("Username") = txtUser.Text
                SQL = "SELECT UFullAccess FROM Users WHERE UserID = '" & Session("Username") & "'"
                adaptor = New OleDb.OleDbDataAdapter(SQL, connection)
                adaptor.Fill(dataSet, "Accounts")
                Dim accessToAcc As String = dataSet.Tables("Accounts").Rows(0).Item(0)
                If accessToAcc = "No" Then
                    Session("FullAccess") = "False"
                ElseIf accessToAcc = "Yes" Then
                    Session("FullAccess") = "True"
                End If
                Response.Redirect("Homepage.aspx", False)
            End If
            'close DB connection
            connection.Close()
        End If
    End Sub


End Class