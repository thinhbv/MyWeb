using System;
        private string _Nick;
        private string _Skype;
        public string Nick { get { return _Nick; } set { _Nick = value; } }
        public string Skype { get { return _Skype; } set { _Skype = value; } }
            obj.Nick = (dr["Nick"] is DBNull) ? string.Empty : dr["Nick"].ToString();
            obj.Skype = (dr["Skype"] is DBNull) ? string.Empty : dr["Skype"].ToString();