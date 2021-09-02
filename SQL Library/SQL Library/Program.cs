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
            string usernameAdmin = Console.ReadLine();

            Console.WriteLine("Enter in a password");
            string passwordAdmin = Console.ReadLine();

            Guid? id = user.IsValid(usernameAdmin, passwordAdmin);

            if (id == null)
            {

            }
            else
            {

                Admin admin = new Admin();

                Console.WriteLine(id);

                //

                Console.WriteLine("Add info:");
                Console.Write("Username: ");
                string username = Console.ReadLine();
                Console.Write("Password: ");
                string password = Console.ReadLine();
                Console.Write("First Name: ");
                string firstName = Console.ReadLine();
                Console.Write("Last Name: ");
                string lastName = Console.ReadLine();
                Console.Write("DOB: ");
                DateTime dob = DateTime.Parse(Console.ReadLine());
                Console.Write("Privilege: ");
                string privilege = Console.ReadLine();

                admin.CreateUser(username, password, firstName, lastName, dob, privilege, id.Value);

            }
            //Console.WriteLine("Enter in a new password");
            //string newPassword = Console.ReadLine();



            //Console.WriteLine(user.ChangePassword(1, newPassword));
        }
    }
}
