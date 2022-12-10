
using System;
using System.Collections.Generic;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace ER_APP_VOP_System
{
    public class Connection
    {
        //SqlConnection con = new SqlConnection("Data Source=DESKTOP-DCCUTP6\\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true");
        private SqlConnection _con;
        private SqlCommand _cmd;
        private SqlDataAdapter _da;
        private DataTable _dt;
        
        public Connection()
        {
            _con = new SqlConnection(@"Data Source=DESKTOP-DCCUTP6\SQLEXPRESS; Initial Catalog=MAS_Synergy_HR; Integrated Security=true");
            _con.Open();
        }


    }
}