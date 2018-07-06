using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Faculty_Request : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter adp;
    int ID = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            fill_data();
        }
        
       
        
        
    }
    public void fill_data()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter("select * from tblRequest", cn);
        cn.Open();
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void DeleteRecord(Double RegId)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand com = new SqlCommand("delete from tblLogin_info where Reg_Id=@ID", con);
        com.Parameters.AddWithValue("@ID", RegId);
        SqlCommand com1 = new SqlCommand("delete from tblRequest where Reg_Id=@ID1", con);
        com1.Parameters.AddWithValue("@ID1", RegId);

        con.Open();
       com.ExecuteNonQuery();
        com1.ExecuteNonQuery();
        con.Close();
    }
    protected void Accept_Record(Double RegId)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
       /* SqlCommand com = new SqlCommand("delete from tblRequest where Reg_Id=@ID", con);
        com.Parameters.AddWithValue("@ID", RegId);*/
        SqlCommand com1 = new SqlCommand("delete from tblRequest where Reg_Id=@ID1", con);
        com1.Parameters.AddWithValue("@ID1", RegId);

        con.Open();
       // com.ExecuteNonQuery();
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
                Double Rg_id = Convert.ToDouble(grow.Cells[1].Text);
                Accept_Record(Rg_id);
            }
        }
        //Displaying the Data in GridView
        fill_data();
    }
}