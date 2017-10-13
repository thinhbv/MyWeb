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

namespace MyWeb
{
    public partial class PageMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string url = HttpContext.Current.Request.Path;
                //List<Data.Advertise> listLeft = AdvertiseService.Advertise_GetByPosition("5");
                //if (listLeft.Count>0)
                //{
                //    ltrAdvLeft.Text = "<a href='" + listLeft[0].Link + "'><img src='" + listLeft[0].Image + "' width='164px' alt='" + listLeft[0].Name + "' /></a>";
                //}
                //List<Data.Advertise> listRight = AdvertiseService.Advertise_GetByPosition("6");
                //if (listRight.Count > 0)
                //{
                //    ltrAdvRight.Text = "<a href='" + listRight[0].Link + "'><img src='" + listRight[0].Image + "' width='164px' alt='" + listRight[0].Name + "' /></a>";
                //}

                ////Show List Support Online
                //DataTable dtSupport = new DataTable();
                //dtSupport = SupportService.Support_GetByTop("", "Active=1", "");
                //if (dtSupport.Rows.Count>0)
                //{
                //    for (int i = 0; i < dtSupport.Rows.Count; i++)
                //    {
                //        ltrSupport.Text += "<div class='name-support'>" + dtSupport.Rows[i]["Name"] + "</div>";
                //        ltrSupport.Text += "<div id='SkypeButton_Call_" + dtSupport.Rows[i]["Skype"] + "_1' class='skype-support'>";
                //        ltrSupport.Text += "<script type='text/javascript'>\n";
                //        ltrSupport.Text += "Skype.ui({ \n";
                //        ltrSupport.Text += "'name': 'call', \n";
                //        ltrSupport.Text += "'element': 'SkypeButton_Call_" + dtSupport.Rows[i]["Skype"] + "_1', \n";
                //        ltrSupport.Text += "'participants': ['" + dtSupport.Rows[i]["Skype"] + "'], \n";
                //        ltrSupport.Text += "'imageSize': 20 \n";
                //        ltrSupport.Text += "}); \n";
                //        ltrSupport.Text += "</script>\n";
                //        ltrSupport.Text += "</div>";
                //        if (dtSupport.Rows[i]["Nick"].ToString() != String.Empty)
                //        {
                //            ltrSupport.Text += "<div class='chat-yahoo'><a href='ymsgr:sendim?" + dtSupport.Rows[i]["Nick"] + "'><img src='http://opi.yahoo.com/online?u=" + dtSupport.Rows[i]["Nick"] + "&amp;m=g&amp;t=1' /></a></div>";
                //        }
                        
                //        ltrSupport.Text += "<div class='phone-support'>Mobile: " + dtSupport.Rows[i]["Phone"] + "</div>";
                //    }
                //}
            }
        }
    }
}