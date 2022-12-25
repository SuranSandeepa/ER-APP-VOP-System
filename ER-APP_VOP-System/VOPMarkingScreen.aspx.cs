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
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Search by Factory & Shift Function
        protected void ShowData()
        {
            //Select Query (Search by Factory_And_Shift LIKE)
            String myquery = "SELECT EPF,Name,Team,Number_Of_Absent_Days,Reason_Category,Factory_And_Shift FROM Database_No_1 where Factory_And_Shift LIKE '" + dwFactoryShift.SelectedItem.Text + "'";

            con = new SqlConnection(mycon);
            cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds);
            dgvVOPMarkingScreen.DataSource = ds;
            dgvVOPMarkingScreen.DataBind();
            con.Close();
        }

        
        //Search button click event
        protected void btnSearchFnS_Click(object sender, EventArgs e)
        {
            ShowData();
        }


        //Clear Function
        public void Clear()
        {
            dwUpdateReasonCategory.SelectedValue = "";
        }

        protected void btnCancelReasonCategory_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void dgvVOPMarkingScreen_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.
            dgvVOPMarkingScreen.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void dgvVOPMarkingScreen_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            dgvVOPMarkingScreen.EditIndex = -1;
            ShowData();
        }

        protected void dgvVOPMarkingScreen_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update
            Label EPF = dgvVOPMarkingScreen.Rows[e.RowIndex].FindControl("lbl_EPF") as Label;
            TextBox reasonCategory = dgvVOPMarkingScreen.Rows[e.RowIndex].FindControl("txtRC") as TextBox;

            con = new SqlConnection(mycon);
            con.Open();

            //Updating the record 
            SqlCommand cmd = new SqlCommand("UPDATE Database_No_1 SET Reason_Category='" + reasonCategory.Text + "' WHERE EPF= '" + EPF.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            dgvVOPMarkingScreen.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
    }
  
}