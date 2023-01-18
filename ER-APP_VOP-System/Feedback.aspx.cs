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
    public partial class Feedback : System.Web.UI.Page
    {

        //DB Connection
        String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();
        }

        protected void btnFSave_Click(object sender, EventArgs e)
        {
            if (txtFQ1.Text == string.Empty || txtFQ2.Text == string.Empty || txtFQ3.Text == string.Empty)
            {
                //Alert
                Response.Write("<script>alert('All Fields are Required!');</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Feedback(Fdate,Fq1,Fq2,Fq3) VALUES('" + DateTime.Now + "','" + txtFQ1.Text + "','" + txtFQ2.Text + "','" + txtFQ3.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                txtFQ1.Text = "";
                txtFQ2.Text = "";
                txtFQ3.Text = "";

                GridView();
            }
        }

        private void GridView()
        {
            using (SqlConnection sqlconn = new SqlConnection(mycon))
            {
                sqlconn.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Feedback", mycon);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvFeedback.DataSource = dt;
                gvFeedback.DataBind();
            }
        }
    }
}