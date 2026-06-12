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

            //if (!IsPostBack)
            //{
            //    WelcomeLabel.Text = "Welcome, " + Convert.ToString(Session["LoggedInUser"]);
            //    LoginTimeLabel.Text = "Session login time: " + Convert.ToString(Session["LoginTime"]);
            //    ReadCookie();
            //}
            

        }

        //private void ReadCookie()
        //{
        //    HttpCookie cookie = Request.Cookies["FavoriteTheme"];
        //    if (cookie != null)
        //    {
        //        CookieMessageLabel.Text = "Current cookie value: " + cookie.Value;
        //    }
        //    else
        //    {
        //        CookieMessageLabel.Text = "No FavoriteTheme cookie found.";
        //    }
        //}

        protected void LogoutButton(object sender, EventArgs e)
        {
            // Clear and kill the authentication session safely
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();

            // Clear the tracking session ID cookie
            if (Request.Cookies["ASP.NET_SessionId"] != null)
            {
                HttpCookie sessionCookie = new HttpCookie("ASP.NET_SessionId", "");
                sessionCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(sessionCookie);
            }

            // Redirect back to login page with successful logout alert
            Response.Redirect("~/login.aspx?logout=1", true);
        }
    }
}