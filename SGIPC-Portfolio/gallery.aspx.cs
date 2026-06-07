using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SGIPC_Portfolio
{
    public partial class gallery : System.Web.UI.Page
    {

        private readonly string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!IsPostBack)
        {
            // Fetch the image with ID = 1 when the page loads
            FetchImageById(1);
        }

    }
    private void FetchImageById(int imageId)
    {
        using (SqlConnection conn = new SqlConnection(connString))
        {
            // Query targeted specifically to find one row
            string query = "SELECT img FROM image WHERE id = @id";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", imageId);

                conn.Open();
                object result = cmd.ExecuteScalar(); // ExecuteScalar fetches the single first column value

                if (result != null && result != DBNull.Value)
                {
                    string fullPath = result.ToString();

                    // Convert Windows absolute path (D:\...) safely to relative path logic if needed,
                    // or handle it directly if you stored it as '~/image/p1.png'
                    if (fullPath.Contains("image\\"))
                    {
                        // Extracts "image/p1.png" from the deep disk hierarchy string
                        string relativePart = fullPath.Substring(fullPath.IndexOf("image\\")).Replace("\\", "/");
                        imgContest.ImageUrl = "~/" + relativePart;
                    }
                    else
                    {
                        // Fallback straight mapping if stored cleanly as a web relative path
                        imgContest.ImageUrl = fullPath;
                    }
                }
                else
                {
                    // Fallback placeholder image if ID is missing in database row
                    imgContest.ImageUrl = "~/image/default-contest.png";
                }
            }
        }
    }
}


    }
