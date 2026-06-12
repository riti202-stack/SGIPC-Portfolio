<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SGIPC_Portfolio.index" %>

   <asp:Content ID="Content1"  ContentPlaceHolderID="Head" runat="server">
       <link rel="stylesheet"  type="text/css" href="style/site.css" />
   </asp:Content>

   <asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
       <div class="img">
           <div id="txt-box">
               <p class="txt">System.out.println("KUET SGIPC");</p>
<br />
<p class="txt">Solving The Unsolvable</p>
           </div>

          

       </div>

       <p id="dashboard-btn"><a href="login.aspx">Dashboard for admin</a></p>
       
       <section class="card-section" id="view-contest">
           <p class="heading">Active Contests</p>

           <div class="contest">
           <asp:Repeater ID="rptContests" runat="server">
               <ItemTemplate>
                   
    <div class="card">

         <h3><%#Eval("name") %></h3>
        <p><strong>State:</strong><%# Eval("state") %></p>
        <p><strong>Duration:</strong><%# Eval("Contest_duration") %></p>
        <p><strong>Start Time:</strong><%# Eval("start_time")%></p>
        <p><strong>Remaining:</strong><%# Eval("remaining_time") %></p>

    </div>
    
     

 
               </ItemTemplate>
           </asp:Repeater>
                  </div>

       </section>

       
    
</asp:Content>
