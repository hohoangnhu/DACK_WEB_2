using DACK_WEB2.Areas.Admin.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DACK_WEB2.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        // GET: Admin/ThongKe
        public ActionResult Index()
        {
            ViewBag.Top10 = QLThongKe.GetTop10();
            return View();
        }

        // GET: Admin/ThongKe/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ThongKe/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ThongKe/Create
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

        // GET: Admin/ThongKe/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/ThongKe/Edit/5
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

        // GET: Admin/ThongKe/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/ThongKe/Delete/5
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
