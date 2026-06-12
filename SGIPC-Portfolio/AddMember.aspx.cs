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
    public partial class AddMember : System.Web.UI.Page
    {
        private readonly string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void SaveButton(object sender ,EventArgs e)
        {
            if(string.IsNullOrWhiteSpace(name.Text))
            {
                Msg.CssClass = "message error";
                Msg.Text = "Name is required";
                return;
            }

            try
            {
                using(SqlConnection con = new SqlConnection(connString))
                using (SqlCommand cmd = new SqlCommand("Insert into Member (name,roll,TFC_rating,CF_rating) values (@name,@roll,@TFC_Rating,@CF_Rating)",con))
                {
                    cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                    cmd.Parameters.AddWithValue("@roll", roll.Text.Trim());
                    cmd.Parameters.AddWithValue("@TFC_Rating", tfc_rating.Text.Trim());
                    cmd.Parameters.AddWithValue("@CF_Rating", cf_rating.Text.Trim());
                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                name.Text = "";
                roll.Text = "";
                tfc_rating.Text = "";
                cf_rating.Text = "";
                Msg.CssClass = "message";
                Msg.Text = "Members Inserted successfully";
            }

            catch(Exception ex)
            {
                Msg.CssClass = "message error";
                Msg.Text = "Insert error:" + ex.Message;

            }
        }
    }
}