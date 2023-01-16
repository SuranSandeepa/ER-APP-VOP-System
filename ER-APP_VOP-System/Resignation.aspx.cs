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
    public partial class Resignation : System.Web.UI.Page
    {

        //DB Connection
        String mycon = @"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";        


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();   
        }

        protected void btnRSave_Click(object sender, EventArgs e)
        {
            if (txtRDate.Text == string.Empty || txtREPF.Text == string.Empty || txtRName.Text == string.Empty || txtRTeam.Text == string.Empty || txtRLWD.Text == string.Empty || txtRrd.Text == string.Empty || txtRtpd.Text == string.Empty )
            {
                //Alert
                Response.Write("<script>alert('All Fields are Required!');</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Resignation(RDate,REPF,RName,RTeam,RLWD,RResignDate,RTerminationPaymentDate) VALUES('" + txtRDate.Text + "','" + txtREPF.Text + "','" + txtRName.Text + "','" + txtRTeam.Text + "','" + txtRLWD.Text + "','" + txtRrd.Text + "','" + txtRtpd.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                txtRDate.Text = "";
                txtREPF.Text = "";
                txtRName.Text = "";
                txtRTeam.Text = "";
                txtRLWD.Text = "";
                txtRrd.Text = "";
                txtRtpd.Text = "";
                GridView();
            }

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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtRDate.Text = "";
            txtREPF.Text = "";
            txtRLWD.Text = "";
            txtRName.Text = "";
            txtRrd.Text = "";
            txtRTeam.Text = "";
            txtRtpd.Text = "";
        }
    }
}