Imports System.Data

Partial Class Users
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" Then Server.Transfer("Default.aspx")
        If Session("FullAccess") = "False" Then
            Server.Transfer("Homepage.aspx")
        End If
        Session.Timeout = 10
        lblSession.Text = Session("Username")
    End Sub

    Protected Sub hdLogOut_Click(sender As Object, e As EventArgs) Handles hdLogOut.Click
        Session("Username") = ""
        Server.Transfer("Default.aspx")
    End Sub

    Protected Sub hdClients_Click(sender As Object, e As EventArgs) Handles hdClients.Click
        Server.Transfer("Homepage.aspx")
    End Sub

    Protected Sub hdUsers_Click(sender As Object, e As EventArgs) Handles hdUsers.Click
        Server.Transfer("Users.aspx")
    End Sub

    Protected Sub UpdateEntry_Click(sender As Object, e As ImageClickEventArgs) Handles UpdateEntry.Click
        If editID.Text = "" Then
            ErrorLabel.Text = "Error: You have left the update field blank and pressed the update button. Please try again."
        ElseIf editField.Text = "UFullAccess" And editValue.Text <> "No" And editValue.Text <> "Yes" Then
            ErrorLabel.Text = "Error: Please only  enter the words 'Yes' or 'No' if you are trying to change the access rights of a user."
        Else
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "UPDATE Users SET [" & editField.Text & "] = '" & editValue.Text & "' WHERE [UserNumber] = " & editID.Text & ""
            Dim cmd As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            Status.Text = "You have successfully edited the column " & editField.Text & " for UserNumber " & editID.Text & ". Please refresh the page using the green arrow button below."
            ErrorLabel.Text = ""
            editValue.Text = ""
        End If
    End Sub

    Protected Sub imgRefresh_Click(sender As Object, e As ImageClickEventArgs) Handles imgRefresh.Click
        Server.Transfer("Users.aspx")
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As ImageClickEventArgs) Handles btnSearch.Click
        Dim sqlQuery As String = ""
        If radSurname.Checked = True Then
            'SQLquery = extract data from table where the client = text in the search box
            sqlQuery = "SELECT * FROM Users WHERE USurname = '" & txtSearch.Text & "'"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
            'ElseIf radiobuttonItem is checked Then
        ElseIf radFirst.Checked = True Then
            'SQLquery = extract data from table where the item = text in the search box
            sqlQuery = "SELECT * FROM Users WHERE UFirstName = '" & txtSearch.Text & "'"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
            'ElseIf radiobuttonUser is checked Then
        ElseIf radID.Checked = True Then
            'SQLquery = extract data from table where the user = text in the search box
            sqlQuery = "SELECT * FROM Users WHERE UserID = '" & txtSearch.Text & "'"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource1.SelectCommand = sqlQuery
            SqlDataSource1.DataBind()
        ElseIf radSurname.Checked = False And radFirst.Checked = False And radID.Checked = False Then
            SearchErrorLabel.Text = "Error: You have not chosen a search criteria."
        End If
        SearchErrorLabel.Text = ""
    End Sub

    Protected Sub DelEntry_Click(sender As Object, e As ImageClickEventArgs) Handles DelEntry.Click
        'creates the conection connects to db
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        SQL = "DELETE FROM [Users] WHERE [UserNumber] = " & clientID.Text & ""
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The user with User Number " & clientID.Text & " has been permanently deleted from the Users list. Please click on the green refresh button below."
    End Sub

    Protected Sub AddUser_Click(sender As Object, e As ImageClickEventArgs) Handles AddUser.Click
        If signupNumber.Text <> "" Then
            'creates the conection connects to db
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "INSERT INTO Users (UserID, UFirstName, USurname, UBranch, UPassword, USector, UFullAccess) " & _
                "SELECT [UserID], [UFirstName], [USurname], [UBranch], [UPassword], [USector], [UFullAccess] FROM Signups WHERE SignupNumber = " & signupNumber.Text
            Dim cmdIns As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmdIns.ExecuteNonQuery()
            SQL = "DELETE FROM Signups WHERE SignupNumber = " & signupNumber.Text
            Dim cmdDel As New OleDb.OleDbCommand(SQL, connection)
            cmdDel.ExecuteNonQuery()
            connection.Close()
            StatusS.Text = "The user can now start using the system normally. Please click on the green refresh button."
        End If
    End Sub

    Protected Sub imgRefresh0_Click(sender As Object, e As ImageClickEventArgs) Handles imgRefresh0.Click
        Server.Transfer("Users.aspx")
    End Sub

    Protected Sub DelSignup_Click(sender As Object, e As ImageClickEventArgs) Handles DelSignup.Click
        If signupNumber.Text <> "" Then
            'creates the conection connects to dbf
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            connection.Open()
            SQL = "DELETE FROM Signups WHERE SignupNumber = " & signupDel.Text()
            Dim cmdDel As New OleDb.OleDbCommand(SQL, connection)
            cmdDel.ExecuteNonQuery()
            connection.Close()
            StatusS.Text = "The signup has been deleted. Please refresh the page."
        End If
    End Sub
End Class
