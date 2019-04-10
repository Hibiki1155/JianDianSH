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

public partial class UserManger_AddCustomer : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../Photo/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image2.ImageUrl = "../Photo/" + pic.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into  Customer(KehuID,DepId,txtName,txtSex,txtAge,txtCD,txttel,txtKHJB,txtemal,txtQY,txtaddress,txtDs,txtPic,TypeName,LoginName,LoginPWd)values('" + Session["UserId"].ToString() + "','" + Session["DepId"].ToString() + "','" + txtName.Text + "','" + txtSex.SelectedValue + "','" + txtAge.Text + "','" + txtCD.SelectedValue + "','" + txttel.Text + "','" + txtKHJB.SelectedValue + "','" + txtemal.Text + "','" + txtQY.SelectedValue + "','" + txtaddress.Text + "','" + txtDs.Text + "','" + pic.Text + "','一般客户','"+TextBox1.Text+"','"+TextBox2.Text+"')");
        Alert.AlertAndRedirect("添加成功", "CustomerManger.aspx");
    }
}
