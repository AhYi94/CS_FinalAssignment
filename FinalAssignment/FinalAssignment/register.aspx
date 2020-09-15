<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FinalAssignment.register" %>
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
                                <h2>Register</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================login_part Area =================-->
        <section class="login_part section_padding ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12 col-md-12" >
                        <div class="login_part_form mx-auto col-6">
                            <div class="login_part_form_iner">
                                <h3>Register</h3>
                                <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                                    <div class="col-md-12 form-group p_star">
                                          <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                     <asp:TextBox ID="password" runat="server" class="form-control" Type="password" placeholder="Password"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                     <asp:TextBox ID="cpassword" runat="server" class="form-control" Type="password" placeholder="Confirm Password"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                     <asp:TextBox ID="name" runat="server" class="form-control" Type="text" placeholder="Name"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group">               
                                        <asp:Button class="btn_3" ID="Button1" runat="server" Text="Submit" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================login_part end =================-->
    </main>
</asp:Content>
