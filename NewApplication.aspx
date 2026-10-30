<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="NewApplication.aspx.cs" Inherits="WebApplication1.NewApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container { width: 100%; max-width: 650px; margin: 0 auto; font-family: "Times New Roman", serif; }
        .form-title { text-align: center; font-weight: bold; font-size: 20px; margin-bottom: 20px; }
        .form-row { display: flex; margin-bottom: 10px; align-items: flex-start; }
        .form-label { width: 150px; font-size: 16px; padding-top: 2px;}
        .form-input { width: 200px; padding: 2px; }
        .form-error { color: red; margin-left: 10px; font-size: 15px; }
        .btn-submit { margin-left: 150px; padding: 5px 15px; margin-top: 10px; cursor:pointer; width:150px; }
        .success-msg { color: green; font-weight: bold; font-size:18px; margin-left: 150px; margin-top: 5px; display:block;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <div class="form-title">NEW LOAN APPLICATION</div>

        <div class="form-row">
            <div class="form-label">Saving Account No :</div>
            <asp:TextBox ID="txtSavingAccNo" runat="server" CssClass="form-input"></asp:TextBox>
            <asp:Label ID="lblAccNoError" runat="server" CssClass="form-error" Text="Account No is required" Visible="false"></asp:Label>
        </div>

        <div class="form-row">
            <div class="form-label">Account Holder Name :</div>
            <asp:TextBox ID="txtHolderName" runat="server" CssClass="form-input"></asp:TextBox>
            <asp:Label ID="lblNameError" runat="server" CssClass="form-error" Text="Holder name is required" Visible="false"></asp:Label>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Category :</div>
            <asp:DropDownList ID="ddlLoanCategory" runat="server" CssClass="form-input">
                <asp:ListItem Text="Property Loan" Value="Property Loan"></asp:ListItem>
                <asp:ListItem Text="Personal Loan" Value="Personal Loan"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Type :</div>
            <asp:DropDownList ID="ddlLoanType" runat="server" CssClass="form-input">
                <asp:ListItem Text="Education Loan" Value="Education Loan"></asp:ListItem>
                <asp:ListItem Text="Home Loan" Value="Home Loan"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Issue Date :</div>
            <asp:TextBox ID="txtIssueDate" runat="server" TextMode="Date" CssClass="form-input"></asp:TextBox>
            <asp:Label ID="lblDateError" runat="server" CssClass="form-error" Text="Issue Date is required" Visible="false"></asp:Label>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Amount :</div>
            <asp:TextBox ID="txtLoanAmount" runat="server" CssClass="form-input"></asp:TextBox>
            <asp:Label ID="lblAmountError" runat="server" CssClass="form-error" Text="Amount must be within 50000 to 2000000.Amount is required" Visible="false"></asp:Label>
        </div>

        <div class="form-row">
            <div class="form-label">Current Address :</div>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-input"></asp:TextBox>
            <asp:Label ID="lblAddressError" runat="server" CssClass="form-error" Text="Address is required" Visible="false"></asp:Label>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Remarks :</div>
            <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-input"></asp:TextBox>
            <asp:Label ID="lblRemarksError" runat="server" CssClass="form-error" Text="Remarks is required" Visible="false"></asp:Label>
        </div>

        <div class="form-row">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" CssClass="btn-submit" OnClick="btnSubmit_Click" />
        </div>

        <asp:Label ID="lblSuccessMessage" runat="server" CssClass="success-msg" Text="Record Inserted Successfully" Visible="false"></asp:Label>
    </div>
</asp:Content>
