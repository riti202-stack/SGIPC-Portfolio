<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="SGIPC_Portfolio.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Gallery</title>
    <link rel="stylesheet"  type="text/css"href="style/gallery.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <p class="gallery">Gallery & Media</p>
    <div class="photos">
      <div class="p1">
            <asp:Image ID="imgContest" runat="server" CssClass="card-platform-img" AlternateText="Contest Image" />
        
        
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
        <p class="gallery" >Members of SGIPC</p>
        <p class="role">President</p>
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
        <p class="role">Vice-President</p>
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
         <p class="role">General Secratary</p>
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
        <p class="role">Assistant General Secretary</p>
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
        <p class="role">Tresurer</p>
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
         <p class="role">Organizing Secretery</p>
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
        <p class="role">Editorial Manager</p>
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

        <h2 class="role">Other Members</h2>
    <div class="mem-others">
        <asp:Repeater ID="RepeaterMembers" runat="server">
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
