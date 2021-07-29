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
            //using SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Server"].ConnectionString);

            //using SqlCommand sqlCommand = new SqlCommand("usp_", sqlConnection);

            //sqlCommand.CommandType = CommandType.StoredProcedure;

            //sqlCommand.Parameters.Add(new SqlParameter());

            //sqlCommand.ExecuteNonQuery();

            //using SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            //DataTable data = new DataTable();

            //sqlDataAdapter.Fill(data);

            //string name = (string)data.Rows[0]["First Name"];


            //Console.WriteLine("Hello World!");

            User user = new User();

            Console.WriteLine("Enter in a username");
            string username = Console.ReadLine();

            Console.WriteLine("Enter in a password");
            string password = Console.ReadLine();

            Console.WriteLine(user.IsValid(username, password));

            Console.WriteLine("Enter in a new password");
            string newPassword = Console.ReadLine();

            Console.WriteLine(user.ChangePassword(1, newPassword));
        }
    }
}
