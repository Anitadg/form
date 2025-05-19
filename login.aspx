<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body { font-family: Arial; background: #f0f0f0; padding: 60px; }
        form { background: white; padding: 20px; width: 300px; margin: auto; border-radius: 10px; }
        input { width: 100%; padding: 10px; margin: 5px 0; }
        button { width: 100%; padding: 10px; background: green; color: white; border: none; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>
        <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" required="required"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" Placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <p><a href="signup.aspx">Don't have an account? Sign up</a></p>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
