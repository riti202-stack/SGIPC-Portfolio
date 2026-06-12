using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGIPC_Portfolio
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SecurityHelper.RequireLogin(this);

            if (!IsPostBack)
            {
                WelcomeLabel.Text = "Welcome, " + Convert.ToString(Session["LoggedInUser"]);
                LoginTimeLabel.Text = "Session login time: " + Convert.ToString(Session["LoginTime"]);
                
            }


        }

        

        

        protected void LogoutButton(object sender, EventArgs e)
        {
            
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();

          
            if (Request.Cookies["ASP.NET_SessionId"] != null)
            {
                HttpCookie sessionCookie = new HttpCookie("ASP.NET_SessionId", "");
                sessionCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(sessionCookie);
            }

           
            Response.Redirect("~/login.aspx?logout=1", true);
        }
    }
}