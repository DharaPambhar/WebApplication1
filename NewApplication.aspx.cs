using System;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class NewApplication : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dhara\\source\\repos\\WebApplication1\\App_Data\\HDFC-Loans.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblAccNoError.Visible = false;
            lblNameError.Visible = false;
            lblDateError.Visible = false;
            lblAmountError.Visible = false;
            lblAddressError.Visible = false;
            lblRemarksError.Visible = false;
            lblSuccessMessage.Visible = false;

            bool isValid = true;

            // 1. VALIDATIONS
            // Account No have STRING che (kem ke database ma varchar karyu che)
            if (string.IsNullOrWhiteSpace(txtSavingAccNo.Text))
            {
                lblAccNoError.Visible = true;
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(txtHolderName.Text))
            {
                lblNameError.Visible = true;
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(txtIssueDate.Text))
            {
                lblDateError.Visible = true;
                isValid = false;
            }

            // Amount Validation 
            decimal loanAmount = 0;
            if (string.IsNullOrWhiteSpace(txtLoanAmount.Text) || !decimal.TryParse(txtLoanAmount.Text, out loanAmount))
            {
                lblAmountError.Visible = true;
                isValid = false;
            }
            else if (loanAmount < 50000 || loanAmount > 2000000)
            {
                lblAmountError.Visible = true;
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(txtAddress.Text))
            {
                lblAddressError.Visible = true;
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(txtRemarks.Text))
            {
                lblRemarksError.Visible = true;
                isValid = false;
            }

            // 2. Database Logic
            if (isValid)
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    SqlTransaction transaction = con.BeginTransaction();

                    try
                    {
                        // STEP A: Account table ma insert
                        string queryAccount = @"IF NOT EXISTS (SELECT 1 FROM Account WHERE SavingActNo = @AccNo)
                                                BEGIN
                                                    INSERT INTO Account (SavingActNo, ActHolderName) 
                                                    VALUES (@AccNo, @HolderName)
                                                END";

                        using (SqlCommand cmdAcc = new SqlCommand(queryAccount, con, transaction))
                        {
                            // Ahi @AccNo ne TextBox ma thi direct string tarike laiye chiye
                            cmdAcc.Parameters.AddWithValue("@AccNo", txtSavingAccNo.Text);
                            cmdAcc.Parameters.AddWithValue("@HolderName", txtHolderName.Text);
                            cmdAcc.ExecuteNonQuery();
                        }

                        // STEP B: Loan table ma insert
                        string queryLoan = @"INSERT INTO Loan 
                                            (AccountNo, ActHolderName, LoanCategory, LoanType, IssueDate, Amount, CurrentAddress, LoanRemarks) 
                                            VALUES 
                                            (@AccNo, @HolderName, @Category, @Type, @Date, @Amount, @Address, @Remarks)";

                        using (SqlCommand cmdLoan = new SqlCommand(queryLoan, con, transaction))
                        {
                            cmdLoan.Parameters.AddWithValue("@AccNo", txtSavingAccNo.Text);
                            cmdLoan.Parameters.AddWithValue("@HolderName", txtHolderName.Text);
                            cmdLoan.Parameters.AddWithValue("@Category", ddlLoanCategory.SelectedValue);
                            cmdLoan.Parameters.AddWithValue("@Type", ddlLoanType.SelectedValue);
                            cmdLoan.Parameters.AddWithValue("@Date", txtIssueDate.Text);
                            cmdLoan.Parameters.AddWithValue("@Amount", loanAmount);
                            cmdLoan.Parameters.AddWithValue("@Address", txtAddress.Text);
                            cmdLoan.Parameters.AddWithValue("@Remarks", txtRemarks.Text);
                            cmdLoan.ExecuteNonQuery();
                        }

                        transaction.Commit();

                        lblSuccessMessage.Visible = true;
                        lblSuccessMessage.ForeColor = System.Drawing.Color.Green;
                        lblSuccessMessage.Text = "Record Inserted Successfully!";

                        // Clear fields
                        txtSavingAccNo.Text = "";
                        txtHolderName.Text = "";
                        txtIssueDate.Text = "";
                        txtLoanAmount.Text = "";
                        txtAddress.Text = "";
                        txtRemarks.Text = "";
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        lblSuccessMessage.Visible = true;
                        lblSuccessMessage.ForeColor = System.Drawing.Color.Red;
                        lblSuccessMessage.Text = "Database Error: " + ex.Message;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
        }
    }
}
