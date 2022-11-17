using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EMS
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Feedback]
           ([Name]
           ,[Email]
           ,[Review]
           ,[Feedback])
     VALUES
           ('"+TextBox1.Text+"', '"+TextBox2.Text+"','"+DropDownList1.SelectedItem.Value+"','"+TextBox3.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Thank You for your feedback')</script>");
            
        }
    }
}