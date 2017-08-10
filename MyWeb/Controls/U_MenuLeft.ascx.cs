using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyWeb.Business;
using MyWeb.Data;
using MyWeb.Common;
using System.Data;

namespace MyWeb.Controls
{
    public partial class U_MenuLeft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string groupId = string.Empty;
                string level = string.Empty;
                DataTable dtG = GroupNewsService.GroupNews_GetByTop("", "Active=1 and len(Level)=5", "Level, Ord");
                if (dtG.Rows.Count>0)
                {
                    for (int i = 0; i < dtG.Rows.Count; i++)
                    {
                        if (dtG.Rows[i]["Name"].ToString().ToLower().Contains("dịch vụ"))
                        {
                            groupId = dtG.Rows[i]["Id"].ToString();
                            level=dtG.Rows[i]["Level"].ToString();
                            break;
                        }
                    }
                }
                DataTable dtSub = GroupNewsService.GroupNews_GetByTop("", "Active=1 And left(Level,5)='" + level + "' And len(Level) = 10", "Level, Ord");
                if (dtSub.Rows.Count>0)
                {
                    for (int i = 0; i < dtSub.Rows.Count; i++)
                    {
                        ltrmenu.Text += "<h3><a href='/" + dtSub.Rows[i]["Id"] + "/" + StringClass.NameToTag(dtSub.Rows[i]["Name"].ToString()) + ".aspx' title='" + dtSub.Rows[i]["Name"] + "'>" + dtSub.Rows[i]["Name"] + "</a></h3>";
                        DataTable dt3 = NewsService.News_GetByTop("5", "Active=1 And GroupNewsId='" + dtSub.Rows[i]["Id"] + "'", "Date Desc");
                        if (dt3.Rows.Count>0)
                        {
                            ltrmenu.Text += "<div class='content-menu'><ul>";
                            for (int j = 0; j < dt3.Rows.Count; j++)
                            {
                                if ("1".Equals(dt3.Rows[j]["Index"].ToString()))
                                {
                                    ltrmenu.Text += "<li><a href='/" + dtSub.Rows[i]["Id"] + "/" + StringClass.NameToTag(dtSub.Rows[i]["Name"].ToString()) + "/" + dt3.Rows[j]["Id"] + "/" + StringClass.NameToTag(dt3.Rows[j]["Name"].ToString()) + ".aspx' title='" + dt3.Rows[j]["Name"] + "'>" + dt3.Rows[j]["Name"] + "</a><img src='/Images/icon_hot.gif' style='margin-left:2px' /></li>";
                                }
                                else
                                {
                                    ltrmenu.Text += "<li><a href='/" + dtSub.Rows[i]["Id"] + "/" + StringClass.NameToTag(dtSub.Rows[i]["Name"].ToString()) + "/" + dt3.Rows[j]["Id"] + "/" + StringClass.NameToTag(dt3.Rows[j]["Name"].ToString()) + ".aspx' title='" + dt3.Rows[j]["Name"] + "'>" + dt3.Rows[j]["Name"] + "</a></li>";
                                }
                            }
                            ltrmenu.Text += "</ul></div>";
                        }
                    }
                }
            }
        }
    }
}