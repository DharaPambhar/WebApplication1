<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="standarddemo_control.aspx.cs" Inherits="WebApplication1.standarddemo_control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            PAMBHAR DHARA<br />
            <br />
            <br />
            CALENDER CONTROL DEMO</div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <p>
            RADIO BUTTON </p>
        <p>
            <asp:RadioButton ID="MALE_btn" runat="server" Text="MALE" />
        </p>
        <p>
            <asp:RadioButton ID="FEMALE_btn" runat="server" Text="FEMALE" />
        </p>
        <p>
            <asp:Button ID="SUBMIT" runat="server" OnClick="SUBMIT_Click" Text="SUBMIT" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            CHECKBOX</p>
        <p>
            <asp:CheckBox ID="C" runat="server" Text="C" />
        </p>
        <p>
            <asp:CheckBox ID="C_SHARP" runat="server" Text="C#" />
        </p>
        <p>
            <asp:CheckBox ID="JAVA" runat="server" Text="JAVA" />
        </p>
        <p>
            <asp:Button ID="FEES" runat="server" OnClick="FEES_Click" Text="TOTAL COURSE FEES" />
        </p>
    <p>
        &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            LISTBOX</p>
        <p>
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                <asp:ListItem>MORBI</asp:ListItem>
                <asp:ListItem>RAJKOT</asp:ListItem>
                <asp:ListItem>SURAT</asp:ListItem>
                <asp:ListItem>AMD</asp:ListItem>
                <asp:ListItem>JAMNAGAR</asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            PAMBHAR DHARA C.</p>
        <p>
            &nbsp;</p>
        <p>
            ADROTATOR CONTROL</p>
        <p>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Height="200px" Width="300px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            PAMBHAR DHARA</p>
        <p>
            VALIDATION CONTROL&nbsp; </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="NAME"></asp:Label>
&nbsp;:
            <asp:TextBox ID="NAMETXT" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NAMETXT" ErrorMessage="NAME IS REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="PASSWORD"></asp:Label>
&nbsp;:
            <asp:TextBox ID="PWDTXT" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PWDTXT" ErrorMessage="PASSWORD*" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="CONFIRM PAASWORD"></asp:Label>
&nbsp;:
            <asp:TextBox ID="CNFMPSWTXT" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CNFMPSWTXT" ErrorMessage="REENTER PASSWORD" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PWDTXT" ControlToValidate="CNFMPSWTXT" ErrorMessage="PASSWORD DOES NOT MATCH" ForeColor="Red"></asp:CompareValidator>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="AGE"></asp:Label>
&nbsp;:
            <asp:TextBox ID="AGETXT" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AGETXT" ErrorMessage="AGE IS REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AGETXT" ErrorMessage="AGE IS REQUIRED" ForeColor="Red" MaximumValue="45" MinimumValue="18"></asp:RangeValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="EMAIL"></asp:Label>
&nbsp;:
            <asp:TextBox ID="EMAILTXT" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EMAILTXT" ErrorMessage="EMAIL IS REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EMAILTXT" ErrorMessage="EMAIL INVALID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;</p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="CONTACT NO"></asp:Label>
&nbsp;:
            <asp:TextBox ID="CONTACTTXT" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CONTACTTXT" ErrorMessage="CONTACT IS REQUIRED" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="CONTACTTXT" ErrorMessage="INVALID" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="REGISTER" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            PAMBHAR DHARA</p>
        <p>
            &nbsp;</p>
        <p>
            FILE UPLOAD CONTROL</p>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
            <asp:Button ID="BUTTON" runat="server" OnClick="BUTTON_Click" Text="UPLOAD" CausesValidation="False"/>
        </p>
        <p>
            <asp:Label ID="Labell" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
