using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyWeb.Data;
using MyWeb.Business;
using System.Data;
using GenCode;
using System.Data.SqlClient;

namespace MyWeb.Modules.News
{
	public partial class ViewNews : System.Web.UI.Page
	{
		protected string groupName = string.Empty;
		protected int totalcount = 0;
		string id = string.Empty;
		string pagenum = "1";
		string perpage = "4";
		protected void Page_Load(object sender, EventArgs e)
		{
			//SqlCommand objCmd = new SqlCommand();
			//GlobalClass gc = new GlobalClass();
			//gc.GenLevelTrigger(objCmd, "Page", "", "Id", "Level", "Order", "5");
			if (Page.RouteData.Values["GroupId"] != null)
			{
				id = Page.RouteData.Values["GroupId"] as string;
			}
			if (Page.RouteData.Values["page"] != null)
			{
				pagenum = Page.RouteData.Values["page"] as string;
			}
			if (!IsPostBack)
			{
				DataTable dtGrp = GroupNewsService.GroupNews_GetById(id);
				if (dtGrp.Rows.Count > 0)
				{
					groupName = dtGrp.Rows[0]["Name"].ToString();
					totalcount = NewsService.News_GetCount(dtGrp.Rows[0]["Level"].ToString());
					DataTable dtNews = NewsService.News_Pagination(pagenum, perpage, dtGrp.Rows[0]["Level"].ToString());
					if (dtNews.Rows.Count > 0)
					{
						rptNews.DataSource = dtNews;
						rptNews.DataBind();
					}
				}
			}
		}
	}
}