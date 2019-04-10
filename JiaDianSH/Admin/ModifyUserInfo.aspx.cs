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
public partial class Admin_ModifyUserInfo : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = data.GetDataReader("select * from DepInfo");
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from Users where id=" +id);
            dr.Read();
            TextBox1.Text = dr["Name"].ToString();
            txtUser.Text = dr["TName"].ToString();
            TextBox2.Text = dr["Tel"].ToString();
            TextBox3.Text = dr["Address"].ToString();
            //DropDownList2.Items.FindByValue(dr["DepId"].ToString()).Selected = true;//选项Text  
            DropDownList2.Items.FindByText(dr["DepName"].ToString()).Selected = true;//选项Text  
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConn update = new SqlConn();

        int id = int.Parse(Request.QueryString["id"].ToString());
        update.RunSql("update  Users set Name='" + TextBox1.Text + "',TName='" + txtUser.Text + "',Tel='" + TextBox2.Text + "',Address='" + TextBox3.Text + "',DepId='" + DropDownList2.SelectedValue + "',DepName='" + DropDownList2.SelectedItem.Text + "' where id=" + id);

        Alert.AlertAndRedirect("修改成功", "UserInfoManger.aspx");

    }
}
