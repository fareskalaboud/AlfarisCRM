<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Confirm.aspx.vb" Inherits="Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: center; background-color: #fbe7b4">
    <form id="form1" runat="server">
    <div style="">
    
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Alfaris Logo.png" Width="500px" />
                            <br />
        <br />
                                <asp:Label ID="lblBack0" runat="server" Font-Bold="True" ForeColor="#B96C27">Thank you. Your details have been submitted, will be reviewed and approved by the administrator as soon as possible. Please try logging in within 1-2 days.</asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label30" runat="server" Font-Size="Medium" Text="Note:" Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="True" Font-Underline="True"></asp:Label>
                    &nbsp;<asp:Label ID="Label31" runat="server" Font-Size="Medium" Text="Your username will be your full name with no space in between. For example, if your name is Ahmed Ali, your username will be AhmedAli." Font-Names="Gill Sans MT" ForeColor="#B96C27" Font-Bold="False" Font-Underline="False"></asp:Label>
                                <br />
        <br />
        <br />
        <asp:ImageButton ID="imgbtnBack" runat="server" Height="100px" ImageUrl="~/Back.png" Width="100px" />
        <br />
        <br />
                                <asp:Label ID="lblBack" runat="server" Font-Bold="True" ForeColor="#B96C27">Back to Login Page</asp:Label>
    
    </div>
    </form>
</body>
</html>
