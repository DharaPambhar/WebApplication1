<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="WebApplication1.ViewAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid-container { width: 100%; overflow-x: auto; font-family: "Times New Roman", serif; }
        .grid-view { width: 100%; border-collapse: collapse; margin-top: 10px; font-size: 14px; }
        .grid-view th { background-color: #f2f2f2; border: 1px solid #ccc; padding: 5px; text-align: left; }
        .grid-view td { border: 1px solid #ccc; padding: 5px; }
        .total-row { margin-top: 15px; text-align: center; font-size: 18px; font-weight: bold; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-container">
        <!-- AHI GRIDVIEW CHE -->
        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AutoGenerateColumns="True" GridLines="Both">
        </asp:GridView>

        <div class="total-row">
            <asp:Label ID="lblTotalText" runat="server" Text="Total No. of Entries: "></asp:Label>
            <!-- AHI TOTAL LABEL CHE -->
            <asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label>
            <br />
            <asp:Button ID="btnGetTotal" runat="server" Text="Get Total" OnClick="btnGetTotal_Click" style="padding: 5px 15px; margin-top: 10px; cursor:pointer;" />
        </div>
    </div>
</asp:Content>

