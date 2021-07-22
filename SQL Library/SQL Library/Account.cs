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
        bool loggedIn = false;
        string username = "";

        /*some sort of return type Exec(parameters) */
        DataTable CallProc(string storedProcedure, List<SqlParameter> parameters)
        {
            using SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Server"].ConnectionString);

            using SqlCommand sqlCommand = new SqlCommand(storedProcedure, sqlConnection);

            for (int i = 0; i < parameters.Count; i++)
            {
                sqlCommand.Parameters.Add(parameters[i]);
            }

            sqlCommand.ExecuteNonQuery();

            using SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            DataTable data = new DataTable();

            sqlDataAdapter.Fill(data);

            return data;
        }

        //login function
        bool IsValid(string username, string password)
        {
            //SQL code
            return false;
        }

        //change password
        bool ChangePassword(string newPassword)
        {
            if(!loggedIn)
            {
                return false;
            }

            CallProc("usp_ChangePassword", new List<SqlParameter>
            {
                new SqlParameter("@Username", username),
                new SqlParameter("@NewPassword", newPassword)
            });

            return false;
        }
    }

    class User : Account { }
    class Admin : Account 
    { 
        /*void CreateUser(string username, string password, string firstName, string lastName, ____ dob)
        {

        }*/
    }

}


//TODO: make a helper function