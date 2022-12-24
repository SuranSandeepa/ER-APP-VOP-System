using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace ER_APP_VOP_System
{
    public partial class VOPManaging : System.Web.UI.Page
    {

        //DB Connection
        String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchRC_Click(object sender, EventArgs e)
        {
            //Select Query 
            String myquery = "SELECT EPF,Name,Team,Number_Of_Absent_Days,Reason_Category,First_VOP_Status,Termination_Payment_Status,Secod_VOP_Status FROM Database_No_1 where Reason_Category LIKE '" + dwRC.SelectedItem.Text + "'";

            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            dgvVOPManagingScreen.DataSource = ds;
            dgvVOPManagingScreen.DataBind();
            con.Close();
        }
    }
}