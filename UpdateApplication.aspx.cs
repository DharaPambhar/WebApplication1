
using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class UpdateApplication : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dhara\\source\\repos\\WebApplication1\\App_Data\\HDFC-Loans.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // GET DETAILS BUTTON CLICK
        protected void btnGetDetails_Click(object sender, EventArgs e)
        {
            lblUpdateMessage.Visible = false;
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
                        txtHolderName.Text = "N/A (Not in Loan Table)"; // Table ma nathi
                        ddlCategory.SelectedValue = reader["LoanCategory"].ToString();
                        ddlType.SelectedValue = reader["LoanType"].ToString();
                        txtIssueDate.Text = reader["IssueDate"].ToString();
                        txtAmount.Text = reader["Amount"].ToString();
                        txtAddress.Text = reader["CurrentAddress"].ToString();
                        txtRemarks.Text = reader["LoanRemarks"].ToString();
                    }
                    else
                    {
                        lblUpdateMessage.Visible = true;
                        lblUpdateMessage.ForeColor = System.Drawing.Color.Red;
                        lblUpdateMessage.Text = "Loan No not found!";
                    }
                    con.Close();
                }
            }
        }

        // UPDATE BUTTON CLICK
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblUpdateMessage.Visible = false;

            if (string.IsNullOrWhiteSpace(txtSearchLoanNo.Text))
            {
                lblUpdateMessage.Visible = true;
                lblUpdateMessage.ForeColor = System.Drawing.Color.Red;
                lblUpdateMessage.Text = "Please enter Loan No to update.";
                return;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"UPDATE Loan SET 
                                AccountNo = @AccNo, 
                                LoanCategory = @Category, 
                                LoanType = @Type, 
                                IssueDate = @Date, 
                                Amount = @Amount, 
                                CurrentAddress = @Address, 
                                LoanRemarks = @Remarks 
                                WHERE LoanNo = @LoanNo";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@AccNo", txtAccNo.Text);
                    cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
                    cmd.Parameters.AddWithValue("@Type", ddlType.SelectedValue);
                    cmd.Parameters.AddWithValue("@Date", txtIssueDate.Text);
                    cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@Remarks", txtRemarks.Text);
                    cmd.Parameters.AddWithValue("@LoanNo", txtSearchLoanNo.Text);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        lblUpdateMessage.Visible = true;
                        lblUpdateMessage.ForeColor = System.Drawing.Color.Green;
                        lblUpdateMessage.Text = "Record Updated Successfully";
                    }
                    catch (Exception ex)
                    {
                        lblUpdateMessage.Visible = true;
                        lblUpdateMessage.ForeColor = System.Drawing.Color.Red;
                        lblUpdateMessage.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}

