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
public partial class UserManger_ModifyCustomers : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetInfo();
        }
    }
    private void GetInfo()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from Customer where id=" + id);
        dr.Read();
        txtName.Text = dr["txtName"].ToString();
      
        txtSex.Items[0].Text = dr["txtSex"].ToString();
      
        txtAge.Text = dr["txtAge"].ToString();
        if (dr["txtCD"].ToString() == "非常重要")
        {
            txtCD.SelectedIndex = 0;
        }
        if (dr["txtCD"].ToString() == "重要")
        {
            txtCD.SelectedIndex = 1;
        }
        if (dr["txtCD"].ToString() == "普通")
        {
            txtCD.SelectedIndex = 2;
        }

        txttel.Text = dr["txttel"].ToString();

        if (dr["txtKHJB"].ToString() == "VIP客户")
        {
            txtKHJB.SelectedIndex = 0;
        }
        if (dr["txtKHJB"].ToString() == "普通客户")
        {
            txtKHJB.SelectedIndex = 1;
        }
        txtemal.Text = dr["txtemal"].ToString();
        txtQY.Items[0].Text = dr["txtQY"].ToString();
        txtQY.Items[0].Value = dr["txtQY"].ToString();
        txtaddress.Text = dr["txtaddress"].ToString();
    
        txtDs.Text = dr["txtDs"].ToString();
        pic.Text = dr["txtPic"].ToString();
        Image2.ImageUrl = "../Photo/" + dr["txtPic"].ToString();
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
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update  Customer set  txtName='" + txtName.Text + "',txtSex='" + txtSex.SelectedValue + "',txtAge='" + txtAge.Text + "',txtCD='" + txtCD.SelectedValue + "',txttel='" + txttel.Text + "',txtKHJB='" + txtKHJB.SelectedValue + "',txtemal='" + txtemal.Text + "',txtQY='" + txtQY.SelectedValue + "',txtaddress='" + txtaddress.Text + "',txtDs='" + txtDs.Text + "',txtPic='" + pic.Text + "' where id=" + id);

        Alert.AlertAndRedirect("修改客户信息成功", "CustomerManger.aspx");

    }
}
