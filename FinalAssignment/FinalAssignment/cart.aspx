<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="FinalAssignment.cart" %>

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
                                <h2>Cart List</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--================Cart Area =================-->
        <section class="cart_area section_padding">
            <div class="container">
                <div class="cart_inner">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="admin/upload/<%#Eval("product_image") %>" alt="" />
                                                    </div>
                                                    <div class="media-body">
                                                        <p><%#Eval("product_name") %></p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>RM <%#Eval("product_price") %></h5>
                                            </td>
                                            <td>
                                                <div class="product_count">
                                                    <h5 type="text"><%#Eval("quantity") %></h5>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>RM <%#Eval("total") %></h5>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <h5>Subtotal</h5>
                                    </td>
                                    <td>
                                        <h5><asp:Label ID="subtotalText" runat="server" Text="Label"></asp:Label></h5>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="checkout_btn_inner float-right">
                            <a class="btn_1 checkout_btn_1" href="#">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
        </section>
        <!--================End Cart Area =================-->
    </main>
</asp:Content>
