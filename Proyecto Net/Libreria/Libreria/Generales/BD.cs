using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using LibTelefonica.Generales;

namespace Libreria.Generales
{
    public class BD
    {
        String stConec = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
        //String stConec = "DRIVER={MySQL ODBC 3.51 Driver};SERVER=10.20.64.5;Port=3307;DATABASE=telefonica;UID=telefonica;PWD=macarena";
        SqlConnection cnn;
        private static BD bd= null;
        private BD()
        {
            Log.rutea("Constructor 1" );
            cnn = new SqlConnection(stConec);
            Log.rutea("New1" );
            open();
            Log.rutea("Open");
        }
        private void open()
        {
            cnn.Open();
            SqlCommand cmd = new SqlCommand("", cnn);
        }
        private static void createInstace()
        {
            if (bd == null) bd = new BD();
        }

        public static BD getInstance()
        {
            createInstace();
            return bd;
        }

        public DataTable sqlSelect(String sql)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(sql, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }
        public DataTable sqlSelect(int maxreg,String sql)
        {
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(sql, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds,0,maxreg, "x1");
            return ds.Tables[0];
        }
        public Boolean sqlCommand(String sql)
        {
            SqlCommand cmd = new SqlCommand(sql, cnn);
            int x = cmd.ExecuteNonQuery();
            if (x == 0)
                return false;
            else return true;
        }

    }
    
}
