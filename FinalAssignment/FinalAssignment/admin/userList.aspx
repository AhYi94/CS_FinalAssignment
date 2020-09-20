<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="userList.aspx.cs" Inherits="FinalAssignment.admin.userList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User List</h1>

    	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="panel panel-default">
					<div class="panel-body">
						<form class="form-horizontal" action="" method="post">
							<fieldset>
								<div class="text-center">
                                <asp:Panel ID="Panel" runat="server"></asp:Panel>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>	
</asp:Content>
