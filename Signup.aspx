<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Signup.aspx.vb" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
            width: 600px;
        }
        .auto-style3 {
            height: 26px;
        }
        </style>
</head>
<body style="background-color:#fbe7b4">
    <form id="form1" runat="server">
    <div>
    
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Names="Brush Script MT" Font-Size="30pt" ForeColor="#B96C27" Text="Employee Signup"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="First Name"></asp:Label>
                                <br />
                                <asp:TextBox ID="empFirst" runat="server" Width="192px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Surname"></asp:Label>
                                <br />
                                <asp:TextBox ID="empLast" runat="server" Width="192px"></asp:TextBox>
                                &nbsp;<br />
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Branch"></asp:Label>
                                <br />
                                <asp:DropDownList ID="empBranch" runat="server" Height="25px" Width="192px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Dammam</asp:ListItem>
                                    <asp:ListItem>Jeddah - Nakheel Centre</asp:ListItem>
                                    <asp:ListItem>Jeddah - Sari St.</asp:ListItem>
                                    <asp:ListItem>Jeddah - Sultan/Batterjee</asp:ListItem>
                                    <asp:ListItem>Makah</asp:ListItem>
                                    <asp:ListItem>Riyadh</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;<br />
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Password"></asp:Label>
                                <br />
                                <asp:TextBox ID="empPass1" runat="server" Width="192px" TextMode="Password"></asp:TextBox>
                                &nbsp;<br />
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Verify Password"></asp:Label>
                                <br />
                                <asp:TextBox ID="empPass2" runat="server" Width="192px" TextMode="Password"></asp:TextBox>
                                &nbsp;<br />
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Sector"></asp:Label>
                                <br />
                                <asp:DropDownList ID="empSector" runat="server" Height="25px" Width="192px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Travel</asp:ListItem>
                                    <asp:ListItem>Tourism</asp:ListItem>
                                    <asp:ListItem>Travel &amp; Tourism</asp:ListItem>
                                    <asp:ListItem>Education</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;<br />
                                <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                <asp:Label ID="Status" runat="server" Font-Bold="True" ForeColor="#B96C27"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;<asp:Button ID="btnLogin" runat="server" BackColor="#B96C27" Font-Bold="True" Font-Names="Cambria" Font-Size="15pt" ForeColor="#fbe7b4" Height="46px" style="margin-top: 0px" Text="Submit" Width="98px" />
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                            <td class="auto-style3" style="text-align: center">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Alfaris Logo.png" Height="400px" />
                                <br />
                                <asp:ImageButton ID="imgbtnBack" runat="server" Height="131px" ImageUrl="~/Back.png" Width="131px" />
                                <br />
                                <br />
                                <asp:Label ID="lblBack" runat="server" Font-Bold="True" ForeColor="#B96C27">Back to Login Page</asp:Label>
                            </td>
                        </tr>
                    </table>
    
    </div>
    </form>
</body>
</html>
