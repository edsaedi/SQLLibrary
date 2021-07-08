using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SQL_Library
{
    class Program
    {
        static void Main(string[] args)
        {
            using SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Server"].ConnectionString);

            using SqlCommand sqlCommand = new SqlCommand("usp_", sqlConnection);

            sqlCommand.Parameters.Add(new SqlParameter())

            using SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            sqlDataAdapter.Fill()


            Console.WriteLine("Hello World!");
        }
    }
}
