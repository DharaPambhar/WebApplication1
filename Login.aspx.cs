
using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dhara\\source\\repos\\WebApplication1\\App_Data\\HDFC-Loans.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Users (UserEmail, [Password]) VALUES (@UserEmail, @Password)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@UserEmail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                con.Open();

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Sign In Successful');</script>");
            }
        }
    }
}
