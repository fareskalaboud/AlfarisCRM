<%@ Page Language="VB" Debug="true" AutoEventWireup="false" CodeFile="Users.aspx.vb" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body style="background-color:#fbe7b4">
    <form id="form1" runat="server">
    <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-color: #B96C27">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3" style="text-align: center">
                                <asp:Button ID="hdClients" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="#B96C27" Height="38px" Text="Add a Client" Width="184px" />
                            </td>
                            <td class="auto-style3" style="text-align: center">
                                <asp:Button ID="hdUsers" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="#B96C27" Height="38px" Text="List of Users" Width="184px" />
                            </td>
                            <td class="auto-style3" style="text-align: center">
                                <asp:Button ID="hdLogOut" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="#B96C27" Height="38px" Text="Logout" Width="184px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Welcome, " Font-Italic="True" Font-Size="15pt"></asp:Label>
                                &nbsp;<asp:Label ID="lblSession" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Font-Italic="True" Font-Size="15pt"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label30" runat="server" Font-Size="XX-Large" Text="Registered Users" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True" Font-Underline="True"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Search by " Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radID" runat="server" Font-Names="Gill Sans MT" Text="UserID" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radFirst" runat="server" Font-Names="Gill Sans MT" Text="UFirstName" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radSurname" runat="server" Font-Names="Gill Sans MT" Text="USurname" GroupName="searchBy" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/SearchButton.png" Width="50px" />
&nbsp;
    
        <asp:Label ID="SearchErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>
                                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="UserNumber" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="1409px" AllowSorting="True">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="UserNumber" HeaderText="UserNumber" InsertVisible="False" ReadOnly="True" SortExpression="UserNumber" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="UFirstName" HeaderText="UFirstName" SortExpression="UFirstName" />
                        <asp:BoundField DataField="USurname" HeaderText="USurname" SortExpression="USurname" />
                        <asp:BoundField DataField="UFullAccess" HeaderText="UFullAccess" SortExpression="UFullAccess" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Status" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="Black" Font-Bold="True"></asp:Label>
    
        <asp:Label ID="ErrorLabel" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="Red" Font-Bold="True"></asp:Label>
                                <br />
                <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Edit a User's Details?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="imgRefresh" runat="server" Height="71px" ImageUrl="~/Refesh.ico" Width="70px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
    
        <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="UserNumber" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="Field" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="New Value" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="editID" runat="server" datasourceid="SqlDataSource3" DataTextField="UserNumber" DataValueField="UserNumber" Height="24px" Width="221px">
                    </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [UserNumber] FROM [Users]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="editField" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>UserID</asp:ListItem>
                        <asp:ListItem>UFirstName</asp:ListItem>
                        <asp:ListItem>USurname</asp:ListItem>
                        <asp:ListItem>UPassword</asp:ListItem>
                        <asp:ListItem>UFullAccess</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="editValue" runat="server" Height="23px" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="UpdateEntry" runat="server" ImageUrl="Save.png" Height="52px" Width="50px" />
&nbsp;
    
        <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="Save" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                    <br />
                    <p>
    
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Delete a User?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                        <br />
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="UserNumber" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
                        <asp:DropDownList ID="clientID" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserNumber" DataValueField="UserNumber" Height="24px" Width="221px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [UserNumber] FROM [Users] ORDER BY [UserNumber]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="DelEntry" runat="server" ImageUrl="Delete.png" />
&nbsp;
    

        <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Delete" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                                <p>
    <hr />
                                    &nbsp;<p>
    
                                <asp:Label ID="Label31" runat="server" Font-Size="XX-Large" Text="Signed Up Users" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True" Font-Underline="True"></asp:Label>
                                <p>
    
                                    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataKeyNames="SignupNumber" Width="1401px" AllowSorting="True">
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                        <Columns>
                                            <asp:BoundField DataField="SignupNumber" HeaderText="SignupNumber" InsertVisible="False" ReadOnly="True" SortExpression="SignupNumber" />
                                            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                                            <asp:BoundField DataField="UFirstName" HeaderText="UFirstName" SortExpression="UFirstName" />
                                            <asp:BoundField DataField="USurname" HeaderText="USurname" SortExpression="USurname" />
                                            <asp:BoundField DataField="UBranch" HeaderText="UBranch" SortExpression="UBranch" />
                                            <asp:BoundField DataField="USector" HeaderText="USector" SortExpression="USector" />
                                            <asp:BoundField DataField="UFullAccess" HeaderText="UFullAccess" SortExpression="UFullAccess" />
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Signups]"></asp:SqlDataSource>
                                <p>
    
        <asp:Label ID="StatusS" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="Black" Font-Bold="True"></asp:Label>
    
                                <p>
    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="imgRefresh0" runat="server" Height="71px" ImageUrl="~/Refesh.ico" Width="70px" />
                                &nbsp;<p>
    
        <asp:Label ID="Label29" runat="server" Font-Size="Large" Text="Approve employee signup?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                                    <br />
    
        <asp:Label ID="Label27" runat="server" Font-Size="Large" Text="SignupNumber" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
                        <asp:DropDownList ID="signupNumber" runat="server" DataSourceID="SqlDataSource5" DataTextField="SignupNumber" DataValueField="SignupNumber" Height="24px" Width="221px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Signups]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="AddUser" runat="server" ImageUrl="~/Add.png" Height="84px" Width="84px" />
&nbsp;
    

        <asp:Label ID="Label28" runat="server" Font-Size="Large" Text="Add to Users" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                                    <br />
                                    <br />
    
        <asp:Label ID="Label32" runat="server" Font-Size="Large" Text="Delete a User Signup?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                        <br />
    
        <asp:Label ID="Label33" runat="server" Font-Size="Large" Text="SignupNumber" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
                                    <asp:DropDownList ID="signupDel" runat="server" DataSourceID="SqlDataSource5" DataTextField="SignupNumber" DataValueField="SignupNumber" Height="24px" Width="221px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [SignupNumber] FROM [Signups]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="DelSignup" runat="server" ImageUrl="Delete.png" />
&nbsp;
    

        <asp:Label ID="Label34" runat="server" Font-Size="Large" Text="Delete" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                                </td>
        </tr>
    </table>
    </form>
</body>
</html>
