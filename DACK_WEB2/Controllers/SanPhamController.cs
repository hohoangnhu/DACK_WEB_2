using DACK_WEB2.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DACK_WEB2.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        public ActionResult Index(int page = 1)
        {

            var dsSanPham = SanPhamBus.HienThiDanhSachSanPham(page, 3);
            return View(dsSanPham);

        }

        // GET: SanPham/Details/5
        public ActionResult Details(int id)
        {
            var ctSanPham = SanPhamBus.ChiTietSanPham(id);
            return View(ctSanPham);
        }

        // GET: SanPham/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SanPham/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: SanPham/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: SanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: SanPham/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: SanPham/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TimKiem(string SearchTerm)
        {
            var dsSanPham = SanPhamBus.HienThiDanhSachSanPham();
            if (!String.IsNullOrEmpty(SearchTerm))
            {
                dsSanPham = SanPhamBus.TimKiem(SearchTerm);
            }
            ViewBag.SearchTerm = SearchTerm;
            return View(dsSanPham);
        }

        public ActionResult TKNangCao()
        {

            ViewBag.MaNhaSanXuat = new SelectList(NhaSanXuatBUS.DanhSach(), "MaNhaSanXuat", "TenNhaSanXuat");
            ViewBag.MaLoaiSanPham = new SelectList(LoaiSanPhamBUS.DanhSach(), "MaLoaiSanPham", "TenLoaiSanPham");

            return View();
        }

        public ActionResult TimKiemNangCao(string MaNhaSanXuat, string MaLoaiSanPham, string tensp, double giatu, double giaden, BabyShopConnection.sanpham sp)
        {
            var dsSanPham = SanPhamBus.HienThiDanhSachSanPham();

            dsSanPham = SanPhamBus.TimKiemNangCao(MaNhaSanXuat, MaLoaiSanPham, tensp, giatu, giaden);

            return View(dsSanPham);
        }
    }
}
