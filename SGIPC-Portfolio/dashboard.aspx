<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="SGIPC_Portfolio.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/dashboard.css" />
    <script type="text/javascript">>
            window.addEventListener('pageshow', function (event) {
                if (event.persisted) {
                    window.location.reload();
                }
            });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="dashboard-container">
    <h2>Dashboard</h2>
    
    <div class="welcome-panel">
        <asp:Label ID="WelcomeLabel" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LoginTimeLabel" runat="server"></asp:Label>
    </div>

       

    <div class="logout-section">
        <asp:Button ID="Button4" runat="server" Text="Log Out" CssClass="btn-logout" OnClick="LogoutButton"/>
    </div>
</div>
    

    <p class="dashboard"><a href="Member.aspx">See Member Data</a></p>

    <p class="dashboard"><a href="newMember.aspx">See new Member data</a></p>

    <p class="dashboard"><a href="image_data.aspx">See data for images</a></p>

    
   
</asp:Content>
