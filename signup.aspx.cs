using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        string connStr = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string checkUserQuery = "SELECT COUNT(*) FROM Users WHERE Username = @username";
            SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn);
            checkCmd.Parameters.AddWithValue("@username", username);
            int exists = (int)checkCmd.ExecuteScalar();

            if (exists > 0)
            {
                lblMessage.Text = "Username already exists.";
            }
            else
            {
                string insertQuery = "INSERT INTO Users (Username, Password) VALUES (@username, @password)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                insertCmd.Parameters.AddWithValue("@username", username);
                insertCmd.Parameters.AddWithValue("@password", password); // Use hashed password in real apps
                insertCmd.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Signup successful. <a href='login.aspx'>Login here</a>";
            }
        }
    }
}