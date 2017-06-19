using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class ThongTinBus
    {
        public static AspNetUser layThongTin(string id)
        {
            using (var db = new BabyShopConnectionDB())
            {
                return db.SingleOrDefault<AspNetUser>("Select FullName , NgaySinh , GenDer From AspNetUsers Where Id = @0", id);
            }
        }
    }
}