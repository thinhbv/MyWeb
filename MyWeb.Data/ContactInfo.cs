using System;
        #region[Contact IDataReader]
        public Contact ContactIDataReader(IDataReader dr)
        {
            Data.Contact obj = new Data.Contact();
            obj.Id = (dr["Id"] is DBNull) ? string.Empty : dr["Id"].ToString();
            obj.Name = (dr["Name"] is DBNull) ? string.Empty : dr["Name"].ToString();
            obj.Company = (dr["Company"] is DBNull) ? string.Empty : dr["Company"].ToString();
            obj.Email = (dr["Email"] is DBNull) ? string.Empty : dr["Email"].ToString();
            obj.Phone = (dr["Phone"] is DBNull) ? string.Empty : dr["Phone"].ToString();
            obj.Website = (dr["Website"] is DBNull) ? string.Empty : dr["Website"].ToString();
            obj.Title = (dr["Title"] is DBNull) ? string.Empty : dr["Title"].ToString();
            obj.Detail = (dr["Detail"] is DBNull) ? string.Empty : dr["Detail"].ToString();
            obj.Date = (dr["Date"] is DBNull) ? string.Empty : dr["Date"].ToString();
            return obj;
        }
        #endregion