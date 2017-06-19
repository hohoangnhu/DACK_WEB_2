using DACK_WEB2.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using BabyShopConnection;

namespace DACK_WEB2.Controllers
{
    public class GioHangController : Controller
    {
        // [Authorize]
         //GET: GioHang
        public ActionResult Index()
        {
            return View(GioHangBUS.DanhSach(User.Identity.GetUserId()));
        }
    
        [HttpPost]
        public ActionResult Them( int maSanPham)
        {

            GioHangBUS.Them(maSanPham, User.Identity.GetUserId());
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult CapNhat(int id, int soLuong)
        {

            GioHangBUS.CapNhat(id, soLuong);
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult ThanhToan()
        {
            IEnumerable<v_GioHang> dsCTGH = GioHangBUS.DanhSach(User.Identity.GetUserId());
            int TongTien = 0;
            foreach (var item in dsCTGH)
            {
              TongTien += (int)item.SoLuong * (int)item.GiaBan;
            }
            ViewBag.Total = TongTien;
            ViewBag.id = User.Identity.GetUserId();
            // OrderBUS.Them(User.Identity.GetUserId(), TongTien);
            //GioHangBUS.remove(User.Identity.GetUserId());
            return View(dsCTGH);
        }

        public ActionResult removeproduct(int MaSanPham)
        {
            GioHangBUS.removeproduct(MaSanPham);
            return RedirectToAction("Index");
        }
    }
 
}