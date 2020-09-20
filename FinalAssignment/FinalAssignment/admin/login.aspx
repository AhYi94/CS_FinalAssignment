<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalAssignment.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/logo.png" rel="icon">
    <title>Timezone Admin - Login</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <body class="bg-gradient-login">
            <!-- Login Content -->
            <div class="container-login">
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-lg-12 col-md-9">
                        <div class="card shadow-sm my-5">
                            <div class="card-body p-0">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="login-form">
                                            <div class="text-center">
                                                <h1 class="h4 text-gray-900 mb-4">Login</h1>
                                            </div>
                                            <form class="user">
                                                <div class="form-group">                                                
                                                    <asp:TextBox ID="email" runat="server" placeholder="Enter Email Address"  class="form-control" aria-describedby="emailHelp"></asp:TextBox>
                                                </div>
                                                <div class="form-group">                                              
                                                    <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" type="password"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
                                                        <input type="checkbox" class="custom-control-input" id="customCheck">                                                      
                                                    </div>
                                                </div>
                                                <div class="form-group">                                               
                                                    <asp:Button ID="loginBtn" runat="server" Text="Login"  class="btn btn-primary btn-block" OnClick="login_Click" />
                                                </div>
          
                                            </form>
                                           
                                            <div class="text-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Login Content -->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
            <script src="js/ruang-admin.min.js"></script>
        </body>
    </form>
</body>
</html>
