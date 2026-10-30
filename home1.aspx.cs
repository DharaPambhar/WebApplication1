using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class home1 : System.Web.UI.Page
    {
        string gender;
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dhara\\source\\repos\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void REGISTER_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            //con.Open();
            String query = "insert into Register values('"+NAMETXT.Text+"','"+EMAILTXT.Text+"','"+PWDTXT.Text+"','"+gender+"','"+CONTACTTXT.Text+"','"+DropDownList1.SelectedItem.ToString()+"')";
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("register successfully");



            con.Close();
        }

        protected void FEMALE_RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void MALE_RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void PWDTXT_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //step 1: take the coonnection string from database
            //step 2: create the connection object sqlconnection
            //step 3: create the command object sqlcommand
            //step 4: open the connection
            //step 5: execute the query
            //step 6: close the connection
            //step 7: display the message

            SqlConnection con = new SqlConnection(connectionString);
            string query = "insert into Register values(@n, @e, @p, @g, @c, @city)";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            cmd.Parameters.AddWithValue("@n", NAMETXT.Text);
            cmd.Parameters.AddWithValue("@e", EMAILTXT.Text);
            cmd.Parameters.AddWithValue("@p", PWDTXT.Text);
            cmd.Parameters.AddWithValue("@g", gender);
            cmd.Parameters.AddWithValue("@c", CONTACTTXT.Text);
            cmd.Parameters.AddWithValue("@city", DropDownList1.SelectedItem.ToString());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("register successfully");



        }
    }
}