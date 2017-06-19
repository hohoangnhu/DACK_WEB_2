using BabyShopConnection;
using PetaPoco;
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
                
                var ds = "INSERT INTO [dbo].[BinhLuan]([MaSanPham],[TenTaiKhoan],[MaTaiKhoan],[NoiDung])VALUES(@0,@1,@2,@3)";
                db.Execute(ds, MaSanPham, TenTaiKhoan, MaTaiKhoan, NoiDung);
            }
        }
        public static IEnumerable<BinhLuan> DanhSachBL(int MaSanPham)
        {
            using (var db = new BabyShopConnectionDB())
            {
                return db.Query<BinhLuan>("select * from BinhLuan where MaSanPham = @0 order by Ngay desc", MaSanPham);
            }
        }

       

    }
}