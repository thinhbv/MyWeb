using System;
using System.Data;
			WebSvc.WebSvc wsvc = new WebSvc.WebSvc();
			return wsvc.Advertise_GetById(Id);
        #region[Advertise_GetByPosition]
        public static List<Advertise> Advertise_GetByPosition(string position)
        {
            List<Advertise> list = new List<Advertise>();
            list = db.Advertise_GetByAll();
            return list.FindAll(delegate(Advertise obj)
            {
                return obj.Position == position && obj.Active == "1";
            });
        }
        public static List<Advertise> Advertise_GetByPositionPage(string position, string page)
        {
            List<Advertise> list = new List<Advertise>();
            list = db.Advertise_GetByAll();
            return list.FindAll(delegate(Advertise obj)
            {
                return (obj.Position == position && obj.PageId == page && obj.Active == "1") || (obj.Position == position && (obj.PageId == null || obj.PageId == "") && obj.Active == "1");
            });
        }
        #endregion