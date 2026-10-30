
using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class RemoveApplication : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dhara\\source\\repos\\WebApplication1\\App_Data\\HDFC-Loans.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // GET DETAILS BUTTON CLICK
        protected void btnGetDetails_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            if (string.IsNullOrWhiteSpace(txtSearchLoanNo.Text)) return;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Loan WHERE Id = @LoanNo";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@LoanNo", txtSearchLoanNo.Text);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        txtAccNo.Text = reader["AccountNo"].ToString();
                        txtHolderName.Text = "N/A (Not in Loan Table)";
                        ddlCategory.SelectedValue = reader["LoanCategory"].ToString();
                        ddlType.SelectedValue = reader["LoanType"].ToString();
                        txtIssueDate.Text = reader["IssueDate"].ToString();
                        txtAmount.Text = reader["Amount"].ToString();
                        txtAddress.Text = reader["CurrentAddress"].ToString();
                        txtRemarks.Text = reader["LoanRemarks"].ToString();
                    }
                    else
                    {
                        lblMessage.Visible = true;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Loan No not found!";
                    }
                    con.Close();
                }
            }
        }

        // DISCARD/DELETE BUTTON CLICK
        protected void btnDiscard_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = false;

            if (string.IsNullOrWhiteSpace(txtSearchLoanNo.Text))
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please enter Loan No to discard.";
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Loan WHERE LoanNo = @LoanNo";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@LoanNo", txtSearchLoanNo.Text);

                    try
                    {
                        con.Open();
                        int rows = cmd.ExecuteNonQuery();
                        con.Close();

                        if (rows > 0)
                        {
                            lblMessage.Visible = true;
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Record Removed Successfully";

                            // Clear fields
                            txtAccNo.Text = "";
                            txtHolderName.Text = "";
                            txtIssueDate.Text = "";
                            txtAmount.Text = "";
                            txtAddress.Text = "";
                            txtRemarks.Text = "";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Visible = true;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}
