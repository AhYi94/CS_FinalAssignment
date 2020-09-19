<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manageaddItem.aspx.cs" Inherits="FinalAssignment.admin.manageItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add Item</h1>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span>
            </div>
            <div class="panel-body">

                <fieldset>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="name">Item Name</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Type your item name..."></asp:TextBox>
                            <br />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label" for="email">Item Price</label>
                        <div class="col-md-9">
                            <asp:TextBox ID="price" runat="server" class="form-control" placeholder="Type your item price..."></asp:TextBox>
                            <br />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label" for="message">Item Description</label>
                        <div class="col-md-9">
                            <textarea id="description" rows="5" name="description" class="form-control" runat="server" placeholder="Type your item description..."></textarea>
                            <br />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label" for="message">Insert Item Image</label>
                        <div class="col-md-9">
                            <asp:FileUpload ID="FileUpload" runat="server" />
                            <br />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-6">
                                <a href="manageitem.aspx">
                                    <button type="button" class="btn btn-primary">Back</button></a>
                            </div>
                            <div class="col-3 text-right">                         
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" OnClick="Button1_Click">ADD</asp:LinkButton>                     
                            </div>
                        </div>
                    </div>
                </fieldset>

            </div>
        </div>
    </div>

</asp:Content>
