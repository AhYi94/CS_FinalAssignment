<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FinalAssignment.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <!-- TopBar -->
        <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
         
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown no-arrow">
                <img class="img-profile rounded-circle" src="img/boy.png" style="max-width: 60px">
                 <asp:Label ID="adminusernameSession"  style="color:white;" runat="server" Text="Label"></asp:Label>
            </li>
          </ul>
        </nav>

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>      
          </div>
        <!---Container Fluid-->
      </div>
</asp:Content>
