using DACK_WEB2.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace DACK_WEB2.Controllers
{
    public class GioHangController : Controller
    {
         [Authorize]
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
    }
 
}