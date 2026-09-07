using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class standarddemo_control : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "selected date is:" + Calendar1.SelectedDate.ToString("dd-MM-yyyy") + Calendar1.SelectedDate.DayOfWeek.ToString();
        }



        protected void SUBMIT_Click(object sender, EventArgs e)
        {
            Label1.Text = "selected: " + gender;

            //if (MALE_btn.Checked)
            //{
            //    Label1.Text = "MALE";
            //}
            //else if (FEMALE_btn.Checked)
            //{
            //    Label1.Text = "FEMALE";
            //}
            //else
            //{
            //    Label1.Text = "Please select gender";
            //}

        }

        protected void FEES_Click(object sender, EventArgs e)
        {
            int total = 0;

            if (C.Checked)
            {
                total += 1000;
                
            }

            if(C_SHARP.Checked)
            {
                total += 2000;
            }

            if(JAVA.Checked)

            {
                total += 3000;

            }

            Label1.Text = "Total price of course:" + total;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = "YOUR CITY" + ListBox1.SelectedItem;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BUTTON_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string path = Server.MapPath("~/img/") + FileUpload1.FileName;
                FileUpload1.SaveAs(path);

                Labell.Text = "File uploaded Successfully!";
            }
            else
            {
                Labell.Text = "please select a file to upload";
            }

            }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
    }
