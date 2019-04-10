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

public partial class Admin_AddUserInfo : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DropDownList2.DataSource = data.GetDataReader("select * from DepInfo");
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into  Users(Name,Pwd,Roule,TName,Tel,Address,DepId,DepName)values('" + TextBox1.Text + "','" + txtpwd.Text + "','"+DropDownList1.SelectedValue+"','" + txtUser.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+DropDownList2.SelectedValue+"','"+DropDownList2.SelectedItem.Text+"')");
        Alert.AlertAndRedirect("添加成功", "AddUserInfo.aspx");

    }
}
