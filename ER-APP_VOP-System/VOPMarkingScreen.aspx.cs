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
    public partial class VOPMarkingScreen : System.Web.UI.Page
    {
        //private Connection con = new Connection();
        //private SqlCommand cmd;
        //private SqlDataAdapter da;
        //private DataTable dt;
        //private string sql;

        //string connectionString = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";

        protected void Page_Load(object sender, EventArgs e)
        {
            //using (SqlConnection sqlCon = new SqlConnection(connectionString))
            //{
            //    sqlCon.Open();
            //    SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Database_No_1", sqlCon);
            //    DataTable dtbl = new DataTable();
            //    sqlDa.Fill(dtbl);
            //    gvDatabaseTable1.DataSource = dtbl;
            //    gvDatabaseTable1.DataBind();
            //}


            if (!IsPostBack)
            {
                String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";
                String myquery = "SELECT EPF,Name,Team,Number_Of_Absent_Days,Reason_Category,Factory_And_Shift FROM Database_No_1";
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
        }


        protected void btnSearchFnS_Click(object sender, EventArgs e)
        {
            //    //Connection
            //    String mycon = "Data Source=DESKTOP-DCCUTP6\\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";

            //    //Select Query 
            //    String myquery = "Select EPF,Name,Team,Number_Of_Absent_Days,Reason_Category from Database_No_1 where Factory_And_Shift = " + dwFactoryShift.SelectedItem.Text;

            //    SqlConnection con = new SqlConnection(mycon);
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.CommandText = myquery;
            //    cmd.Connection = con;
            //    SqlDataAdapter da = new SqlDataAdapter();
            //    da.SelectCommand = cmd;
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
            //    dgvVOPMarkingScreen.DataSource = ds;
            //    dgvVOPMarkingScreen.DataBind();
            //    con.Close();
            //}

            String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";
            String myquery = "SELECT EPF,Name,Team,Number_Of_Absent_Days,Reason_Category,Factory_And_Shift FROM Database_No_1 where Factory_And_Shift =" + dwFactoryShift.SelectedItem.Text.Trim();
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}