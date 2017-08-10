using System;
using System.Collections.Generic;
using System.Text;
using MyWeb.Data;
using System.Data;

namespace MyWeb.Business
{
	public class NewsService
	{
		private static NewsDAL db = new NewsDAL();
		#region[News_GetById]
		public static DataTable News_GetById(string Id)
		{
			return db.News_GetById(Id);
		}
		#endregion
		#region[News_GetByTop]
        public static DataTable News_GetByTop(string Top, string Where, string Order)
		{
			return db.News_GetByTop(Top, Where, Order);
		}
		#endregion
		#region[News_GetByAll]
        public static DataTable News_GetByAll()
		{
			return db.News_GetByAll();
		}
		#endregion
		#region[News_Insert]
		public static bool News_Insert(News data)
		{
			return db.News_Insert(data);
		}
		#endregion
		#region[News_Update]
		public static bool News_Update(News data)
		{
			return db.News_Update(data);
		}
		#endregion
		#region[News_Delete]
		public static bool News_Delete(string Id)
		{
			return db.News_Delete(Id);
		}
		#endregion
	}
}