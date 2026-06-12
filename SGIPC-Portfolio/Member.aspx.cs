using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Dynamic;

namespace SGIPC_Portfolio
{
    public partial class Member : System.Web.UI.Page
    {
        private readonly string conString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadMembers();
            }

        }

        private void LoadMembers()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conString))
                using (SqlDataAdapter da = new SqlDataAdapter("select * from Member order by roll",con))
                {
                    DataTable table = new DataTable();
                    da.Fill(table);
                    memberview.DataSource = table;
                    memberview.DataBind();
                }
            }

            catch(Exception ex)
            {
                MsgLabel.CssClass = "message error";
                MsgLabel.Text = "Database error:" + ex.Message;
            }
        }

        protected void memberview_rowcommand(object sender,GridViewCommandEventArgs e)
        {
            int roll;

            if(!int.TryParse(Convert.ToString(e.CommandArgument),out roll))
            {
                MsgLabel.CssClass = "message error";
                MsgLabel.Text = "Invalid roll";
                return;
            }

            if(e.CommandName=="editRecord")
            {
                Response.Redirect("UpdateMember.aspx?roll=" + roll);
            }

            else if(e.CommandName=="deleteRecord")
            {
                DeleteMember(roll);
                LoadMembers();
            }
        }


        private void DeleteMember(int roll)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conString))

                using (SqlCommand cmd = new SqlCommand("delete from Member where roll=@roll",con))
                {
                    cmd.Parameters.AddWithValue("@roll", roll);
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();
                    MsgLabel.CssClass = rows > 0 ? "message" : "message error";
                    MsgLabel.Text = rows > 0 ? "Member deleted successfully" : "Member was not found";
                }
            }

            catch(Exception ex)
            {
                MsgLabel.CssClass = "message error";
                MsgLabel.Text = "Delete error :" + ex.Message;
            }
        }
    }
}