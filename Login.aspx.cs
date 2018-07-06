using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Web.Configuration;


public partial class Login : System.Web.UI.Page
{
   
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
    string str, UserName,Password,type;
    SqlCommand com;
    SqlDataAdapter adp;
    DataTable dt;
    int rowcount;
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Site_home.aspx");
        //Response.Redirect("Site_home.aspx");
        Server.Transfer("Site_home.aspx");
    }

    protected void lgbtn_Click1(object sender, EventArgs e)
    {
        cn.Open();
        if (txtuname.Text == "")
        {
            msguname.Visible = false;
        }
        else
        {   
            SqlCommand cmd4=new SqlCommand("select * from tblBlocked where Uname='"+txtuname.Text+"'",cn);
             
            object t1 = cmd4.ExecuteScalar();
            
            if(t1!=null)
            {
                lbtype.Text = "You are blocked...try after some time";
            }
            else
            {
            str = "select * from tblLogin_info where User_name='" + txtuname.Text + "'";
            com = new SqlCommand(str);
            adp = new SqlDataAdapter(com.CommandText, cn);
            dt = new DataTable();
            adp.Fill(dt);
            rowcount = dt.Rows.Count;
            if (rowcount == 0)
            {
                msguname.Text = "Wrong UserName and password";
            }
            else
            {
                UserName = dt.Rows[0]["User_name"].ToString();
                Password = dt.Rows[0]["Password"].ToString();
                string R = dt.Rows[0]["Reg_Id"].ToString();
                // Double R_id = Convert.ToDouble(R);

                if (UserName == txtuname.Text && Password == txtpwd.Text)
                {
                    Session["UserName"] = UserName;
                    Session["R_Id"] = R;
                    if (dt.Rows[0]["Reg_type"].ToString() == "Admin")

                        Response.Redirect("Admin_home.aspx");

                    else if (dt.Rows[0]["Reg_type"].ToString() == "Faculty")


                        Response.Redirect("Faculty_Home.aspx");

                }
                else
                {
                    lbtype.Text = "Invalid user and password";
                }

            }
            }

        }
    }
}

        

    
