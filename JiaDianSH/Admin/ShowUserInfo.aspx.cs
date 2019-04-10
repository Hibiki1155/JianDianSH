using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class Admin_ShowUserInfo : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from Users where id=" + id);
            dr.Read();
            TextBox1.Text = dr["Name"].ToString();
            txtUser.Text = dr["TName"].ToString();
            TextBox2.Text = dr["Tel"].ToString();
            TextBox3.Text = dr["Address"].ToString();
            //DropDownList2.Items.FindByValue(dr["DepId"].ToString()).Selected = true;//选项Text  
             TextBox4.Text=dr["DepName"].ToString();//选项Text  
        }

    }
  
}
