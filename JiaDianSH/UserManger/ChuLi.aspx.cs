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
public partial class UserManger_ChuLi : System.Web.UI.Page
{

    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from ShouHou where id=" + id);
            dr.Read();
            txtName.Text = dr["txtName"].ToString();
            txtDs.Text = dr["txtDs"].ToString();
            txtType.Text = dr["txtType"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlConn update = new SqlConn();


        update.RunSql("update  ShouHou set txtName='" + txtName.Text + "',  txtType='" + txtType.Text + "',  txtDs='" + txtDs.Text + "' ,ZhuangTai='" + DropDownList1.SelectedValue + "',ChuLiXX='"+TextBox1.Text+"' where id=" + id);

        Alert.AlertAndRedirect("修改成功", "ShouHouManger.aspx");

    }
}
