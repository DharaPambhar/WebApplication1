<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Login</title>
    <style>
        body {
            font-family: "Times New Roman", serif;
            font-size: 14px;
        }

        .task-title {
            font-family: Arial, sans-serif;
            font-size: 16px;
            font-weight: bold;
            margin: 20px 0 25px 26px;
        }

        .login-box {
            width: 300px;
            margin: 0 auto;
        }s

        .login-title {
            text-align: center;
            font-size: 16px;
            margin-bottom: 18px;
        }

        .login-table td {
            padding: 2px;
        }

        .login-table input[type=text],
        .login-table input[type=password] {
            width: 142px;
            height: 17px;
            box-sizing: border-box;
        }

        .button-row {
            padding-left: 80px;
        }

        .status {
            display: block;
            margin-top: 8px;
        }
        .auto-style1 {
            padding-left: 80px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

       

        <div class="login-box">
            <h3 class="login-title">User Login</h3>

            <table class="login-table">
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail"
                            runat="server"
                            MaxLength="50">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword"
                            runat="server"
                            TextMode="Password">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Button ID="btnSignIn"
                            runat="server"
                            Text="Sign In"
                            OnClick="btnSignIn_Click" />
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage"
                            runat="server"
                            CssClass="status">
                        </asp:Label>
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>

