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
        //DB Connection
        String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSearchFnS_Click(object sender, EventArgs e)
        {
            //Select Query 
            String myquery = "SELECT EPF,Name,Team,Number_Of_Absent_Days,Reason_Category,Factory_And_Shift FROM Database_No_1 where Factory_And_Shift LIKE '" + dwFactoryShift.SelectedItem.Text + "'";

            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            dgvVOPMarkingScreen.DataSource = ds;
            dgvVOPMarkingScreen.DataBind();
            con.Close();
        }

        protected void dgvlinkOnClick(object sender, EventArgs e)
        {

        }

        //Cancel Function
        public void Clear()
        {
            dwUpdateReasonCategory.SelectedValue = "";
        }

        protected void btnCancelReasonCategory_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
  
}