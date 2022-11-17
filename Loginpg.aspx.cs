using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace EMS
{
    public partial class Loginpg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");
                con.Open();
                string checkuser = "select count(*) from Register1 where UserName='" + TextBox2Password0.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    con.Open();
                    string checkPasswordQuery = "select Password from Register1 where UserName='" + TextBox2Password0.Text + "'";
                    SqlCommand Passcomm = new SqlCommand(checkPasswordQuery, con);
                    string password = Passcomm.ExecuteScalar().ToString();
                    if (password == TextBox2Password.Text)
                    {
                        Session["New"] = TextBox2Password0.Text;
                        Response.Redirect("Master.aspx");
                    }
                    else
                    {
                        Response.Write("Password is incorrect");
                    }
                }
            }
        }
    }
}