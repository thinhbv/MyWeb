using System;
        static SqlCommand dbCmd;
            dbCmd = new SqlCommand("sp_GroupNews_GetById");
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add(new SqlParameter("@Id", Id));
            return GetData(dbCmd);
            dbCmd = new SqlCommand("sp_GroupNews_GetByTop");
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add(new SqlParameter("@Top", Top));
            dbCmd.Parameters.Add(new SqlParameter("@Where", Where));
            dbCmd.Parameters.Add(new SqlParameter("@Order", Order));
            return GetData(dbCmd);
            dbCmd = new SqlCommand("sp_GroupNews_GetByAll");
            dbCmd.CommandType = CommandType.StoredProcedure;
            return GetData(dbCmd);
        public bool GroupNews_Insert(GroupNews data)
        {
            dbCmd = new SqlCommand("sp_GroupNews_Insert");
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add(new SqlParameter("@Name", data.Name));
            dbCmd.Parameters.Add(new SqlParameter("@Image", data.Image));
            dbCmd.Parameters.Add(new SqlParameter("@Level", data.Level));
            dbCmd.Parameters.Add(new SqlParameter("@Description", data.Description));
            dbCmd.Parameters.Add(new SqlParameter("@Keyword", data.Keyword));
            dbCmd.Parameters.Add(new SqlParameter("@Ord", data.Ord));
            dbCmd.Parameters.Add(new SqlParameter("@Active", data.Active));
            dbCmd.Parameters.Add(new SqlParameter("@Index", data.Index));
            ExecuteNonQuery(dbCmd);
            //Clear cache
            System.Web.HttpContext.Current.Cache.Remove("GroupNews");
            return true;
        }
        public bool GroupNews_Update(GroupNews data)
        {
            dbCmd = new SqlCommand("sp_GroupNews_Update");
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add(new SqlParameter("@Id", data.Id));
            dbCmd.Parameters.Add(new SqlParameter("@Name", data.Name));
            dbCmd.Parameters.Add(new SqlParameter("@Image", data.Image));
            dbCmd.Parameters.Add(new SqlParameter("@Level", data.Level));
            dbCmd.Parameters.Add(new SqlParameter("@Description", data.Description));
            dbCmd.Parameters.Add(new SqlParameter("@Keyword", data.Keyword));
            dbCmd.Parameters.Add(new SqlParameter("@Ord", data.Ord));
            dbCmd.Parameters.Add(new SqlParameter("@Active", data.Active));
            dbCmd.Parameters.Add(new SqlParameter("@Index", data.Index));
            ExecuteNonQuery( dbCmd);
            //Clear cache
            System.Web.HttpContext.Current.Cache.Remove("GroupNews");
            return true;
        }
        public bool GroupNews_Delete(string Id)
        {
            dbCmd = new SqlCommand("sp_GroupNews_Delete");
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add(new SqlParameter("@Id", Id));
            ExecuteNonQuery(dbCmd);
            //Clear cache
            System.Web.HttpContext.Current.Cache.Remove("GroupNews");
            return true;
        }