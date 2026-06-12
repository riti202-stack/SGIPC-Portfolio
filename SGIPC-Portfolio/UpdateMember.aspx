<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateMember.aspx.cs" Inherits="SGIPC_Portfolio.UpdateMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


    <h2>Update Member</h2>
    <asp:HiddenField ID="MemberHidden" runat="server" />
    <div class="form-row">
        <label>Name</label>
        <asp:TextBox ID="name" runat="server" CssClass="input"></asp:TextBox>

    </div>
    <div class="form-row">
    <label>Roll</label>
    <asp:TextBox ID="roll" runat="server" CssClass="input"></asp:TextBox>

</div>

    <div class="form-row">
    <label>TFC_Rating</label>
    <asp:TextBox ID="tfc_rating" runat="server" CssClass="input"></asp:TextBox>

</div>

    <div class="form-row">
    <label>CF_rating</label>
    <asp:TextBox ID="cf_rating" runat="server" CssClass="input"></asp:TextBox>

</div>

    <asp:Button ID="UpdateBtn" runat="server" Text="Update Student" CssClass="btn" OnClick="UpdateButton" />
<a  href="Member">Back to List</a>

    <br />
    <asp:Label ID="Msg" runat="server" CssClass="message"></asp:Label>











</asp:Content>
