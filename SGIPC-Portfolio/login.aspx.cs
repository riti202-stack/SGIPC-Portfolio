using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGIPC_Portfolio
{
    public partial class login : System.Web.UI.Page
    {
        private readonly string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SecurityHelper.PreventBrowserCache(this);

            if(!IsPostBack)
            {
                if (Request.QueryString["msg"] == "login_required")
                {
                    Msg.CssClass = "message error";
                    Msg.Text = "Please login before opening the dashboard";
                }

                else if (Request.QueryString["logout"] == "1")
                {
                    Msg.Text = "You have logged out succesfully";
                }

                HttpCookie savedUser = Request.Cookies["RememberedUsername"];

                if(savedUser != null)
                {
                    Username.Text = savedUser.Value;
                    RememberMe.Checked = true;
                }

                if (Session["loggedInUser"] != null)
                {
                    Response.Redirect("~/dashboard.aspx");
                }
            }


        }

        protected void LoginButton(object sender,EventArgs e)
        {
            string username = Username.Text.Trim();
            string Password = password.Text.Trim();

            if(IsValidUser(username,Password))
            {
                Session["LoggedInUser"] = username;
                Session["LoginTime"] = DateTime.Now;


                if(RememberMe.Checked)
                {
                    HttpCookie cookie = new HttpCookie("RememberedUsername", username);
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }

                else
                {
                    HttpCookie cookie = new HttpCookie("RememberedUsername", "");
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                }

                Response.Redirect("~/dashboard.aspx");


            }

            else
            {
                Msg.CssClass = "message error";
                Msg.Text = "Invalid username or password";
            }
        }

        private bool IsValidUser(string username,string password)
        {
            using(SqlConnection con = new SqlConnection(connString))
            using (SqlCommand cmd = new SqlCommand("Select Count(*) from Users Where Username=@Username and Password = @Password",con))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                return count == 1;
            }
        }
    }
}