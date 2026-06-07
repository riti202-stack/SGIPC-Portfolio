<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="joinUs.aspx.cs" Inherits="SGIPC_Portfolio.joinUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/join.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
            <div class="join">
        <h1>Join Us</h1>
<h2>Why Join?</h2>
<ul>
    <li>Elevate your rank within an elite competitive programming community.</li>
    <li>Access structured resource hubs and specialized algorithmic training</li>
    <li>Receive expert guidance through a dedicated mentorship network.</li>
</ul>
    </div>

    <div class="form-container">
        <div>
            <label>Full Name</label>
            <asp:TextBox ID="name" runat="server" CssClass="input"></asp:TextBox>

        </div>

        <div>
            <label>Email</label>
            <asp:TextBox ID="email" runat="server" CssClass="input"></asp:TextBox>

        </div>

        <div>
            <label>
                Department
            </label>
            <asp:TextBox ID="dept" runat="server" CssClass="input"></asp:TextBox>
        </div>
           
           

        <div>
            <label>Phone Number</label>
            <asp:TextBox ID="phone" runat="server" CssClass="input" ></asp:TextBox>
        </div>

        <div>
            <label>Set a Password</label>
            <asp:TextBox ID="password" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
        </div>

        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn" OnClick="SaveBtn"  />
        <br />
        <asp:Label ID="Msg" runat="server" CssClass="message"></asp:Label>


        
    </div>
    </div>
</asp:Content>
