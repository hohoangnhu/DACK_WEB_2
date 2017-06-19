using BabyShopConnection;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Areas.Admin.Models.BUS
{
    public class QLloaisanphambus
    {
        public static IEnumerable<loaisanpham> HienThiLoaiSanPham()
        {
            using (var db = new BabyShopConnectionDB())
            {
                return db.Query<loaisanpham>("SELECT * FROM loaisanpham WHERE BiXoa = 0");
            }
        }
        public static void ThemLoaiSanPham(loaisanpham lsp)
        {
            var db = new BabyShopConnectionDB();
            db.Insert(lsp);
        }
        public static void EditLoaiSanPham(int id, loaisanpham lsp)
        {
            var db = new BabyShopConnectionDB();
            db.Update<loaisanpham>("SET TenLoaiSanPham=@0, BiXoa = @1 where MaLoaiSanPham=@2", lsp.TenLoaiSanPham, lsp.BiXoa, id);
        }
        public static loaisanpham ChiTietLoaiSanPham(int id)
        {
            var db = new BabyShopConnectionDB();
            return db.SingleOrDefault<loaisanpham>("SELECT * FROM loaisanpham WHERE MaLoaiSanPham = @0", id);
        }
        public static Page<loaisanpham> HienThiDanhSachLoaiSanPham(int pageNumber, int itemPerpage)
        {
            var db = new BabyShopConnectionDB();
            return db.Page<loaisanpham>(pageNumber, itemPerpage, "SELECT * FROM LoaiSanPham WHERE BiXoa <> 1 ");
        }
    }
}