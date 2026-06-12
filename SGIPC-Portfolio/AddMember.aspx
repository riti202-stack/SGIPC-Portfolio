<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="SGIPC_Portfolio.AddMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2>Add Member</h2>
    <div>
        <label>Name</label>
        <asp:TextBox ID="name" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div>
        <label>Roll</label>
        <asp:TextBox ID="roll" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div>
        <label>TFC_Rating</label>
        <asp:TextBox ID="tfc_rating" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <div>
        <label>CF_Rating</label>
        <asp:TextBox ID="cf_rating" runat="server" CssClass="input"></asp:TextBox>
    </div>

    <asp:Button ID="SaveBtn" runat="server" Text="Save Member" CssClass="btn" OnClick="SaveButton" />
    <a href="Member.aspx">Back To List</a>

    <br />
    <asp:Label ID="Msg" runat="server" CssClass="message"></asp:Label>
</asp:Content>
