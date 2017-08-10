using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using MyWeb.Data;

namespace MyWeb.WebSvc
{
	/// <summary>
	/// Summary description for WebSvc
	/// </summary>
	[WebService(Namespace = "http://tempuri.org/")]
	[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
	[System.ComponentModel.ToolboxItem(false)]
	// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
	// [System.Web.Script.Services.ScriptService]
	public class WebSvc : System.Web.Services.WebService
	{

		[WebMethod]
		public DataTable Advertise_GetById(string Id)
		{
			AdvertiseDAL db = new AdvertiseDAL();
			return db.Advertise_GetById(Id);
		}
	}
}
