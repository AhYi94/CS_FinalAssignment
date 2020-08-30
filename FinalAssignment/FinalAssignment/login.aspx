<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalAssignment.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-5 mx-auto text-center">
                <h1>Login</h1>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-2 ml-auto">
                <h3>Username :</h3>
            </div>
            <div class="col-5 text-left">
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-2 ml-auto">
                <h3>Password :</h3>
            </div>
            <div class="col-5 text-left">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </div>
        </div> 
        <br />
        <div class="row">
             <div class="col-2 ml-auto">
                  </div>
            <div class="col-5 text-left">
                <asp:Button ID="submitLogin" runat="server" Text="Login" OnClick="submitLogina" />
            </div>
        </div>
     
    </div>
    
</asp:Content>
