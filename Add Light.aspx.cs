using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EMS
{
    public partial class Add_Light : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int SelectedEquip = 0;
            for (int j = 0; j <= CheckBoxList2.Items.Count - 1; j++)
            {
                if (CheckBoxList2.Items[j].Selected)
                {
                    SelectedEquip += Convert.ToInt32(CheckBoxList2.Items[j].Value);
                }
            }
            TextBox1.Text = SelectedEquip.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = "";
            for (int i = 0; i <= CheckBoxList3.Items.Count - 1; i++)
            {
                if (CheckBoxList3.Items[i].Selected)
                {
                    if (str == "")
                    {
                        str = CheckBoxList3.Items[i].Text;
                    }
                    else
                    {
                        str += "," + CheckBoxList3.Items[i].Text;
                    }
                }
            }
            String SelectedEquip = "";
            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {
                    if (SelectedEquip == "")
                    {
                        SelectedEquip = CheckBoxList2.Items[i].Text;
                    }
                    else
                    {
                        SelectedEquip += "," + CheckBoxList2.Items[i];
                    }
                }
            }
            SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[Light]
           ([LightType]
           ,[LightName]
           ,[LightCost]
           ,[UserID])
     VALUES
            ('" + str + "', '" + SelectedEquip + "', '" + TextBox1.Text + "','"+TextBox2.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Booked.aspx");
        }

       
    }
}