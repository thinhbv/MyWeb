using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MyWeb.Business;
using MyWeb.Common;
using MyWeb.Data;

namespace MyWeb.Controls
{
    public partial class Footer : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtConfig = ConfigService.Config_GetByTop("1", "", "");
                if (dtConfig.Rows.Count>0)
                {
                    ltrCopyright.Text = dtConfig.Rows[0]["Copyright"].ToString();
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {
                WebMsgBox.Show("Đã có lỗi xảy ra khi đăng ký. Bạn vui lòng thử lại!");
            }
            finally
            {

            }
        }
    }
}