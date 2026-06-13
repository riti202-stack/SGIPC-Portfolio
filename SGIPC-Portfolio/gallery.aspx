<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="SGIPC_Portfolio.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Gallery</title>
    <link rel="stylesheet"  type="text/css"href="style/gallery.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <p>Gallery & Media</p>
    <div class="photos">
      <div class="p1">
            <asp:Image ID="imgContest" runat="server" CssClass="card-platform-img" AlternateText="Contest Image" />
        
        <h3>Specific Contest Card</h3>
        <p>This image was fetched directly by its ID.</p>
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
    <div>
        <p>Members of SGIPC</p>
        <p>President</p>
        <div class="mem">
            
            <asp:Repeater ID="RepeaterPresident" runat="server">
                <ItemTemplate>
                    <div class="mem-card">
                        <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
                          alt='<%# Eval("name") %>' 
                            class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <p>Vice-President</p>
        <div class="mem">
            
            <asp:Repeater ID="RepeaterVicePresident" runat="server">
                <ItemTemplate>
                     <div class="mem-card">
                         <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
                          alt='<%# Eval("name") %>' 
                            class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>

                </ItemTemplate>
            </asp:Repeater>

        </div>
         <p>General Secratary</p>
        <div class="mem">
                        <asp:Repeater ID="RepeaterGS" runat="server">
                <ItemTemplate>
                     <div class="mem-card">
                         <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
                          alt='<%# Eval("name") %>' 
                            class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>

                </ItemTemplate>
            </asp:Repeater>

           
           

        </div>
        <p>Assistant General Secretary</p>
        <div class="mem">
            
                        <asp:Repeater ID="RepeaterAGS" runat="server">
                <ItemTemplate>
                     <div class="mem-card">
                         <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
 alt='<%# Eval("name") %>' 
   class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>

                </ItemTemplate>
            </asp:Repeater>

        </div>
        <p>Tresurer</p>
        <div class="mem">
            
                        <asp:Repeater ID="RepeaterTresurer" runat="server">
                <ItemTemplate>
                     <div class="mem-card">
                         <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
 alt='<%# Eval("name") %>' 
   class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>

                </ItemTemplate>
            </asp:Repeater>

        </div>
         <p>Organizing Secretery</p>
        <div class="mem">
           
                       <asp:Repeater ID="RepeaterOS" runat="server">
                <ItemTemplate>
                     <div class="mem-card">
                         <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
 alt='<%# Eval("name") %>' 
   class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>

                </ItemTemplate>
            </asp:Repeater>

        </div>
        <p>Editorial Manager</p>
        <div class="mem">
                        <asp:Repeater ID="RepeaterEM" runat="server">
                <ItemTemplate>
                     <div class="mem-card">
                         <img src='<%# ResolveUrl("~/image/"+Eval("image").ToString()) %>' 
 alt='<%# Eval("name") %>' 
   class="mem-img" />
                        <h3><%# Eval("name") %></h3>
                        <p><%# Eval("roll") %></p>
                        <p><%# Eval("TFC_rating") %></p>
                        <p><%# Eval("CF_rating") %></p>


</div>

                </ItemTemplate>
            </asp:Repeater>
            

        </div>

    </div>
</asp:Content>
