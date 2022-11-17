using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EMS
{
    public partial class Book_Event : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToString("dd MMMM - yyyy");
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Venue1]
           ([EventType]
           ,[VenueType]
           ,[Noofguests]
           ,[EventDate]
           ,[UserID]
           ,[VenueCost])
     VALUES
           ('" + DropDownList1.SelectedItem.Value + "','" +DropDownList2.SelectedItem.Text+ "','" + TextBox1.Text + "','" + TextBox2.Text + "', '"+TextBox4.Text+"', '"+TextBox3.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close(); 
            Response.Redirect("Add Equipments.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
      
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList2.SelectedItem!=null)
            TextBox3.Text = DropDownList2.SelectedItem.Value;
        }
    }
}