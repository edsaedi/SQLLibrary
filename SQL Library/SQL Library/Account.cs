using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SQL_Library
{

    //public enum AccountTypes
    //{
    //    User,
    //    Admin
    //}

    //class Account
    //{
    //    public AccountTypes AccountTypes { get; }
    //}

    /// <summary>
    /// This is the abstract class that contains all the base functions
    /// </summary>
    abstract class Account
    {

        /*some sort of return type Exec(parameters) */
        public DataTable CallProc(string storedProcedure, List<SqlParameter> parameters)
        {
            using SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Server"].ConnectionString);

            using SqlCommand sqlCommand = new SqlCommand(storedProcedure, sqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            for (int i = 0; i < parameters.Count; i++)
            {
                sqlCommand.Parameters.Add(parameters[i]);
            }

            sqlConnection.Open();

            sqlCommand.ExecuteNonQuery();

            using SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            DataTable data = new DataTable();

            sqlDataAdapter.Fill(data);

            sqlConnection.Close();



            return data;
        }

        //login function
        public Guid? IsValid(string username, string password)
        {
            DataTable table = CallProc("usp_IsValid",
                    new List<SqlParameter>
                    {
                        new SqlParameter("@Username", username),
                        new SqlParameter("@Password", password)});

            if (table.Rows.Count == 0)
            {
                return null;
            }

            // extract the guid from the table
            return Guid.Parse(table.Rows[0]["PublicID"].ToString());
        }
        //  .Rows.Count == 1;


        //change password
        public bool ChangePassword(Guid id, string newPassword)
            => int.Parse(CallProc("usp_ChangePassword",
                        new List<SqlParameter>{
                        new SqlParameter("@ID", id),
                        new SqlParameter("@newPassword", newPassword)})
                        .Rows[0]["RowsUpdated"].ToString()) == 1;

    }

    // GUID

    class User : Account { }
    class Admin : Account
    {
        public bool CreateUser(string username, string password, string firstName, string lastName, DateTime dob, string privilege, Guid idManager)

        {
            try
            {
                return int.Parse(CallProc("usp_AddUser", new List<SqlParameter>
                {
                    new SqlParameter("@Username", username),
                    new SqlParameter("@Password", password),
                    new SqlParameter("@FirstName", firstName),
                    new SqlParameter("@LastName", lastName),
                    new SqlParameter("@DOB", dob),
                    new SqlParameter("@privilege", privilege),
                    new SqlParameter("@idManager", idManager)
                }).Rows[0]["Clearence"].ToString()) == 1;
            }
            catch (SqlException e)
            {
                //Duplicate username
                return false;
            }
        }

    }

}




//Question: How does the table and C# side distinguish between the various data privilages for accounts?