﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class FrontView_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string password = WebConfigurationManager.AppSettings["superadmin"];
        if (txtPassword.Text.ToString().Trim().Equals(password.Trim()) && txtUser.Text.ToString().Trim().Equals("superadmin"))
        {
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}