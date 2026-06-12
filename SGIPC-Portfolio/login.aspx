<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SGIPC_Portfolio.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/login.css" />
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        
    <div class="login-container">
    <h2>Login</h2>
    
    <div class="form-row">
        <label>Username</label>
        <asp:TextBox ID="Username" runat="server" CssClass="input"></asp:TextBox>
    </div>
    
    <div class="form-row">
        <label>Password</label>
        <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
    </div>
    
    <div class="form-row">
        <asp:CheckBox ID="RememberMe" runat="server" Text=" Remember username in a cookie" />
    </div>
    
    <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn" OnClick="LoginButton" />
    
    <asp:Label ID="Msg" runat="server"></asp:Label>
</div>



</asp:Content>
