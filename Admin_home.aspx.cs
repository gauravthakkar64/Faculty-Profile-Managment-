using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;

public partial class Admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserName"]==null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            fillData();
        }
    }
        private void fillData()
    {
       SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
      con.Open();
        DataTable dt = new DataTable();
         SqlDataAdapter adapt = new SqlDataAdapter("Select * from tblpost Order by Post_date", con);
      //  SqlDataAdapter adapt = new SqlDataAdapter("select * from tblpost",con);
        adapt.Fill(dt);
        con.Close();
        PagedDataSource pds = new PagedDataSource();
        DataView dv = new DataView(dt);
        pds.DataSource = dv;
        pds.AllowPaging = true;
        pds.PageSize = 3;
        pds.CurrentPageIndex = PageNumber;
        if (pds.PageCount > 1)
        {
            rptPaging.Visible = true;
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < pds.PageCount; i++)
                arraylist.Add((i + 1).ToString());
            rptPaging.DataSource = arraylist;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }
        Repeater1.DataSource = pds;
        Repeater1.DataBind();
    }
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                    return Convert.ToInt32(ViewState["PageNumber"]);
                else
                    return 0;
            }
            set
            {
                ViewState["PageNumber"] = value;
            }
        }
        protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            fillData();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");

            string dt = DateTime.Now.ToString();
            if (FileUpload1.HasFile)
            {
                string ftype = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (ftype.ToLower() != ".png" && ftype.ToLower() != ".jpg" && ftype.ToLower() != ".jpeg")
                {
                    lbmsgimg.Text = "Only image files are allowed";
                }
                else
                {
                    string path = "~/user_pic/" + FileUpload1.FileName;
                    SqlCommand cmd = new SqlCommand("insert into tblpost(Post_Name,Post_date,Post_data,Img_path) values(@pname,@date,@pdata,@path)", con);
                    // SqlCommand cmd = new SqlCommand("insert into tblpost values('"+txtpname.Text+"','"+dt+"','"+txtpost.Text+"','"+path+"')",con);
                    cmd.Parameters.AddWithValue("@pname", txtpname.Text);
                    cmd.Parameters.AddWithValue("@date", dt);
                    cmd.Parameters.AddWithValue("@pdata", txtpost.Text);
                    cmd.Parameters.AddWithValue("@path", path);
                    //  cmd.Parameters.AddWithValue("@time", time);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FileUpload1.SaveAs(Server.MapPath("~/user_pic/" + FileUpload1.FileName));
                    lbmsgimg.Text = "Photo uploaded";


                }
            }
            else
            {
                lbmsgimg.Text = "Please select Image...";
            }
            //Displaying Javascript alert Comment Posted Successfully
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Comment Posted Successfully.');window.location='Faculty_Home.aspx';", true);
            fillData();
            txtpname.Text = "";
            txtpost.Text = "";
            //txtComment.Text = "";
        }
}