<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateApplication.aspx.cs" Inherits="WebApplication1.UpdateApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container { width: 100%; max-width: 650px; margin: 0 auto; font-family: "Times New Roman", serif; }
        .form-title { text-align: center; font-weight: bold; font-size: 20px; margin-bottom: 20px; }
        .form-row { display: flex; margin-bottom: 10px; align-items: center; }
        .form-label { width: 150px; font-size: 16px; }
        .form-input { width: 200px; padding: 2px; }
        .btn-action { margin-left: 10px; padding: 3px 10px; cursor: pointer; }
        .btn-submit { margin-left: 150px; padding: 5px 15px; margin-top: 10px; cursor:pointer; width:150px; }
        .success-msg { color: green; font-weight: bold; font-size:18px; margin-left: 150px; margin-top: 5px; display:block; text-align:center; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <div class="form-title">UPDATE LOAN APPLICATION</div>

        <!-- Search Row -->
        <div class="form-row">
            <div class="form-label">Loan No :</div>
            <asp:TextBox ID="txtSearchLoanNo" runat="server" CssClass="form-input"></asp:TextBox>
            <asp:Button ID="btnGetDetails" runat="server" Text="Get Loan Details" CssClass="btn-action" OnClick="btnGetDetails_Click" />
        </div>

        <div class="form-row">
            <div class="form-label">Saving Account No :</div>
            <asp:TextBox ID="txtAccNo" runat="server" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-row">
            <div class="form-label">Account Holder Name :</div>
            <!-- Holder Name is disabled because it's not in the Loan table -->
            <asp:TextBox ID="txtHolderName" runat="server" CssClass="form-input" Enabled="false"></asp:TextBox>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Category :</div>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-input">
                <asp:ListItem Text="Property Loan" Value="Property Loan"></asp:ListItem>
                <asp:ListItem Text="Personal Loan" Value="Personal Loan"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Type :</div>
            <asp:DropDownList ID="ddlType" runat="server" CssClass="form-input">
                <asp:ListItem Text="Education Loan" Value="Education Loan"></asp:ListItem>
                <asp:ListItem Text="Home Loan" Value="Home Loan"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Issue Date :</div>
            <asp:TextBox ID="txtIssueDate" runat="server" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Amount :</div>
            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-row">
            <div class="form-label">Current Address :</div>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-row">
            <div class="form-label">Loan Remarks :</div>
            <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-row">
            <asp:Button ID="btnUpdate" runat="server" Text="Update Application" CssClass="btn-submit" OnClick="btnUpdate_Click" />
        </div>

        <asp:Label ID="lblUpdateMessage" runat="server" CssClass="success-msg" Text="Record Updated Successfully" Visible="false"></asp:Label>
    </div>
</asp:Content>
