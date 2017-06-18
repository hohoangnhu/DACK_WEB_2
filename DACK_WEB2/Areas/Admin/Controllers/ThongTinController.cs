using DACK_WEB2.Models.Bus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DACK_WEB2.Areas.Admin.Controllers
{
    public class ThongTinController : Controller
    {
        // GET: Admin/ThongTin
        public ActionResult Index(int id)
        {
            var ctSanPham = ThongTinBus.ThongTin(id);
            return View(ctSanPham);
        }

        // GET: Admin/ThongTin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ThongTin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ThongTin/Create
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

        // GET: Admin/ThongTin/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/ThongTin/Edit/5
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

        // GET: Admin/ThongTin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/ThongTin/Delete/5
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
