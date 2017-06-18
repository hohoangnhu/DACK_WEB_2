using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class ThongTinBus
    {
        public static IEnumerable<AspNetUser> ThongTin(int id)
        {
            var db = new BabyShopConnectionDB();
            return db.Query<AspNetUser>("SELECT FullName, Gender, GiaBan, NgaySinh"
                                        + " FROM AspNetUsers WHEE Id = @", id);
        }
    }
}