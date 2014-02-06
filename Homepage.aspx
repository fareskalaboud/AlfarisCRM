<%@ Page Language="VB" Debug = "true" CodeFile="Homepage.aspx.vb" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add a Client</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 49px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 600px;
        }
    </style>
</head>
<body style="background-color:#fce6b8">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-color: #B96C27">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3" style="text-align: center">
                                <asp:Button ID="hdClients" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="#B96C27" Height="38px" Text="List of Clients" Width="184px" />
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
            <tr>
                <td>
                                <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Welcome, " Font-Italic="True" Font-Size="15pt"></asp:Label>
                                &nbsp;<asp:Label ID="lblSession" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Font-Italic="True" Font-Size="15pt"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="text-align: right">&nbsp;<asp:HyperLink ID="lnkHelp" runat="server" ImageUrl="~/Help.png" ImageWidth="75px" NavigateUrl="mailto:fares@alfaris.co?Subject=Alfaris.co">HyperLink</asp:HyperLink>
                                            &nbsp;<br />
                                <asp:Label ID="lblHelp" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Help"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                </table>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="First Name"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientFirst" runat="server" Width="192px"></asp:TextBox>
                                *<br />
                                <br />
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Surname"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientLast" runat="server" Width="192px"></asp:TextBox>
                                *<br />
                                <br />
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Company/Organisation"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientOrg" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Email"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientEmail" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                *<br />
                                <br />
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Telephone"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientTel" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Mobile"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientMob" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                *<br />
                                <br />
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Nationality"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientNat" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Alfursan Number"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientFursan" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Date of Birth"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientDOB" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                &nbsp; Format: DD/MM/YYYY e.g. 25/05/1994<br />
                                <br />
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Passport Number"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientPassp" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Passport Expiry Date"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientExp" runat="server" Width="192px" AutoCompleteType="Disabled"></asp:TextBox>
                                &nbsp; Format: DD/MM/YYYY e.g. 13/01/2017<br />
                                <br />
                                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Notes"></asp:Label>
                                <br />
                                <asp:TextBox ID="clientNotes" runat="server" Width="287px" AutoCompleteType="Disabled" Height="71px" TextMode="MultiLine"></asp:TextBox>
                                <br />
                                <br />
                                *Required<br />
                                <br />
                                <br />
                                <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                <asp:Label ID="Status" runat="server" Font-Bold="True" ForeColor="#B96C27"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="text-align: right">
                                            <br />
&nbsp;&nbsp;
                                            <asp:ImageButton ID="btnAdd" runat="server" Height="111px" ImageUrl="~/Add.ico" Width="113px" />
                                            <br />
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Add Client"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                            <td class="auto-style3" style="text-align: left; direction: ltr;">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" Text="UPDATE (v 1.2.21) - SEPTEMBER 12, 2013"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label23" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="- Email Addresses are now mandatory" Font-Underline="True"></asp:Label>
                                <br />
                                <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="- Users can now enter the nationality of each guest"></asp:Label>
                                <br />
                                <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="- All users can now SORT their client details in the Client List according to user preference."></asp:Label>
                                <br />
                                <asp:Label ID="Label22" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="- Users that do not use Outlook can find a link on the homepage that can take them to their inbox."></asp:Label>
                                <br />
                                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="- Enhanced security."></asp:Label>
                                <br />
                                <asp:Label ID="Label21" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="- Bug fixes"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Cambria" ForeColor="Red" Text="Please do not forget that most of these updates come from suggestions and feedback. Feel free to email me using the top right Help button or email me directly on fares@alfaris.co if you have any questions, suggestions or find any errors or difficulties and I will be happy to help. Thank you!"></asp:Label>
                                <br />
                                <br />
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Alfaris Logo.png" Height="350px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                                <asp:Label ID="Footer" runat="server" Font-Bold="False" ForeColor="#B96C27">Designed &amp; Developed For Alfaris Int&#39;l</asp:Label>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
