<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manageItem.aspx.cs" Inherits="FinalAssignment.admin.manageItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="row">
            <ol class="breadcrumb">
                <li><a href="adminViewProduct.aspx">
                    <em class="fa fa-home"></em>
                </a></li>
                <li class="active">Add Product</li>
            </ol>
        </div>
        <!--/.row-->

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add Item</h1>
            </div>
        </div>
        <!--/.row-->

        <div class="panel panel-default">
            <div class="panel-heading">
                <span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="" method="post">
                    <fieldset>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="name">Item Name</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Type your product name..."></asp:TextBox>
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label" for="email">Item Price</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="price" runat="server" class="form-control" placeholder="Type your product price..."></asp:TextBox>
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label" for="message">Item Description</label>
                            <div class="col-md-9">
                                <textarea id="description" rows="5" name="description" class="form-control" runat="server" placeholder="Type your product description..."></textarea>
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label" for="message">Insert Item Image</label>
                            <div class="col-md-9">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <br />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-11 widget-right">
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>


    <script>
        window.onload = function () {
            var chart1 = document.getElementById("line-chart").getContext("2d");
            window.myLine = new Chart(chart1).Line(lineChartData, {
                responsive: true,
                scaleLineColor: "rgba(0,0,0,.2)",
                scaleGridLineColor: "rgba(0,0,0,.05)",
                scaleFontColor: "#c5c7cc"
            });
        };
    </script>







</asp:Content>
