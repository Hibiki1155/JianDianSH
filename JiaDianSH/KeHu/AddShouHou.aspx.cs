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

public partial class UserManger_AddShouHou : System.Web.UI.Page
{
    SqlConn data = new SqlConn();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           


            DropDownList2.DataSource = data.GetDataReader("select * from ChanPin");
            DropDownList2.DataValueField = "id";
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataBind();

            DropDownList2.Items.Add("选择产品");
            DropDownList2.Items[this.DropDownList2.Items.Count - 1].Value = " ";
            DropDownList2.SelectedIndex = this.DropDownList2.Items.Count - 1;
             
          
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into ShouHou(txtName,txtType,txtDs,KehuID,KHName,ChanPin)values('" + txtName.Text + "','" + DropDownList1.SelectedValue + "','" + txtDs.Text + "','" + Session["UserId"].ToString() + "','" + Session["Name"].ToString() + "','" + DropDownList2.SelectedItem.Text+ "')");
        Alert.AlertAndRedirect("添加成功", "AddShouHou.aspx");
    }
   
}
