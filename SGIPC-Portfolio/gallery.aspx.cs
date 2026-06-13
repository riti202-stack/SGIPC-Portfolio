using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGIPC_Portfolio
{
    public partial class gallery : System.Web.UI.Page
    {

        private readonly string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!IsPostBack)
        {
          
            FetchImageById(1);
            BindExecuteTeam();
        }

    }
    private void FetchImageById(int imageId)
    {
        using (SqlConnection conn = new SqlConnection(connString))
        {
           
            string query = "SELECT img FROM image WHERE id = @id";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", imageId);

                conn.Open();
                object result = cmd.ExecuteScalar(); 

                if (result != null && result != DBNull.Value)
                {
                    string fullPath = result.ToString();

                    
                    if (fullPath.Contains("image\\"))
                    {
                        
                        string relativePart = fullPath.Substring(fullPath.IndexOf("image\\")).Replace("\\", "/");
                        imgContest.ImageUrl = "~/" + relativePart;
                    }
                    else
                    {
                        
                        imgContest.ImageUrl = fullPath;
                    }
                }
                else
                {
                    
                    imgContest.ImageUrl = "~/image/default-contest.png";
                }
            }
        }
    }

        private void BindExecuteTeam()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();

                string queryPresident = "Select name,roll,TFC_rating,CF_rating,image from Member Where roll = '2007086'";
                BindRepeater(RepeaterPresident, queryPresident, conn);

                string queryVP = "SELECT name, roll, TFC_rating,CF_rating,image from Member Where roll = '2007016'";
                BindRepeater(RepeaterVicePresident, queryVP, conn);

                string queryGS = "SELECT name, roll, TFC_rating,CF_rating,image from Member Where roll = '2007102'";
                BindRepeater(RepeaterGS, queryGS, conn);

                string queryAGS = "SELECT name, roll, TFC_rating,CF_rating,image from Member Where roll = '2107002'";
                BindRepeater(RepeaterAGS, queryAGS, conn);

                string queryTresurer = "SELECT name, roll, TFC_rating,CF_rating,image from Member Where roll = '2207043'";
                BindRepeater(RepeaterTresurer, queryTresurer, conn);

                string queryOS = "SELECT name, roll, TFC_rating,CF_rating,image from Member Where roll = '2007068'";
                BindRepeater(RepeaterOS, queryOS, conn);

                string queryEM = "SELECT name, roll, TFC_rating,CF_rating,image from Member Where roll = '2007044'";
                BindRepeater(RepeaterEM, queryEM, conn);

                string queryOthers = "SELECT name,roll,TFC_rating,CF_rating,image FROM Member WHERE roll NOT IN ('2007086', '2007016','2007102','2007002','2207043','2007068','2007044')";
                BindRepeater(RepeaterMembers, queryOthers, conn);
            }
        }

        private void BindRepeater(System.Web.UI.WebControls.Repeater repeater,string SqlQuery,SqlConnection conn)
        {
            using (SqlCommand cmd = new SqlCommand(SqlQuery, conn))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    repeater.DataSource = dt;
                    repeater.DataBind();
                }
            }

        }

        
        }
        }



    
