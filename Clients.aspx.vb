Imports System.Data

Partial Class Clients
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Username") = "" Then Server.Transfer("Default.aspx")
        If Session("FullAccess") = "False" Then
            GridView2.Visible = False
            hdUsers.Visible = False
            radUser.Visible = False
            emailGetAll.Visible = False
            emailGet.Visible = True
            Label18.Visible = False
            Label20.Visible = False
            Label19.Visible = False
            DelEntry.Visible = False
            clientID.Visible = False
            IncEntry.Visible = False
            Label28.Visible = False
            Label27.Visible = False
        End If
        If Session("FullAccess") = "True" Then
            GridView1.Visible = False
            emailGetAll.Visible = True
            emailGet.Visible = False
            Dim sqlQuery As String
            sqlQuery = "SELECT ClientNumber FROM Clients ORDER BY ClientNumber"
            '	SQLDataSource's SQL = SQLquery
            SqlDataSource4.SelectCommand = sqlQuery
            SqlDataSource4.DataBind()
            SqlDataSource2.SelectCommand = sqlQuery
            SqlDataSource2.DataBind()
        End If
        Session.Timeout = 10
        lblSession.Text = Session("Username")
        emailList.Visible = False
    End Sub

    Protected Sub UpdateEntry_Click(sender As Object, e As ImageClickEventArgs) Handles UpdateEntry.Click
        'creates the conection connects to db
        If editID.Text = "" Then
            ErrorLabel.Text = "Error: You have left the update field blank and pressed the update button. Please try again."
        Else
            Dim connection As New OleDb.OleDbConnection
            Dim provider As String
            Dim source As String
            provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
            connection.ConnectionString = provider & source
            Dim SQL As String
            SQL = "UPDATE Clients SET " & editField.Text & " = '" & editValue.Text & "' WHERE ClientNumber = " & editID.Text & ""
            Dim cmd As New OleDb.OleDbCommand(SQL, connection)
            connection.Open()
            cmd.ExecuteNonQuery()
            connection.Close()
            Status.Text = "You have successfully edited the column " & editField.Text & " for ClientNumber " & editID.Text & ". Please refresh the page using the green arrow button below."
            editValue.Text = ""
        End If
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
        SQL = "DELETE FROM Clients WHERE ClientNumber = " & clientID.Text & ""
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The client with ID " & clientID.Text & " has been permanently deleted from the Clients list."
    End Sub

    Protected Sub imgRefresh_Click(sender As Object, e As ImageClickEventArgs) Handles imgRefresh.Click
        Server.Transfer("Clients.aspx")
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As ImageClickEventArgs) Handles btnSearch.Click
        'SQLquery As String
        Dim sqlQuery As String = ""
        'If radiobuttonClient is checked Then
        If Session("FullAccess") = "False" Then
            If radMobile.Checked = True Then
                'SQLquery = extract data from table where the item = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CMobile = '" & txtSearch.Text & "' AND CUser = '" & Session("Username") & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource1.SelectCommand = sqlQuery
                SqlDataSource1.DataBind()
                'ElseIf radiobuttonUser is checked Then
            ElseIf radCompany.Checked = True Then
                'SQLquery = extract data from table where the user = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CCompany = '" & txtSearch.Text & "' AND CUser = '" & Session("Username") & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource1.SelectCommand = sqlQuery
                SqlDataSource1.DataBind()
            ElseIf radEmail.Checked = True Then
                'SQLquery = extract data from table where the user = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CEmail = '" & txtSearch.Text & "' AND CUser = '" & Session("Username") & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource1.SelectCommand = sqlQuery
                SqlDataSource1.DataBind()
            ElseIf radSurname.Checked = True Then
                'SQLquery = extract data from table where the user = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CSurname = '" & txtSearch.Text & "' AND CUser = '" & Session("Username") & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource1.SelectCommand = sqlQuery
                SqlDataSource1.DataBind()
            ElseIf radUser.Checked = False And radMobile.Checked = False And radSurname.Checked = False And radCompany.Checked = False And radEmail.Checked = False Then
                SearchErrorLabel.Text = "Error: You have not chosen a search criteria."
            End If
        ElseIf Session("FullAccess") = "True" Then
            If radUser.Checked = True Then
                'SQLquery = extract data from table where the client = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CUser = '" & txtSearch.Text & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource3.SelectCommand = sqlQuery
                SqlDataSource3.DataBind()
                'ElseIf radiobuttonItem is checked Then
            ElseIf radMobile.Checked = True Then
                'SQLquery = extract data from table where the item = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CMobile = '" & txtSearch.Text & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource3.SelectCommand = sqlQuery
                SqlDataSource3.DataBind()
                'ElseIf radiobuttonUser is checked Then
            ElseIf radCompany.Checked = True Then
                'SQLquery = extract data from table where the user = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CCompany = '" & txtSearch.Text & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource3.SelectCommand = sqlQuery
                SqlDataSource3.DataBind()
            ElseIf radEmail.Checked = True Then
                'SQLquery = extract data from table where the user = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CEmail = '" & txtSearch.Text & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource3.SelectCommand = sqlQuery
                SqlDataSource3.DataBind()
            ElseIf radSurname.Checked = True Then
                'SQLquery = extract data from table where the user = text in the search box
                sqlQuery = "SELECT * FROM Clients WHERE CSurname = '" & txtSearch.Text & "'"
                '	SQLDataSource's SQL = SQLquery
                SqlDataSource3.SelectCommand = sqlQuery
                SqlDataSource3.DataBind()
            ElseIf radUser.Checked = False And radMobile.Checked = False And radSurname.Checked = False Then
                SearchErrorLabel.Text = "Error: You have not chosen a search criteria."
            End If
        End If
        SearchErrorLabel.Text = ""
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

    Protected Sub emailGet_Click(sender As Object, e As ImageClickEventArgs) Handles emailGet.Click
        emailList.Visible = True
        'Dim sqlQuery As String = "SELECT CEmail FROM Clients"
        'Dim sqlSource As SqlDataSource
        'sqlSource.SelectCommand = sqlQuery

        Dim sText As String = String.Empty
        Dim provider As String
        Dim source As String
        provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"

        Dim sConnString As String = provider & source

        Using cn As New OleDb.OleDbConnection(sConnString)
            cn.Open()
            Dim cmd As New OleDb.OleDbCommand("SELECT CEmail From Clients WHERE CUser = '" & Session("Username") & "'", cn)
            Dim r As OleDb.OleDbDataReader = cmd.ExecuteReader()

            If Not r.HasRows Then Exit Sub

            Do While r.Read()
                sText = sText & ";" & r.GetString(0)
            Loop

            cn.Close()
        End Using

        emailList.Text = sText
    End Sub

    Protected Sub emailGetAll_Click(sender As Object, e As ImageClickEventArgs) Handles emailGetAll.Click
        emailList.Visible = True
        'Dim sqlQuery As String = "SELECT CEmail FROM Clients"
        'Dim sqlSource As SqlDataSource
        'sqlSource.SelectCommand = sqlQuery

        Dim sText As String = String.Empty
        Dim provider As String
        Dim source As String
        provider = "Provider=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"

        Dim sConnString As String = provider & source

        Using cn As New OleDb.OleDbConnection(sConnString)
            cn.Open()
            Dim cmd As New OleDb.OleDbCommand("SELECT CEmail From Clients", cn)
            Dim r As OleDb.OleDbDataReader = cmd.ExecuteReader()

            If Not r.HasRows Then Exit Sub

            Do While r.Read()
                sText = sText & ";" & r.GetString(0)
            Loop

            cn.Close()
        End Using

        emailList.Text = sText
    End Sub

    Protected Sub IncEntry_Click(sender As Object, e As ImageClickEventArgs) Handles IncEntry.Click
        'creates the conection connects to db
        Dim connection As New OleDb.OleDbConnection
        Dim provider As String
        Dim source As String
        provider = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        source = "Data Source=|DataDirectory|AlfarisGuestsDB.mdb"
        connection.ConnectionString = provider & source
        Dim SQL As String
        SQL = "DELETE FROM Clients WHERE CEmail = ' ' AND CPassportNumber = ' '"
        Dim cmd As New OleDb.OleDbCommand(SQL, connection)
        connection.Open()
        cmd.ExecuteNonQuery()
        connection.Close()
        Status.Text = "The clients have been permanently deleted from the Clients list."
    End Sub
End Class
