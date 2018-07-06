using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Faculty_reg : System.Web.UI.Page
{
   
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pages/Site_home.aspx");
    }
    protected void txtregister_Click(object sender, EventArgs e)
    {
        string dt=DateTime.Now.ToShortDateString();
        if(txtreg_id.Text=="")
        {
            lbVal_reg.Visible = false;
        }
        SqlCommand cmd1 = new SqlCommand("Select Reg_Id from tblLogin_info where Reg_Id='"+txtreg_id.Text+"'",cn);
        cn.Open();
        object t1 = cmd1.ExecuteScalar();
       
        if (t1 == null)
        {
            SqlCommand cmd = new SqlCommand("insert into tblLogin_info values(" + txtreg_id.Text + ",'" + txtuname.Text + "','" + txtpwd.Text + "','" + lbtype.Text + "')", cn);
            SqlCommand cmd2 = new SqlCommand("insert into tblRequest values(" + txtreg_id.Text + ",'" + txtuname.Text + "','" + dt + "')", cn);

            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();

            cn.Close();
            Response.Redirect("Faculty_Home.aspx");
        }
        else
        {
            lbVal_reg.Text = "This Registration id is already used,please enter unique id";
        }
       

    }
}