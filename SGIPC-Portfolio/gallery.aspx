<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="SGIPC_Portfolio.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Gallery</title>
    <link rel="stylesheet"  type="text/css"href="style/gallery.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <p>Gallery & Media</p>
    <div class="photos">
        <div class="p1">
            <img src="image/p1.png" style="height:600px; width:100%" />
</div>
        <div class="sub-photo">
            <div class="p2">
    <img src="../image/p2.png" style="height:300px; width:100%" />
</div>
            <div class="p3">
                <img src="../image/p3.jpg" style="height:300px; width:100%" />
            </div>
        </div>

    </div>
</asp:Content>
