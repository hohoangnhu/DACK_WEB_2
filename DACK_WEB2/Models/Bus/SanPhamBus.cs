﻿using BabyShopConnection;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Models.Bus
{
    public class SanPhamBus
    {
        public static IEnumerable<sanpham> HienThiDanhSachSanPham()
        {
            var db = new BabyShopConnectionDB();
            return db.Query<sanpham>("SELECT * FROM sanpham WHERE BiXoa <> 1 ORDER BY SoLuongBan DESC ");
        }
        public static Page<sanpham> HienThiDanhSachSanPham(int pageNumber, int itemPerPage)
        {
            var db = new BabyShopConnectionDB();
            return db.Page<sanpham>(pageNumber, itemPerPage, "SELECT * FROM sanpham WHERE BiXoa <> 1 ORDER BY SoLuongBan DESC ");
        }
        public static sanpham ChiTietSanPham(int id)
        {
            var db = new BabyShopConnectionDB();
            return db.SingleOrDefault<sanpham>(" SELECT s.MaSanPham, s.TenSanPham, s.GiaBan, s.SoLuongTon, s.SoLuongXem, "
                                               + "s.HinhAnh, s.MoTa, n.TenNhaSanXuat,l.TenLoaiSanPham, s.MaLoaiSanPham, s.XuatXu "
                                               + "FROM SanPham s, NhaSanXuat n, LoaiSanPham l "
                                               + "WHERE s.BiXoa = 0 AND s.MaNhaSanXuat = n.MaNhaSanXuat "
                                               + "AND s.MaLoaiSanPham = l.MaLoaiSanPham AND s.MaSanPham = @0", id);
        }

        public static IEnumerable<BabyShopConnection.sanpham> TimKiem(string q)
        {
            var db = new BabyShopConnectionDB();
            var a = db.Query<BabyShopConnection.sanpham>("select * from sanpham where TenSanPham like '%" + q + "%'");
            return a;
        }

        public static IEnumerable<BabyShopConnection.sanpham> TimKiemNangCao(string nsx, string lsp, string tensp, double giatu, double giaden)
        {
            var db = new BabyShopConnectionDB();
            return db.Query<BabyShopConnection.sanpham>("select * from sanpham where TenSanPham like N'%" + tensp + "%' AND MaLoaiSanPham =" + lsp + " AND MaNhaSanXuat =" + nsx + " AND GiaBan >" + giatu + " AND GiaBan <" + giaden);

        }

    }
}