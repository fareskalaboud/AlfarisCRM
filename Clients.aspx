<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Clients.aspx.vb" Inherits="Clients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clients</title>
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
                            <td style="text-align: center">
                                <asp:Button ID="hdClients" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="#B96C27" Height="38px" Text="Add a Client" Width="184px" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="hdUsers" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="#B96C27" Height="38px" Text="List of Users" Width="184px" />
                            </td>
                            <td style="text-align: center">
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
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Search by " Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radSurname" runat="server" Font-Names="Gill Sans MT" Text="CSurname" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radMobile" runat="server" Font-Names="Gill Sans MT" Text="CMobile" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radCompany" runat="server" Font-Names="Gill Sans MT" Text="CCompany" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radEmail" runat="server" Font-Names="Gill Sans MT" Text="CEmail" GroupName="searchBy" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radUser" runat="server" Font-Names="Gill Sans MT" Text="CUser" GroupName="searchBy" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/SearchButton.png" Width="50px" />
&nbsp;
    
        <asp:Label ID="SearchErrorLabel" runat="server" Font-Names="Gill Sans MT" Font-Size="Large" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="emailGet" runat="server" Height="75px" ImageUrl="~/Email.png" Width="75px" />
                                <asp:ImageButton ID="emailGetAll" runat="server" Height="75px" ImageUrl="~/Email.png" Width="75px" />
