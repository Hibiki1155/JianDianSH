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

public partial class UserManger_AddLiuYan : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into LiuYanInfo(txtName,txtDs,KehuID,UserName)values('" + txtName.Text + "','" + txtDs.Text + "','" + Session["UserId"].ToString() + "','" + Session["Name"].ToString() + "')");
        Alert.AlertAndRedirect("留言成功", "AddLiuYan.aspx");
    }

}
