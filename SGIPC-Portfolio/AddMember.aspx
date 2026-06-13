<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="SGIPC_Portfolio.AddMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/addmember.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="form-container">
    <h2>Add Member</h2>
    <div class="form-group">
        <label>Name</label>
        <asp:TextBox ID="name" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>Roll</label>
        <asp:TextBox ID="roll" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>TFC_Rating</label>
        <asp:TextBox ID="tfc_rating" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div class="form-group">
        <label>CF_Rating</label>
        <asp:TextBox ID="cf_rating" runat="server" CssClass="input"></asp:TextBox>
    </div>



    <asp:Button ID="SaveBtn" runat="server" Text="Save Member" CssClass="btn" OnClick="SaveButton" />
    <a href="Member.aspx" class="back-link">Back To List</a>
        </div>

    <br />
    <asp:Label ID="Msg" runat="server" CssClass="message"></asp:Label>
</asp:Content>