&nbsp;
                                <asp:Label ID="Label26" runat="server" Font-Size="Large" Text="Retrieve All Emails" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                                <br />
                <br />
                                <asp:TextBox ID="emailList" runat="server" Height="144px" ReadOnly="True" TextMode="MultiLine" Width="752px"></asp:TextBox>
                                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ClientNumber" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="1640px" AllowSorting="True">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="ClientNumber" HeaderText="ClientNumber" InsertVisible="False" ReadOnly="True" SortExpression="ClientNumber" />
                        <asp:BoundField DataField="CFirstName" HeaderText="CFirstName" SortExpression="CFirstName" />
                        <asp:BoundField DataField="CSurname" HeaderText="CSurname" SortExpression="CSurname" />
                        <asp:BoundField DataField="CCompany" HeaderText="CCompany" SortExpression="CCompany" />
                        <asp:BoundField DataField="CEmail" HeaderText="CEmail" SortExpression="CEmail" />
                        <asp:BoundField DataField="CTelephone" HeaderText="CTelephone" SortExpression="CTelephone" />
                        <asp:BoundField DataField="CMobile" HeaderText="CMobile" SortExpression="CMobile" />
                        <asp:BoundField DataField="CNationality" HeaderText="CNationality" SortExpression="CNationality" />
                        <asp:BoundField DataField="CAlfursan" HeaderText="CAlfursan" SortExpression="CAlfursan" />
                        <asp:BoundField DataField="CDateOfBirth" HeaderText="CDateOfBirth" SortExpression="CDateOfBirth" />
                        <asp:BoundField DataField="CPassportNumber" HeaderText="CPassportNumber" SortExpression="CPassportNumber" />
                        <asp:BoundField DataField="CPassportExpiryDate" HeaderText="CPassportExpiryDate" SortExpression="CPassportExpiryDate" />
                        <asp:BoundField DataField="CNotes" HeaderText="CNotes" SortExpression="CNotes" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ClientNumber], [CFirstName], [CSurname], [CCompany], [CEmail], [CTelephone], [CMobile], [CNationality], [CAlfursan], [CDateOfBirth], [CPassportNumber], [CPassportExpiryDate], [CNotes] FROM [Clients] WHERE ([CUser] = ?) ORDER BY [CSurname] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblSession" Name="CUser" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ClientNumber" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Width="1660px" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="ClientNumber" HeaderText="ClientNumber" InsertVisible="False" ReadOnly="True" SortExpression="ClientNumber" />
                                        <asp:BoundField DataField="CFirstName" HeaderText="CFirstName" SortExpression="CFirstName" />
                                        <asp:BoundField DataField="CSurname" HeaderText="CSurname" SortExpression="CSurname" />
                                        <asp:BoundField DataField="CCompany" HeaderText="CCompany" SortExpression="CCompany" />
                                        <asp:BoundField DataField="CEmail" HeaderText="CEmail" SortExpression="CEmail" />
                                        <asp:BoundField DataField="CTelephone" HeaderText="CTelephone" SortExpression="CTelephone" />
                                        <asp:BoundField DataField="CMobile" HeaderText="CMobile" SortExpression="CMobile" />
                                        <asp:BoundField DataField="CNationality" HeaderText="CNationality" SortExpression="CNationality" />
                                        <asp:BoundField DataField="CAlfursan" HeaderText="CAlfursan" SortExpression="CAlfursan" />
                                        <asp:BoundField DataField="CDateOfBirth" HeaderText="CDateOfBirth" SortExpression="CDateOfBirth" />
                                        <asp:BoundField DataField="CPassportNumber" HeaderText="CPassportNumber" SortExpression="CPassportNumber" />
                                        <asp:BoundField DataField="CPassportExpiryDate" HeaderText="CPassportExpiryDate" SortExpression="CPassportExpiryDate" />
                                        <asp:BoundField DataField="CNotes" HeaderText="CNotes" SortExpression="CNotes" />
                                        <asp:BoundField DataField="CUser" HeaderText="CUser" SortExpression="CUser" />
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
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Clients] ORDER BY [CUser] DESC"></asp:SqlDataSource>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Status" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="Black" Font-Bold="True"></asp:Label>
    
        <asp:Label ID="ErrorLabel" runat="server" Font-Size="Large" Font-Names="Gill Sans MT" ForeColor="Red" Font-Bold="True"></asp:Label>
                                <br />
                <br />
                <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Edit a Client's Details?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="imgRefresh" runat="server" Height="71px" ImageUrl="~/Refesh.ico" Width="70px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
    
        <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="ClientNumber" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="Field" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="New Value" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
                    <asp:DropDownList ID="editID" runat="server" datasourceid="SqlDataSource4" DataTextField="ClientNumber" DataValueField="ClientNumber" Height="24px" Width="221px">
                    </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ClientNumber] FROM [Clients] WHERE ([CUser] = ?) ORDER BY [ClientNumber]">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblSession" Name="CUser" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="editField" runat="server" Height="23px" Width="221px">
                        <asp:ListItem>CFirstName</asp:ListItem>
                        <asp:ListItem>CSurname</asp:ListItem>
                        <asp:ListItem>CCompany</asp:ListItem>
                        <asp:ListItem>CEmail</asp:ListItem>
                        <asp:ListItem>CTelephone</asp:ListItem>
                        <asp:ListItem>CMobile</asp:ListItem>
                        <asp:ListItem>CNationality</asp:ListItem>
                        <asp:ListItem>CAlfursan</asp:ListItem>
                        <asp:ListItem>CDateOfBirth</asp:ListItem>
                        <asp:ListItem>CPassportNumber</asp:ListItem>
                        <asp:ListItem>CPassportExpiryDate</asp:ListItem>
                        <asp:ListItem>CNotes</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="editValue" runat="server" Height="23px" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="UpdateEntry" runat="server" ImageUrl="Save.png" Height="52px" Width="50px" />
&nbsp;
    
        <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="Save" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                    <br />
                    <br />
    
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Delete a Client?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                    <br />
                    <p>
    
        <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="ClientNumber" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
                        <asp:DropDownList ID="clientID" runat="server" DataSourceID="SqlDataSource4" DataTextField="ClientNumber" DataValueField="ClientNumber" Height="24px" Width="221px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ClientNumber] FROM [Clients]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="DelEntry" runat="server" ImageUrl="Delete.png" />
&nbsp;
    

        <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Delete" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                                <p>
    
        <asp:Label ID="Label28" runat="server" Font-Size="Large" Text="Delete Incomplete Clients?" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True"></asp:Label>
                                <p>
    
                        <asp:ImageButton ID="IncEntry" runat="server" ImageUrl="Trash.png" Height="75px" />
    

        &nbsp;
    

        <asp:Label ID="Label27" runat="server" Font-Size="Large" Text="Delete" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False"></asp:Label>
                        <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

