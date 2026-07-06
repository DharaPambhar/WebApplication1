<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    <title></title> 
</head>
<body> 
    <form id="sum" runat="server">
        <div> 
            ENTER NUM 1 
            <asp:TextBox ID="NUM1TEXT" runat="server"></asp:TextBox>

            <br/>
            <br/>
            <br/>
            ENTER NUM 2
            <asp:TextBox ID="NUM2TEXT" runat="server"></asp:TextBox>
            <br/>
            <br/>

        </div>
        <asp:Button ID="Button1" runat="server" BorderColor="Black" OnClick="Button1_Click" Text="SUM" style="width: 53px" />
        
    &nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
    <p>
        .</p>
    <p>
        &nbsp;</p> 
</body>
</html>
