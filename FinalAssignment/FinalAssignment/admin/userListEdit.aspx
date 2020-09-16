<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="userListEdit.aspx.cs" Inherits="FinalAssignment.admin.userListEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Edit User</h1>
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">


        <div class="panel panel-default">
            <div class="panel-heading">
                <span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="" method="post">
                    <fieldset>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="name">Name</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Type your Full name..."></asp:TextBox>
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label" for="email">Email</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Type your Email..."></asp:TextBox>
                                <br />
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-2 control-label" for="message">Password</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Type your Password..."></asp:TextBox>
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-6">
                                    <a href="userList.aspx">
                                        <button type="button" class="btn btn-primary">Back</button></a>
                                </div>
                                <div class="col-3 text-right">
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
