using BabyShopConnection;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Areas.Admin.Models.BUS
{
    public class QLsanphambus
    {
        public static IEnumerable<sanpham> DanhSachSanPham()
        {
            var db = new BabyShopConnectionDB();
            return db.Query<sanpham>("SELECT * FROM SanPham WHERE BiXoa <> 1 ORDER BY MaSanPham DESC");
        }

        public static sanpham ChiTietSanPham(int id)
        {
            var db = new BabyShopConnectionDB();
            return db.SingleOrDefault<sanpham>("SELECT * FROM SanPham WHERE MaSanPham = @0", id);
        }

        public static void ThemSanPham(sanpham sp)
        {
            var db = new BabyShopConnectionDB();
            db.Insert(sp);
        }

        public static void EditSanPham(int id, sanpham sp)
        {
            var db = new BabyShopConnectionDB();
            db.Update<sanpham>("SET TenSanPham=@0, MoTa=@1, XuatXu=@2, MaNhaSanXuat=@3, GiaBan=@4, SoLuongBan=@5, SoLuongTon=@6, MaLoaiSanPham=@7, HinhAnh=@8 where MaSanPham=@9", sp.TenSanPham, sp.MoTa, sp.XuatXu, sp.MaNhaSanXuat, sp.GiaBan, sp.SoLuongBan, sp.SoLuongTon, sp.MaLoaiSanPham, sp.HinhAnh, id);
        }

        public static void DeleteSanPham(int id, sanpham sp)
        {
            var db = new BabyShopConnectionDB();
            db.Delete<sanpham>("WHERE MaSanPham = @0", id);
        }
        public static Page<sanpham> HienThiDanhSachSanPham(int pageNumber, int itemPerpage)
        {
            var db = new BabyShopConnectionDB();
            return db.Page<sanpham>(pageNumber, itemPerpage, "select sp.*, lsp.TenLoaiSanPham as TenLoai, nsx.TenNhaSanXuat as TenNSX "
                                                             + "from sanpham sp join loaisanpham lsp on sp.MaLoaiSanPham = lsp.MaLoaiSanPham join nhasanxuat nsx on sp.MaNhaSanXuat = nsx.MaNhaSanXuat"
                                                             + "WHERE sp.BiXoa <> 1 ORDER BY sp.SoLuongBan DESC");
        }
        public static PetaPoco.Page<sanpham> TimKiem(string key, string order, int pgNumb = 1, int itemsPerPg = 20)
        {
            var db = new BabyShopConnectionDB();
            var sql = string.Format("select * from sanpham where khoa=0 {0} order by ngaycapnhat desc {1}", string.IsNullOrEmpty(key) ? "" : " and " + key, string.IsNullOrEmpty(order) ? "" : ", " + order);
            return db.Page<sanpham>(pgNumb, itemsPerPg, sql);
        }
    }
}