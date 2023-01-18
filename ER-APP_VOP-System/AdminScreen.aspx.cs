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

    public partial class AdminScreen : System.Web.UI.Page
    {
        //DB Connection
        String mycon = "Data Source=DESKTOP-DCCUTP6\\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();
        }

        protected void btnExcelUpload_Click(object sender, EventArgs e)
        {
            if (ExcelFileUpload.HasFile)
            {
                String date, epf, pn, name, team, classification, lastWorkingDate, noOfAbsentDays, address, reasonCategory, reason, firstVop,
                firstVopStatus, resignTerminationPayment, terminationPaymentStatus, secondVop, secondVopStatus,
                resignation, terminationDate, terminationApproval, terminationStatus, er, vsl, factoryShift, servicePeriod;

                string path = Path.GetFileName(ExcelFileUpload.FileName);

                path = path.Replace(" ", "");
                ExcelFileUpload.SaveAs(Server.MapPath("~/ExcelUpload/") + path);
                String ExcelPath = Server.MapPath("~/ExcelUpload/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    date = dr[0].ToString();
                    epf = dr[1].ToString();
                    pn = dr[2].ToString();
                    name = dr[3].ToString();
                    team = dr[4].ToString();
                    classification = dr[5].ToString();
                    lastWorkingDate = dr[6].ToString();
                    noOfAbsentDays = dr[7].ToString();
                    address = dr[8].ToString();
                    reasonCategory = dr[9].ToString();
                    reason = dr[10].ToString();
                    firstVop = dr[11].ToString();
                    firstVopStatus = dr[12].ToString();
                    resignTerminationPayment = dr[13].ToString();
                    terminationPaymentStatus = dr[14].ToString();
                    secondVop = dr[15].ToString();
                    secondVopStatus = dr[16].ToString();
                    resignation = dr[17].ToString();
                    terminationDate = dr[18].ToString();
                    terminationApproval = dr[19].ToString();
                    terminationStatus = dr[20].ToString();
                    er = dr[21].ToString();
                    vsl = dr[22].ToString();
                    factoryShift = dr[23].ToString();
                    servicePeriod = dr[24].ToString();

                    SaveExcelData(date, epf, pn, name, team, classification, lastWorkingDate, noOfAbsentDays, address, reasonCategory, reason, firstVop, firstVopStatus,
                        resignTerminationPayment, terminationPaymentStatus, secondVop, secondVopStatus, resignation, terminationDate, terminationApproval, terminationStatus,
                        er, vsl, factoryShift, servicePeriod);

                }

                //Alert
                Response.Write("<script>alert('Data Saved Successfully');</script>");

                mycon.Close();

                File.Delete(ExcelPath);

                GridView();
            }
            else
            {
                // Alert to show that no file has been selected
                Response.Write("<script>alert('Please select a file');</script>");

                GridView();
            }
            
        }

        private void SaveExcelData(String date, String epf, String pn, String name, String team, String classification, String lastWorkingDate, String noOfAbsentDays, String address, String reasonCategory, String reason, String firstVop, String firstVopStatus,
                    String resignTerminationPayment, String terminationPaymentStatus, String secondVop, String secondVopStatus, String resignation, String terminationDate, String terminationApproval, String terminationStatus,
                    String er, String vsl, String factoryShift, String servicePeriod)
        {
            String query = "insert into Database_No_1(Date,EPF,PN, Name, Team, Classification, Last_Working_Date, Number_Of_Absent_Days, Address, Reason_Category, Reason, First_VOP, First_VOP_Status, Resign_Termination_Payment, Termination_Payment_Status, Second_VOP, Secod_VOP_Status, Resignation, Termination_Date, Termination_Approval, Termination_Status, ER, VSL, Factory_And_Shift, Service_Period) values('" + date + "','" + epf + "','" + pn + "','" + name + "','" + team + "','" + classification + "','" + lastWorkingDate + "','" + noOfAbsentDays + "','" + address + "','" + reasonCategory + "','" + reason + "','" + firstVop + "','" + firstVopStatus + "','" + resignTerminationPayment + "','" + terminationPaymentStatus + "','" + secondVop + "','" + secondVopStatus + "','" + resignation + "','" + terminationDate + "','" + terminationApproval + "','" + terminationStatus + "','" + er + "','" + vsl + "','" + factoryShift + "','" + servicePeriod + "')";
            //String mycon = "Data Source=DESKTOP-DCCUTP6\\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        private void GridView()
        {
            using (SqlConnection sqlconn = new SqlConnection(mycon))
            {
                sqlconn.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Database_No_1 ORDER BY no DESC", mycon);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dgvExcelUpload.DataSource = dt;
                dgvExcelUpload.DataBind();
            }
        }
    }
}
