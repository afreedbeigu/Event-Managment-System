using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EMS
{
    public partial class Add_Equipments : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int SelectedEquip = 0;
            for (int j = 0; j <= CheckBoxList1.Items.Count-1; j++)
            {
                if(CheckBoxList1.Items[j].Selected)
                {
                    SelectedEquip += Convert.ToInt32(CheckBoxList1.Items[j].Value);
                }
            }
            TextBox1.Text = SelectedEquip.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String SelectedEquip = ""; 
            for(int i=0; i<CheckBoxList1.Items.Count; i++)
            {
                if(CheckBoxList1.Items[i].Selected)
                {
                    if(SelectedEquip=="")
                    {
                        SelectedEquip = CheckBoxList1.Items[i].Text;
                    }
                    else
                    {
                        SelectedEquip += "," + CheckBoxList1.Items[i];
                    }
                }
            }
           SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Equipments]
           ([EquipmentName]
           ,[EquipmentCost]
           ,[UserID])
     VALUES
           ('" + SelectedEquip + "','" + TextBox1.Text + "','"+TextBox2.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Add Food.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Food.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}