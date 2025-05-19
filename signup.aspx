<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <style>
        body { font-family: Arial; background: #f0f0f0; padding: 50px; }
        form { background: white; padding: 20px; width: 300px; margin: auto; border-radius: 10px; }
        input { width: 100%; padding: 10px; margin: 5px 0; }
        button { width: 100%; padding: 10px; background: green; color: white; border: none; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Signup</h2>
        <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" required="required"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" Placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
        <asp:Button ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" />
        <p><a href="login.aspx">Already have an account? Login</a></p>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
