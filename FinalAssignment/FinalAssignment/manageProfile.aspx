<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="manageProfile.aspx.cs" Inherits="FinalAssignment.manageProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Manage Profile</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================login_part Area =================-->
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="login_part_form mx-auto col-6">
                            <div class="login_part_form_iner">


                                <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                                    <div class="col-md-12 form-group p_star">
                                        <p>Name</p>
                                     <asp:TextBox ID="nameInput" runat="server" class="form-control" Type="text"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <p>Email</p>
                                        <asp:TextBox ID="emailInput" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <p>Password</p>
                                        <asp:TextBox ID="passwordInput" runat="server" class="form-control" Type="password"></asp:TextBox>
                                    </div>
                                     <div class="col-md-12 form-group p_star">
                                        <p>Confirm Password</p>
                                        <asp:TextBox ID="confirmPassword" runat="server" class="form-control" Type="password"></asp:TextBox>
                                    </div>
                                  
                                    <div class="col-md-12 form-group">
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
                                    </div>


                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <!--================login_part end =================-->
    </main>
</asp:Content>
