using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class GioHangBUS
    {
        public static void Them( int maSanPham, String maTaiKhoan)
        {
            using (var db = new BabyShopConnectionDB())
            {
                GioHang gioHang = new GioHang()
                {
                    MaSanPham = maSanPham,
                    MaTaiKhoan = maTaiKhoan,
                    SoLuong = 1
                };
                db.Insert(gioHang);
            }
        }
        public static IEnumerable<v_GioHang> DanhSach(string maTaiKhoan)
        {
            using (var db = new BabyShopConnectionDB())
            {
                return db.Query<v_GioHang>("select * from v_GioHang where MaTaiKhoan = @0", maTaiKhoan);

            }
        }
    }
}