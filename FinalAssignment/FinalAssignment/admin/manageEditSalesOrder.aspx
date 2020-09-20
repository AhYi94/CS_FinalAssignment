<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manageEditSalesOrder.aspx.cs" Inherits="FinalAssignment.admin.manageEditSalesOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Edit Sales Order</h1>
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="panel panel-default">
            <div class="panel-heading">
                <span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span>
            </div>
            <div class="row">
                <div class="col-12">

                    <label class="control-label" for="message">Status : </label>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="col-6">
                        <asp:ListItem Enabled="true" Value="Paid" Text="Paid"></asp:ListItem>
                        <asp:ListItem Enabled="true" Value="Unpaid" Text="Unpaid"></asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <a href="manageViewSalesOrder.aspx">
                        <button type="button" class="btn btn-primary">Back</button></a>
                </div>
                <div class="col-3 text-right">
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" OnClick="LinkButton1_Click">Submit</asp:LinkButton>
                </div>

            </div>

        </div>

    </div>

</asp:Content>
