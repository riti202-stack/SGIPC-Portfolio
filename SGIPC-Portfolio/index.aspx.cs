using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Configuration;

namespace SGIPC_Portfolio
{
    public partial class index : System.Web.UI.Page


    {
        private readonly string cs = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadContests();
            }

        }

        

    private void LoadContests() { 
       
            
                using (SqlConnection con =new SqlConnection(cs))


                using (SqlDataAdapter da = new SqlDataAdapter("select * from Contests",con))

                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                     rptContests.DataSource = dt;
                      

                     rptContests.DataBind();



                }
            }
           

            
        }
    }
