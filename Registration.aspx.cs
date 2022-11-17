using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EMS
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");
        string UserId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GenerateAutoID();
            }
        }
        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(UserID) from Register1", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            Label1.Text = UserId + i.ToString();
                
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Register1]
           ([UserID]
           ,[UserName]
           ,[Email]
           ,[Contact]
           ,[Address]
           ,[Gender]
           ,[Password])
     VALUES
           ('"+Label1.Text+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox4.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GenerateAutoID();
            Response.Write("<script>alert('User is registered successfully')</script>");
            Response.Redirect("Loginpg.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpg.aspx");
        }
    }
}