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
using System.Net.Mail;

namespace MyWeb.Modules.Page
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title = "Liên hệ với chúng tôi";
                DataTable dt = ConfigService.Config_GetByTop("1", "", "");
                if (dt.Rows.Count > 0)
                {
                    ltrContact.Text = dt.Rows[0]["Contact"].ToString();
                }
            }
        }

        //protected void btnSend_Click(object sender, EventArgs e)
        //{
        //    Data.Contact obj = new Data.Contact();
        //    obj.Name = txtHoTen.Text;
        //    obj.Company = txtAddress.Text;
        //    obj.Email = txtEmail.Text;
        //    obj.Phone = txtPhone.Text;
        //    obj.Website = string.Empty;
        //    obj.Title = txtTitle.Text;
        //    obj.Detail = txtDetail.Text;
        //    obj.Date = DateTimeClass.ConvertDateTime(DateTime.Now.ToLongDateString(), "MM/dd/yyyy HH:mm:ss");
        //    ContactService.Contact_Insert(obj);
        //    #region[SendMail]
        //    DataTable listConfig = ConfigService.Config_GetByTop("1", "", "");
        //    SmtpClient SmtpServer = new SmtpClient();
        //    SmtpServer.Credentials = new System.Net.NetworkCredential(listConfig.Rows[0]["Mail_Noreply"].ToString(), listConfig.Rows[0]["Mail_Password"].ToString());
        //    SmtpServer.Port = Convert.ToInt32(listConfig.Rows[0]["Mail_Port"]);
        //    SmtpServer.Host = listConfig.Rows[0]["Mail_Smtp"].ToString();
        //    SmtpServer.EnableSsl = false;
        //    MailMessage mail = new MailMessage();
        //    try
        //    {
        //        mail.From = new MailAddress(listConfig.Rows[0]["Mail_Info"].ToString(), "Family Skincare & Spa", System.Text.Encoding.UTF8);
        //        mail.To.Add(listConfig.Rows[0]["Mail_Info"].ToString());
        //        mail.Subject = txtTitle.Text;
        //        string strchuoi = "Họ tên: " + txtHoTen.Text + "\n";
        //        strchuoi += "E-mail: " + txtEmail.Text + "\n";
        //        strchuoi += "Điện thoại: " + txtPhone.Text + "\n";
        //        strchuoi += "Địa chỉ: " + txtAddress.Text + "\n";
        //        strchuoi += "Nội dung: " + txtDetail.Text + "\n";
        //        mail.Body = strchuoi;
        //        mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
        //        SmtpServer.Send(mail);
        //        WebMsgBox.Show("Bạn đã gửi thành công!");
        //    }
        //    catch (Exception ex)
        //    {
        //        WebMsgBox.Show("Bạn đã gửi thành công!");
        //        return;
        //    }
        //    finally
        //    {
        //        txtAddress.Text = string.Empty;
        //        txtHoTen.Text = string.Empty;
        //        txtEmail.Text = string.Empty;
        //        txtDetail.Text = string.Empty;
        //        txtPhone.Text = string.Empty;
        //    }
        //    #endregion

        //}
    }
}