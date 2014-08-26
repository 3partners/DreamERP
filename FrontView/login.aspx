﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="FrontView_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta httSB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../Styles/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../Styles/plugins/metisSB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../Styles/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../Styles/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../Styles/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<form runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtUser"  TextMode="SingleLine"></asp:TextBox>
                                    <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password"></asp:TextBox>
                                    <%--<input class="form-control" placeholder="Password" name="password" type="password" value="">--%>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button runat="server"  id="btnLogin" 
                                    CssClass="btn btn-lg btn-success btn-block" Text="Login" 
                                    onclick="btnLogin_Click"/>
                                <!--<a href="Dashboard.aspx" class="btn btn-lg btn-success btn-block">Login</a>-->
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="../Scripts/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../Scripts/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../Scripts/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../Scripts/sb-admin-2.js"></script>
</form>
</body>

</html>

