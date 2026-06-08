<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="SGIPC_Portfolio.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/dashboard.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <p class="dashboard"><a href="Member.aspx">See Member Data</a></p>

    <p class="dashboard"><a href="newMember.aspx">See new Member data</a></p>

    <p class="dashboard"><a href="image_data.aspx">See data for images</a></p>

</asp:Content>
