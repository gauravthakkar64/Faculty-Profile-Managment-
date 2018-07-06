using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Blocked_faculties : System.Web.UI.Page
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
        adp = new SqlDataAdapter("select * from tblBlocked ", cn);
        cn.Open();
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void DeleteRecord(Double RegId)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
        

        SqlCommand com = new SqlCommand("delete from tblBlocked where Reg_Id=@ID", con);
        com.Parameters.AddWithValue("@ID", RegId);
       
        con.Open();
        com.ExecuteNonQuery();
        con.Close();


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
                DeleteRecord(RegId);
            }
        }
        //Displaying the Data in GridView
        fill_data();
    }
}