using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace EMS
{
    public partial class Add_Food : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AFREED\SQLEXPRESS;Initial Catalog=Ems;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void TextBox2_TextChanged1(object sender, EventArgs e)
        {
            
        }

        
        protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int SelectedEquip = 0;
            for (int j = 0; j <= CheckBoxList1.Items.Count - 1; j++)
            {
                if (CheckBoxList1.Items[j].Selected)
                {
                    SelectedEquip += Convert.ToInt32(CheckBoxList1.Items[j].Value);
                }
            }
            TextBox2.Text = SelectedEquip.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string FoodType = String.Empty;
            if(RadioButton1.Checked)
            {
                FoodType = "Veg";
            }
            else
            {
                FoodType = "Nonveg";
            }
            String str = "";
            for (int i=0; i<=CheckBoxList2.Items.Count-1; i++)
            {
                if(CheckBoxList2.Items[i].Selected)
                    {
                    if (str == "")
                    {
                        str = CheckBoxList2.Items[i].Text;
                    }
                    else
                    {
                        str += "," + CheckBoxList2.Items[i].Text;
                    }
                }
            }
            String SelectedEquip = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (SelectedEquip == "")
                    {
                        SelectedEquip = CheckBoxList1.Items[i].Text;
                    }
                    else
                    {
                        SelectedEquip += "," + CheckBoxList1.Items[i];
                    }
                }
            }
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Food]
           ([FoodType]
           ,[MealType]
           ,[Quantity]
           ,[SelectedName]
           ,[DishCost]
           ,[UserID])
     VALUES
            ('" + FoodType + "', '" + str + "', '" + TextBox1.Text + "','" + SelectedEquip + "', '" + TextBox2.Text + "','"+TextBox3.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Add Light");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Light");
        }
    }
}