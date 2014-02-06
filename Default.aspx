<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Alfaris Guests</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 221px;
        }
    </style>
</head>
<body style="background-color:#fbe7b4;text-align:center">
    <form id="form1" runat="server">
        <p style="text-align: centre">
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Underline="True" ImageHeight="50px" ImageUrl="~/WebLogin.png" NavigateUrl="http://email.alfaris.co">For users who do not use Outlook, click here to sign into your emails.For users who do not use Outlook, click here to sign into your emails.For users who do not use Outlook, click here to sign into your emails.</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Underline="True" NavigateUrl="http://email.alfaris.co">For users who do not use Outlook, click here to sign into your emails.</asp:HyperLink>
        </p>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Alfaris Logo.png" Width="500px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Names="Brush Script MT" Font-Size="30pt" ForeColor="#B96C27" Text="Guests Database"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Signup.aspx">If you are an employee and do not have an account, please click here.</asp:HyperLink>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Label ID="lblUser" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Username"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtUser" runat="server" Width="192px"></asp:TextBox>
                    &nbsp;<br />
                    <asp:Label ID="lblPass" runat="server" Font-Bold="True" Font-Names="Cambria" ForeColor="#B96C27" Text="Password"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="192px"></asp:TextBox>
                    &nbsp;<br />
                    <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    &nbsp;<br />
                    <asp:Button ID="btnLogin" runat="server" BackColor="#B96C27" Font-Bold="True" Font-Names="Cambria" Font-Size="15pt" ForeColor="#fbe7b4" Height="55px" style="margin-top: 0px" Text="Log In" Width="98px" />
                    <br />
                    <asp:Label ID="lblMaint" runat="server" Font-Names="Britannic Bold" Font-Size="30pt" ForeColor="Red" Text="System Offline for Maintenance"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblOffline" runat="server" Font-Names="Britannic Bold" Font-Size="20pt" ForeColor="Red" Text="Offline until  10:00pm, 20th of July (Jeddah Time)"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblContact" runat="server" Font-Names="Britannic Bold" Font-Size="20pt" ForeColor="Red" Text="For any questions please contact fares@alfaris.co"></asp:Label>
                </td>
                <td class="auto-style2">
                    <br />
                </td>
            </tr>
        </table>
    
        <br />
<script type="text/javascript">
    sa_client = "7508f17c22a6a951fc26cbccd2dad81c";
    sa_code = "c40bdb296aca134d7e7f0000190cda67";
    sa_protocol = ("https:" == document.location.protocol) ? "https" : "http";
    sa_pline = "0";
    sa_maxads = "2";
    sa_bgcolor = "B96C27";
    sa_bordercolor = "FBE7B4";
    sa_superbordercolor = "FFFFFF";
    sa_linkcolor = "00A2B5";
    sa_desccolor = "000000";
    sa_urlcolor = "00836D";
    sa_b = "1";
    sa_format = "banner_728x90_2";
    sa_width = "728";
    sa_height = "90";
    sa_location = "0";
    sa_radius = "4";
    sa_borderwidth = "1";
    sa_font = "1";
    document.write(unescape("%3cscript type='text/javascript' src='" + sa_protocol + "://sa.entireweb.com/sense.js'%3e%3c/script%3e"));
</script>


    </div>
    </form>
</body>
</html>
