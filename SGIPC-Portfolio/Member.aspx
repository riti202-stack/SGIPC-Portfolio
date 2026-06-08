<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="SGIPC_Portfolio.Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/Member.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <asp:Label ID="MsgLabel" runat="server" CssClass="message"></asp:Label>
     <asp:GridView ID="memberview" runat="server" CssClass="table" AutoGenarateColumns="false" OnRowCommand="memberview_rowcommand">

         <Columns>

             <asp:BoundField DataField="name" HeaderText="Name" />
             <asp:BoundField DataField="roll" HeaderText="Roll" />
             <asp:BoundField DataField="TFC_rating" HeaderText="TFC_Rating" />
             <asp:BoundField DataField="CF_rating" HeaderText="CF_Max_Rating" />


             <asp:TemplateField HeaderText="Actions">
                 <ItemTemplate>
                     <asp:LinkButton ID="edit" runat="server" CommandName="editRecord" CommandArgument='<%# Eval("roll") %>'>Update</asp:LinkButton>
                     &nbsp;|&nbsp;
                     <asp:LinkButton ID="delete" runat="server" CommandName="deleteRecord" CommandArgument='<%# Eval("roll") %>' OnClientClick="return confirm('Are you sure to delete this member?');">Delete</asp:LinkButton>
                 </ItemTemplate>




             </asp:TemplateField>







         </Columns>










     </asp:GridView>
    
</asp:Content>
