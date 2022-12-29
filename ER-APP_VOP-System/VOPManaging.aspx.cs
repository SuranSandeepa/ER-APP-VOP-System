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
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Search by Reason Category Function
        protected void ShowData()
        {
            //Select Query 
            String myquery = "SELECT no,EPF,Name,Team,Number_Of_Absent_Days,Reason_Category,First_VOP_Status,Termination_Payment_Status,Secod_VOP_Status FROM Database_No_1 where Reason_Category LIKE '" + dwRC.SelectedItem.Text + "'";

            con = new SqlConnection(mycon);
            cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds);
            dgvVOPManagingScreen.DataSource = ds;
            dgvVOPManagingScreen.DataBind();
            con.Close();
        }

        //Search button click event
        protected void btnSearchRC_Click(object sender, EventArgs e)
        {
            ShowData();
        }

        protected void dgvVOPManagingScreen_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.
            dgvVOPManagingScreen.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void dgvVOPManagingScreen_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            dgvVOPManagingScreen.EditIndex = -1;
            ShowData();
        }

        protected void dgvVOPManagingScreen_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update
            Label lblNO = dgvVOPManagingScreen.Rows[e.RowIndex].FindControl("lblNO") as Label;
            DropDownList ddFVOPS = dgvVOPManagingScreen.Rows[e.RowIndex].FindControl("ddFVOPS") as DropDownList;
            DropDownList ddTPS = dgvVOPManagingScreen.Rows[e.RowIndex].FindControl("ddTPS") as DropDownList;
            DropDownList ddSVOPS = dgvVOPManagingScreen.Rows[e.RowIndex].FindControl("ddSVOPS") as DropDownList;

            con = new SqlConnection(mycon);
            con.Open();

            //Updating the record 
            SqlCommand cmd = new SqlCommand("UPDATE Database_No_1 SET First_VOP_Status='" + ddFVOPS.SelectedValue + "',Termination_Payment_Status='" + ddTPS.SelectedValue + "',Secod_VOP_Status='" + ddSVOPS.SelectedValue + "'  WHERE no= '" + lblNO.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            dgvVOPManagingScreen.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
    }
}