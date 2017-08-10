using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using MyWeb.Common;
using MyWeb.Data;
using MyWeb.Business;
using System.Data;

namespace MyWeb
{
    public class Global : System.Web.HttpApplication
    {
        void RegisterRoutes()
        {
            //Product routes
            RouteTable.Routes.MapPageRoute("GroupProduct", "san-pham/{GroupId}/{title}", "~/Modules/Product/ViewProduct.aspx");
            RouteTable.Routes.MapPageRoute("ProductDetail", "san-pham/{groupId}/{groupName}/{Id}/{title}", "~/Modules/Product/DetailProduct.aspx");
            //News routes
            RouteTable.Routes.MapPageRoute("News", "{GroupId}/{title}.aspx", "~/Modules/News/ViewGroupNews.aspx");
            RouteTable.Routes.MapPageRoute("NewsDetail", "{groupId}/{groupName}/{Id}/{title}", "~/Modules/News/NewsDetails.aspx");
            RouteTable.Routes.MapPageRoute("Images", "Thu-vien-anh/{GroupId}/{title}", "~/Modules/Page/ImagesView.aspx");
            //Page routes
            RouteTable.Routes.MapPageRoute("PageDetail", "Page/{pageId}/{title}", "~/Modules/Page/PageDetail.aspx");
            RouteTable.Routes.MapPageRoute("Contact", "Contact", "~/Modules/Page/Contact.aspx");
			RouteTable.Routes.MapPageRoute("Logon", "Logon", "~/Modules/Page/Logon.aspx");
            RouteTable.Routes.MapPageRoute("Admin", "admin", "~/Admins/Default.aspx");
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes();
            Application["HomNay"] = 0;
            Application["HomQua"] = 0;
            Application["TuanNay"] = 0;
            Application["TuanTruoc"] = 0;
            Application["ThangNay"] = 0;
            Application["ThangTruoc"] = 0;
            Application["TatCa"] = 0;
            Application["visitors_online"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 150;
            Application.Lock();
            Application["visitors_online"] = Convert.ToInt32(Application["visitors_online"]) + 1;
            Application.UnLock();
            try
            {
                DataTable dtb = TB_ThongKeService.spThongKe_Edit();
                if (dtb.Rows.Count > 0)
                {
                    Application["HomNay"] = long.Parse("0" + dtb.Rows[0]["HomNay"]).ToString("#,###");
                    Application["HomQua"] = long.Parse("0" + dtb.Rows[0]["HomQua"]).ToString("#,###");
                    Application["TuanNay"] = long.Parse("0" + dtb.Rows[0]["TuanNay"]).ToString("#,###");
                    Application["TuanTruoc"] = long.Parse("0" + dtb.Rows[0]["TuanTruoc"]).ToString("#,###");
                    Application["ThangNay"] = long.Parse("0" + dtb.Rows[0]["ThangNay"]).ToString("#,###");
                    Application["ThangTruoc"] = long.Parse("0" + dtb.Rows[0]["ThangTruoc"]).ToString("#,###");
                    Application["TatCa"] = long.Parse("0" + dtb.Rows[0]["TatCa"]).ToString("#,###");
                }
                dtb.Dispose();
            }
            catch { }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["visitors_online"] = Convert.ToUInt32(Application["visitors_online"]) - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}