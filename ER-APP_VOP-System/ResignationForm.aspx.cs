using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace ER_APP_VOP_System
{
    public partial class ResignationForm : System.Web.UI.Page
    {
        //Create a connection string to connect to the SQL Server database
        string mycon = DBConnection.ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();
        }

        protected void btnRsave_Click(object sender, EventArgs e)
        {

        }

        private void GridView()
        {
            using (SqlConnection sqlconn = new SqlConnection(mycon))
            {
                sqlconn.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Resignation", mycon);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvResignation.DataSource = dt;
                gvResignation.DataBind();
            }
        }
    }
}