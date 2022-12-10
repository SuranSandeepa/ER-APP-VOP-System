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
        private Connection connection;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExcelUpload_Click(object sender, EventArgs e)
        {
            int id;
            String name;
            int age;

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
                // Response.Write("<br/>"+dr[0].ToString());
                id = Convert.ToInt32(dr[0].ToString());
                name = dr[1].ToString();
                age = Convert.ToInt32(dr[2].ToString());

                SaveExcelData(id, name, age);

            }

            //Alert
            Response.Write("<script>alert('Data Saved Successfully');</script>");

            // Label4.Text = "Data Has Been Updated Successfully";
            mycon.Close();

            File.Delete(ExcelPath);
        }

        private void SaveExcelData(int id, String name, int age)
        {           
            String query = "insert into testTable(id,name,age) values(" + id + ",'" + name + "','" + age + "')";
            String mycon = "Data Source=DESKTOP-DCCUTP6\\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}
