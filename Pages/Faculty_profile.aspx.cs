using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Faculty_profile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
    private string d;
    public string id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["UserName"] == null)
        {
            //Response.Redirect("Login.aspx");
        }
        
        if (Session["Faculty"] == null)
        {
        //lbReg_Id.Text=Session["R_Id"].ToString();

        }
        else
        {
            id = Session["R_Id"].ToString();
            SqlCommand c1 = new SqlCommand("select * from tblpersonal_info where Reg_Id=" + id + "", cn);
            cn.Open();
            SqlDataReader dr = c1.ExecuteReader();

            dr.Read();
            if (dr == null)
            {

            }
            else
            {

                lbReg_Id.Text = id;
                lbFname.Text = dr["Fname"].ToString();
                lbMname.Text = dr["Mname"].ToString();
                lblname.Text = dr["Lname"].ToString();
                lbgender.Text = dr["Gender"].ToString();
                lbdate.Text = dr["Bdate"].ToString();
                lbbplace.Text = dr["Bplace"].ToString();
                lbcommu.Text = dr["Community"].ToString();
                lbmtoungue.Text = dr["Mother_Tongue"].ToString();
                lbnatlty.Text = dr["Nationality"].ToString();
                lbss.Text = dr["S_status"].ToString();
                
            }
            cn.Close();
         /*   SqlCommand cmd2 = new SqlCommand("select * from tblEducation where Reg_Id=" + id + "", cn);
            cn.Open();
            SqlDataReader edu = cmd2.ExecuteReader();
            edu.Read();
            if (edu == null)
            {

            }
            else
            {
                lbEdu_Id.Text = edu["Edu_id"].ToString();
                lbdegree.Text = edu["Degree"].ToString();
                lb_clg.Text = edu["Collage"].ToString();
                lb_enter.Text = edu["Y_enter"].ToString();
                lb_pass.Text = edu["Y_pass"].ToString();
                lbper.Text = edu["Percentage"].ToString();
                
            }
            cn.Close();
            SqlCommand cmd3 = new SqlCommand("select * from tblcontact_info where Reg_Id=" + id + "", cn);
            cn.Open();
            SqlDataReader contact = cmd3.ExecuteReader();
            contact.Read();
            if (contact == null)
            {

            }
            else
            {
                lbcontact_Id.Text = contact["C_id"].ToString();
                lbemail.Text = contact["Email"].ToString();
                lbmobile.Text = contact["Mobile"].ToString();
                lbfax.Text = contact["Fax"].ToString();
                lbaddr.Text = contact["Address"].ToString();
                lbpin.Text = contact["Pincode"].ToString();
                lbcountry.Text = contact["Country"].ToString();
                lbstate.Text = contact["State"].ToString();
                lbcity.Text = contact["City"].ToString();

                
            }
            cn.Close();
           /* SqlCommand cmd4 = new SqlCommand("select * from tblActivity_info where Reg_Id=" + id + "", cn);
            cn.Open();
            SqlDataReader ex_act = cmd4.ExecuteReader();
            ex_act.Read();

            lbA_id.Text = ex_act["Activity_id"].ToString();
            lbAname.Text = ex_act["Activity_name"].ToString();
            lbAc_type.Text = ex_act["Activity_type"].ToString();
            lborganixer.Text = ex_act["Organizer"].ToString();
            lbstra_date.Text = ex_act["Start_date"].ToString();
            lbduration.Text = ex_act["Duration"].ToString();
            lblocation.Text = ex_act["Location"].ToString();
            lbcertificate.Text = ex_act["Certificate"].ToString();
            lbremarks.Text = ex_act["Remarks"].ToString();
            cn.Close();*/
            SqlCommand cmd5 = new SqlCommand("select * from tblExperince_info where Reg_Id=" + id + "", cn);
            cn.Open();
            SqlDataReader exp = cmd5.ExecuteReader();
            exp.Read();
            cn.Close();
        }
        /*String R = Session["R_Id"].ToString();

        SqlCommand temp = new SqlCommand("select Fname from tblpersonal_info where Reg_Id=" + R + "  ", cn);
        cn.Open();
        object t1 = temp.ExecuteScalar();
        cn.Close();
        if (t1 == null)
        {
            fname.Text = "Faculty";
        }
        else
        {
            string name = t1.ToString();
            fname.Text = name;
            Session["Faculty"] = name;
        }*/
        if (!IsPostBack)
        {
            ProfileUser.Visible = true;
        }
        
    }
    public void pro_data()
    {
       /* SqlCommand c1 = new SqlCommand("select Fname from tblpersonal_info where Reg_Id=" + id + "", cn);
        SqlCommand c2 = new SqlCommand("select Mname from tblpersonal_info where Reg_Id=" + id + "", cn);
        SqlCommand c3 = new SqlCommand("select Lname from tblpersonal_info where Reg_Id=" + id + "", cn);
        cn.Open();
        object t1 = c1.ExecuteScalar();
        object t2 = c2.ExecuteScalar();
        object t3 = c3.ExecuteScalar();

        TextBox1.Text = id;
        TextBox2.Text = t1.ToString();
        TextBox3.Text = t2.ToString();
        TextBox4.Text = t3.ToString();

        cn.Close();*/
                
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        ProfileUser.Visible = false;
            if (IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                txtreg_id.Text=Session["R_Id"].ToString();
                btnupconatct.Visible = true;
                btnupeduacational.Visible = true;
                btnuppersonal.Visible = true;
                btnuexperince.Visible = true;
                btnuexActivity.Visible = true;
                btnuexinfo.Visible = true;
            }


    }
   
  private DataSet GetData(string SPName,SqlParameter SPParameter)
    {
        SqlDataAdapter adp = new SqlDataAdapter(SPName,cn);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        if(SPParameter != null)
        {
            adp.SelectCommand.Parameters.Add(SPParameter);

        }
        DataSet ds = new DataSet();
        adp.Fill(ds);
        return ds;
        
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        
        MultiView1.ActiveViewIndex = 1;
        txtcreg_id.Text = Session["R_Id"].ToString();
        if(IsPostBack)
        {
           ddcountry.DataSource= GetData("ddcountry",null);
           ddcountry.DataBind();

           ListItem licountry = new ListItem("Select Country","-1");
           ddcountry.Items.Insert(0,licountry);

            ListItem listate = new ListItem("Select State","-1");
           ddstate.Items.Insert(0,listate);

           ListItem licity  = new ListItem("Select City", "-1");
           ddcity.Items.Insert(0, licity);
           ddstate.Enabled = false;
           ddcity.Enabled = false;
           MultiView1.ActiveViewIndex = 1;
           
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
      
        MultiView1.ActiveViewIndex = 2;
        txtereg_id.Text=Session["R_Id"].ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        txtactreg_id.Text =Session["R_Id"].ToString();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        txtexreg_id.Text=Session["R_Id"].ToString();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
        txtexinforeg.Text=Session["R_Id"].ToString();
    }
    protected void Button11_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void v3_btn_pre_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txtreg_id.Text = id;
    }
    protected void ddcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddcountry.SelectedIndex==0)
        {

        }
        else
        {
            ddstate.Enabled = true;
            SqlParameter parameter=new SqlParameter("@c_id",ddcountry.SelectedValue);
            DataSet ds = GetData("State_by_country",parameter);
            ddstate.DataSource = ds;
            ddstate.DataBind();
            ListItem listate = new ListItem("Select State", "-1");
            ddstate.Items.Insert(0, listate);
        }
    }

    protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddstate.SelectedIndex == 0)
        {

        }
        else
        {
            ddcity.Enabled = true;
            SqlParameter parameter = new SqlParameter("@S_id", ddstate.SelectedValue);
            DataSet ds = GetData("city_by_state", parameter);
            ddcity.DataSource = ds;
            ddcity.DataBind();
            ListItem licity = new ListItem("Select City", "-1");
            ddcity.Items.Insert(0, licity); 
        }
    }


    protected void Button3_Click1(object sender, EventArgs e)
    {
        string gender;
        if (rdbmale.Checked == true)
        {
            gender = "MALE";

        }
        else
        {
            gender = "FEMALE";
        }
        string bdate = (ddday.SelectedValue + "-" + ddmonth.SelectedValue + "-" + ddyear.SelectedValue);

         SqlCommand iqcmd = new SqlCommand("update tblpersonal_info set Reg_Id="+txtreg_id.Text+",Fname='"+txtfname.Text+"',Mname='"+txtmname.Text+"',Lname='"+txtlname.Text+"',Gender='"+gender+"',Bdate='"+bdate+"',Bplace='"+txtbplace.Text+"',Community='"+txtcommunity.Text+"',Mother_Tongue='"+ddmtoungue.SelectedValue+"',Nationality='"+ddnatonality.SelectedValue+"',S_status='"+ddsstatus.SelectedValue+"' where Reg_Id="+txtreg_id.Text+"",cn);
         cn.Open();
         iqcmd.ExecuteNonQuery();
         cn.Close();
         txtquerymsg.Text = "Updates sucessfully";
        
       

    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
         SqlCommand cmd = new SqlCommand("update tblcontact_info set C_id="+txtc_id.Text+",Reg_Id="+txtcreg_id.Text+",Email='"+txtemail.Text+"',Mobile='"+txtmobile.Text+"',Fax='"+txtfax.Text+"',Address='"+txtadd.Text+"',Pincode='"+txtpincode+"',Country='"+ddcountry.SelectedValue+"',State='"+ddstate.SelectedValue+"',City='"+ddcity.Text+"' ",cn);
         cn.Open();
         cmd.ExecuteNonQuery();
        cn.Close();

    }
    protected void btnupeduacational_Click(object sender, EventArgs e)
    {

    }
    protected void inspersonal_Click(object sender, EventArgs e)
    {
        string gender;
        if (rdbmale.Checked == true)
        {
            gender = "MALE";

        }
        else
        {
            gender = "FEMALE";
        }
        string bdate = (ddday.SelectedValue + "-" + ddmonth.SelectedValue + "-" + ddyear.SelectedValue);

        SqlCommand iqcmd = new SqlCommand("insert into tblpersonal_info values('"+txtreg_id.Text+"','"+txtfname.Text+"','"+txtmname.Text+"','"+txtlname.Text+"','"+gender+"','"+bdate+"','"+txtbplace.Text+"','"+txtcommunity.Text+"','"+ddmtoungue.SelectedValue+"','"+ddnatonality.SelectedValue+"','"+ddsstatus.SelectedValue+"')",cn);
        cn.Open();
        iqcmd.ExecuteNonQuery();
        cn.Close();
        txtquerymsg.Text = "Inserted Sucessfully...";

    }
    protected void inscontact_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tblcontact_info values('"+txtc_id.Text+"','"+id+"','"+txtemail.Text+"',"+txtmobile.Text+","+txtfax.Text+",'"+txtadd.Text+"','"+txtpincode.Text+"','"+ddcountry.Text+"','"+ddstate.Text+"','"+ddcity.Text+"')",cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        txtcontact_query.Text = "Inserted Sucessfully...";
    }
    protected void inseduinfo_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tblEducation values('"+txtereg_id.Text+"','"+txtEdu_id.Text+"','"+txtdegree.Text+"','"+txtedu_college.Text+"','"+ddenter_year.SelectedValue+"','"+ddpass_year.SelectedValue+"',"+txtpercentage.Text+")",cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        lbedu_query.Text = "Inserted Sucessfully...";

    }
    protected void insexact_Click(object sender, EventArgs e)
    {
        string strat_dat = ddst_date.SelectedValue + "-" + ddst_month.SelectedValue + "-" + ddst_year.SelectedValue;
        SqlCommand cmd = new SqlCommand("insert into tblActivity_info values('" + txtactreg_id.Text + "','" + txtAct_id.Text + "','" + txtact_name.Text + "','" + ddact_type.Text + "','" + txtdescription.Text + "','" + strat_dat + "','"+txtduration.Text+"','"+txtlocation.Text+"','"+txtcertificate.Text+"',"+ddremarks.SelectedValue+")", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        msgact_query.Text = "Inserted Sucessfully...";

    }
    protected void insexperience_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tblExperince_info values('"+txtexreg_id.Text+"','"+txtexperience_id.Text+"','"+txtcollege_name.Text+"','"+txtduration_job.Text+"','"+txtpost_job.Text+"')",cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        msgexp_query.Text = "Inserted Sucessfully...";
    }
    protected void insexinfo_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tblExtra_info values('"+txtexinforeg.Text+"','"+txtex_info_id.Text+"','"+ddblood_grp.SelectedValue+"','"+txtheight.Text+"','"+txtweight.Text+"','"+txthobbies.Text+"','"+txtintrest_area.Text+"','"+txtnature.Text+"')",cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        msgquery_exinfo.Text = "Inserted sucessfully";
    }
}