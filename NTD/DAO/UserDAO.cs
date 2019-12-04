using NTD.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NTD.DAO
{
    public class UserDAO
    {
        private static UserDAO instance;

        public static UserDAO Instance
        { get { if (instance == null) instance = new UserDAO(); return instance; }
           private set => instance = value;
        }

        public db db = new db();

        public UserInfo Login(string userName, string password)
        {
            string sql = string.Format("select Id, RoleId, UserName, MaNV from [User] where UserName = '{0}' and Password = '{1}'", userName, password);

            var tb = db.GetData(sql);

            if (tb != null && tb.Rows.Count>0)
            {
                return new UserInfo
                {
                    Id = int.Parse(tb.Rows[0]["Id"].ToString()),
                    RoleId = int.Parse(tb.Rows[0]["RoleId"].ToString()),
                    maVN = tb.Rows[0]["MaNV"].ToString()
                };
            }
            
            return null;
        }

        
    }
}
