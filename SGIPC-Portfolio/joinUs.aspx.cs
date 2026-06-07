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
    public partial class joinUs : System.Web.UI.Page
    {

        private readonly string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveBtn(object sender,EventArgs e)
        {
            if(string.IsNullOrWhiteSpace(name.Text))
            {
                Msg.CssClass = "message error";
                Msg.Text = "Name is required";
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand("insert into newMember(name,email,department,phone,password) values (@name,@email,@Department,@PhoneNumber,@Password)",con))
                {
                    cmd.Parameters.AddWithValue("@name", name.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                    cmd.Parameters.AddWithValue("@Department", dept.Text.Trim());
                    cmd.Parameters.AddWithValue("@PhoneNumber", phone.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                    con.Open();
                    cmd.ExecuteNonQuery();



                }

                name.Text = "";
                email.Text = "";
                dept.Text = "";
                phone.Text = "";
                Msg.CssClass = "message";
                Msg.Text = "You have submitted successfully";
            }

            catch(Exception ex)
            {
                Msg.CssClass = "message error";
                Msg.Text = "Insert error :" + ex.Message;

            }
        }
    }
}