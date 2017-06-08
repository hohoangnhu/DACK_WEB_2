using BabyShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class BinhLuanBUS
    {
        public static void Them(int MaSanPham, string TenTaiKhoan, string MaTaiKhoan, string NoiDung)
        {
            using (var db = new BabyShopConnectionDB())
            {
                BinhLuan binhluan = new BinhLuan();
                binhluan.MaSanPham = MaSanPham;
                binhluan.MaTaiKhoan = MaTaiKhoan;
                binhluan.NoiDung = binhluan.NoiDung;
                db.Execute("INSERT INTO [dbo].[BinhLuan]([MaSanPham],[TenTaiKhoan],[MaTaiKhoan],[NoiDung])VALUES(@0,@1,@2,@3)", MaSanPham, TenTaiKhoan, MaTaiKhoan, NoiDung);
            }
        }
        public static IEnumerable<BinhLuan> DanhSach(int MaSanPham)
        {
            using (var db = new BabyShopConnectionDB())
            {
                return db.Query<BinhLuan>("select * from BinhLuan where MaSanPham = @0", MaSanPham);
            }
        }
    }
}