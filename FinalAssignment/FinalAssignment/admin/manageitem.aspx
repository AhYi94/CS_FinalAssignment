﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="manageitem.aspx.cs" Inherits="FinalAssignment.admin.manageitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Manage Item</h1>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-12 text-right">
                     
                        <a href="manageaddItem.aspx">
                            <button type="button" class="btn btn-primary"> Add Item</button></a>            
                    </div>
                </div>
                <span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="" method="post">
                    <fieldset>
                        <div class="text-center">
                            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

    </div>


</asp:Content>
