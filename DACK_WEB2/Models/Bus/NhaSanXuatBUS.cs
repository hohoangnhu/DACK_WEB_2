using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class NhaSanXuatBUS
    {
        public static IEnumerable<nhasanxuat> DanhSach()
        {
            var dsLoaiSanPham = new BabyShopConnectionDB();
            return dsLoaiSanPham.Query<nhasanxuat>("select * from NhaSanXuat where BiXoa=0 ");

        }
        public static IEnumerable<sanpham> ChiTiet(int id)
        {
            var db = new BabyShopConnectionDB();
            return db.Query<sanpham>("select * from SanPham where MaLoaiSanPham = @0", id);
        }
    }
}