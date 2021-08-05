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
        DataTable CallProc(string storedProcedure, List<SqlParameter> parameters)
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
        public bool IsValid(string username, string password)
            => CallProc("usp_IsValid",
                    new List<SqlParameter>
                    {
                        new SqlParameter("@Username", username),
                        new SqlParameter("@Password", password)})
                .Rows.Count == 1;


        //change password
        public bool ChangePassword(int id, string newPassword)
            => int.Parse(CallProc("usp_ChangePassword",
                        new List<SqlParameter>{
                        new SqlParameter("@ID", id),
                        new SqlParameter("@newPassword", newPassword)})
                        .Rows[0]["RowsUpdated"].ToString()) == 1;

    }

    class User : Account { }
    class Admin : Account
    {
        /*void CreateUser(string username, string password, string firstName, string lastName, ____ dob)
        {

        }*/
    }

}


//Question: How does the table and C# side distinguish between the various data privilages for accounts?