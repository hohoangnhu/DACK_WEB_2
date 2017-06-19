using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Areas.Admin.Models.BUS
{
    public class QLThongKe
    {
        public static IEnumerable<sanpham> GetTop10()
        {
            using (var db = new BabyShopConnectionDB())
            {
                return db.Query<sanpham>("Select * from SanPham where MaSanPham in (select top 10 MaSanPham from chitietdondathang Group by MaSanPham ORDER BY SUM(SoLuong) DESC)");
            }
        }
    }
}