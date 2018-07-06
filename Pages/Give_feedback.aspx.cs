using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Give_feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Extra\umang\live_resume\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dt = DateTime.Now.ToShortDateString();
        SqlCommand cmd = new SqlCommand("insert into tblFeedback_info values("+txtfeedback_id.Text+",'"+txtfeedbk_email.Text+"','"+txtcomment.Text+"','"+ddfeed_type.Text+"','"+dt+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        msgmeedback.Text = "Sucsessfull";
    }
}