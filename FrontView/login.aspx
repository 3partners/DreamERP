<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="FrontView_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

<head>
    <script type="text/javascript">
   $('#test_modal').modal({
        backdrop: true,
        keyboard: true,
        show: false 
    }).css({
        width: '30%',
        'margin-left': function () {
            return -($(this).width() / 2);
        }
    });
</script>
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
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password"></asp:TextBox>                                    
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button runat="server"  id="btnLogin" CssClass="btn btn-lg btn-success btn-block" Text="Login" onclick="btnLogin_Click"/>                                
                                <div class="form-group">                                    
                                    <a type="button" class="btn" style="width:100%;" href="#test_modal" data-toggle="modal">Sign Up!!</a>                                                                        
                                    <asp:HyperLink class="btn" ID="HyperLink3" runat="server" Text ="Forgot Password ?"></asp:HyperLink>                                    
                                </div>                              
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="test_modal" style="left:20%;right:20%;top:20%;bottom:20%;background-color:White">
      <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
        <h3>Register Now</h3>
      </div>
      <div class="form-horizontal">
           <div class="control-group">
            <label for="name" class="control-label"><p class="text-info">Name&nbsp;<i class="icon-star"></i></p></label>
            <div class="controls">
                <input type="text" id="name" placeholder="Enter your name" class="span3">
            </div>
      </div>
      <div class="modal-footer" style="float:left">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-primary">Save Changes</a>
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
     <script src="../Scripts/bootstrap-modal.js"></script>
     
</form>
</body>

</html>

