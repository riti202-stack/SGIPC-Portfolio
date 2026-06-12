using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace SGIPC_Portfolio
{
    
    public partial class UpdateMember : System.Web.UI.Page
    {
        private readonly string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadMember();
            }

        }

        private void LoadMember()
        {
            int memRoll;
            if (!int.TryParse(Request.QueryString["roll"],out memRoll))
            { 
                Response.Redirect("Member.aspx");
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connString))

                using (SqlCommand cmd = new SqlCommand ("select * from Member where roll = @roll",con))
                {
                    cmd.Parameters.AddWithValue("@roll", memRoll);
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.Read())
                        {
                            MemberHidden.Value = reader["roll"].ToString();
                            name.Text = reader["name"].ToString();
                            roll.Text = reader["roll"].ToString();
                            tfc_rating.Text = reader["TFC_rating"].ToString();
                            cf_rating.Text = reader["CF_rating"].ToString();


                        }
                        else
                        {
                            Response.Redirect("Member.aspx");
                        }
                    }

                }
            }

            catch(Exception ex)
            {
                Msg.CssClass = "message error";
                Msg.Text = "Load error :" + ex.Message;
            }


        }

        protected void UpdateButton(object sender,EventArgs e)
        {
            int OldRoll;
            if(!int.TryParse(MemberHidden.Value,out OldRoll))
            {

                Msg.CssClass = "message error";
                Msg.Text = "Invalid Member roll";
                return;
            }

            if(string.IsNullOrWhiteSpace(name.Text))
            {
                Msg.CssClass = "message error";
                Msg.Text = "Name is required";
                return;
            }

            try
            {
                using(SqlConnection con = new SqlConnection(connString))
                using(SqlCommand cmd = new SqlCommand("UPDATE Member SET name=@name,roll=@roll,TFC_rating=@TFC_rating,CF_rating=@CF_rating WHERE roll=@OldRoll",con))
                {
                    cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                    cmd.Parameters.AddWithValue("@roll", roll.Text.Trim());
                    cmd.Parameters.AddWithValue("@TFC_rating", tfc_rating.Text.Trim());
                    cmd.Parameters.AddWithValue("@CF_rating", cf_rating.Text.Trim());
                    cmd.Parameters.AddWithValue("@OldRoll", OldRoll);
                    con.Open();
                    cmd.ExecuteNonQuery();

                }

                Response.Redirect("Member.aspx");
            }

            catch(Exception ex)
            {
                Msg.CssClass = "message error";
                Msg.Text = "Update error:" + ex.Message;
            }




                

            
        }
    }
}