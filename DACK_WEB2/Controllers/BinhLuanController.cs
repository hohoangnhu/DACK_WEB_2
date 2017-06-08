using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using DACK_WEB2.Models.Bus;

namespace DACK_WEB2.Controllers
{
    public class BinhLuanController : Controller
    {
        // GET: BinhLuan
        [Authorize]
        public ActionResult Create(int MaSanPham = 0, String NoiDung = "")
        {
            if (MaSanPham == 0)
                return Redirect("/");

            BinhLuanBUS.Them(MaSanPham, User.Identity.Name, User.Identity.GetUserId(), NoiDung);
            return RedirectToAction("Details", "SanPham", new { Id = MaSanPham });
        }

        public ActionResult Index(int MaSanPham)
        {
            ViewBag.MaSanPham = MaSanPham;
            return View(BinhLuanBUS.DanhSach(MaSanPham));
        }
    }
}