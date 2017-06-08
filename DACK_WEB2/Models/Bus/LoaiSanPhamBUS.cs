using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<loaisanpham> DanhSach()
        {
            var dsLoaiSanPham = new BabyShopConnectionDB();
            return dsLoaiSanPham.Query<loaisanpham>("select * from loaisanpham where BiXoa=0 ");

        }
        public static IEnumerable<sanpham> ChiTiet(int id)
        {
            var db = new BabyShopConnectionDB();
            return db.Query<sanpham>("select * from sanpham where MaLoaiSanPham = @0", id);
        }
    }
}