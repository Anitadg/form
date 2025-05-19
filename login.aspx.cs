using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        string connStr = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string query = "SELECT COUNT(*) FROM Users WHERE Username = @username AND Password = @password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password); // Hash in real apps

            int result = (int)cmd.ExecuteScalar();
            if (result > 0)
            {
                Session["users"] = username;
                //lblMessage.ForeColor = System.Drawing.Color.Green;
                //lblMessage.Text = "Login successful. Welcome " + username;
                // Response.Redirect("home.aspx"); // Optional redirect
                // Redirect to home.aspx
                Response.Redirect("index.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }
    }
}
