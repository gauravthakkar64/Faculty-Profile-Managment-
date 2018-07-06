using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class temp : System.Web.UI.Page
{

    //connection string from web.config file
    //string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //Displaying the Data
            showData();
            //Adding an Attribute to Server Control(i.e. btnDeleteRecord)
            btnDeleteRecord.Attributes.Add("onclick", "javascript:return DeleteConfirm()");
        }
    }
    //Method for Displaying Data
    protected void showData()
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
        SqlDataAdapter adapt = new SqlDataAdapter("select * from Employee",con);
        con.Open();
        adapt.Fill(dt);
        con.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    //Method for Deleting Record
    protected void DeleteRecord(int empid)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand com = new SqlCommand("delete from Employee where EmpId=@ID",con);
        com.Parameters.AddWithValue("@ID",empid);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    protected void btnDeleteRecord_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grow in GridView1.Rows)
        {
            //Searching CheckBox("chkDel") in an individual row of Grid
            CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
            //If CheckBox is checked than delete the record with particular empid
            if(chkdel.Checked)
            {
                int empid = Convert.ToInt32(grow.Cells[1].Text);
                DeleteRecord(empid);
            }
        }
        //Displaying the Data in GridView
        showData();
    }
}
