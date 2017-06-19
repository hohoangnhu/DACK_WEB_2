using DACK_WEB2.Areas.Admin.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DACK_WEB2.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class QLTaiKhoanController : Controller
    {
        // GET: Admin/QLTaiKhoan
        public ActionResult Index(int page = 1)
        {
            var ds = QLTaiKhoanbus.HienThiDanhSachTaiKhoan(page, 3);
            return View(ds);
        }

        // GET: Admin/QLTaiKhoan/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QLTaiKhoan/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QLTaiKhoan/Create
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

        // GET: Admin/QLTaiKhoan/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/QLTaiKhoan/Edit/5
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

        // GET: Admin/QLTaiKhoan/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/QLTaiKhoan/Delete/5
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
    }
}
