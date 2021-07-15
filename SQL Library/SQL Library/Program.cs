using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SQL_Library
{
    class Program
    {
        static void Main(string[] args)
        {
            using SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Server"].ConnectionString);

            using SqlCommand sqlCommand = new SqlCommand("usp_", sqlConnection);

            sqlCommand.Parameters.Add(new SqlParameter());

            sqlCommand.ExecuteNonQuery();

            using SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            DataTable data = new DataTable();

            sqlDataAdapter.Fill(data);

            string name = (string)data.Rows[0]["First Name"];


            Console.WriteLine("Hello World!");
        }
    }
}
