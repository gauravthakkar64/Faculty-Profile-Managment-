using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class All_faculties : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter adp;
    int ID = 0;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            fill_data();
        }
    }
    public void fill_data()
    {
        DataTable dt = new DataTable();
        //DataSet ds = new DataSet();
       adp= new SqlDataAdapter("select Reg_Id,Fname,Mname,Lname from tblpersonal_info ", cn);
        cn.Open();
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void DeleteRecord(Double RegId)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand c1 = new SqlCommand("select * from tblpersonal_info where Reg_Id=@ID2", con);
        c1.Parameters.AddWithValue("Id2", RegId);
        con.Open();
        SqlDataReader dr = c1.ExecuteReader();
        string rg, fname, mname, lname, Gn, bd, bplace, commu, mt, natio, S_s;
        dr.Read();
        rg = dr["Reg_Id"].ToString();
        fname = dr["Fname"].ToString();
        mname = dr["Mname"].ToString();
        lname = dr["Lname"].ToString();
        Gn = dr["Gender"].ToString();
        bd = dr["Bdate"].ToString();
        bplace = dr["Bplace"].ToString();
        commu = dr["Community"].ToString();
        mt = dr["Mother_Tongue"].ToString();
        natio = dr["Nationality"].ToString();
        S_s = dr["S_status"].ToString();

        con.Close();
        SqlCommand c4 = new SqlCommand("insert into tblBlocked_profile values('" + rg + "','" + fname + "','" + mname + "','" + lname + "','" + Gn + "','" + bd + "','" + bplace + "','" + commu + "','" + mt + "','" + natio + "','" + S_s + "')", con);
        con.Open();
        c4.ExecuteNonQuery();
        con.Close();
        
        SqlCommand com = new SqlCommand("delete from tblpersonal_info where Reg_Id=@ID", con);
        com.Parameters.AddWithValue("@ID", RegId);
        SqlCommand com1 = new SqlCommand("delete from tblLogin_info where Reg_Id=@ID1", con);
        com1.Parameters.AddWithValue("@ID1", RegId);
        con.Open();
        com.ExecuteNonQuery();
        com1.ExecuteNonQuery();
        con.Close();
       
        
    }
    protected void btnDeleteRecord_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grow in GridView1.Rows)
        {
            //Searching CheckBox("chkDel") in an individual row of Grid
            CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
            //If CheckBox is checked than delete the record with particular empid
            if (chkdel.Checked)
            {
                Double RegId = Convert.ToDouble(grow.Cells[1].Text);
                DeleteRecord(RegId);
            }
        }
        //Displaying the Data in GridView
        fill_data();
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grow in GridView1.Rows)
        {
            //Searching CheckBox("chkDel") in an individual row of Grid
            CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
            //If CheckBox is checked than delete the record with particular empid
            if (chkdel.Checked)
            {
                Double RegId = Convert.ToDouble(grow.Cells[1].Text);
                BlockUser(RegId);
            }
        }
        //Displaying the Data in GridView
        fill_data();
    }
    protected void BlockUser(Double RegId)
    {
       SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
      /*  SqlCommand com1 = new SqlCommand("delete from tblLogin_info where Reg_Id=@ID", con);
        con.Open();
        com1.Parameters.AddWithValue("@Id", RegId);
        com1.ExecuteNonQuery();
        con.Close();*/
       Double r_id=RegId;
        SqlCommand c2 = new SqlCommand("select Reg_Id,Fname,Mname,Lname from tblpersonal_info where Reg_Id='"+r_id+"'", con);
        
        con.Open();
        SqlDataReader dr = c2.ExecuteReader();
        

        string rg, fname, mname, lname,uname,pass;
        dr.Read();
       
        rg = dr["Reg_Id"].ToString();
        fname = dr["Fname"].ToString();
        mname = dr["Mname"].ToString();
        lname = dr["Lname"].ToString();
        con.Close();

        SqlCommand c3 = new SqlCommand("select User_name,Password from tblLogin_info where Reg_Id='" + r_id + "'", con);
        
        con.Open();
        SqlDataReader drrr = c3.ExecuteReader();
        drrr.Read();
        uname = drrr["User_name"].ToString();
         pass=drrr["Password"].ToString();
        con.Close();
        
        SqlCommand cmd = new SqlCommand("insert into tblBlocked values('"+RegId+"','"+fname+"','"+mname+"','"+lname+"','"+uname+"','"+pass+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();

    con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Blocked_faculties.aspx");
    }
}