using DACK_WEB2.Models.Bus;
using System.Web.Mvc;

namespace DACK_WEB2.Controllers
{
    public class NhaSanXuatController : Controller
    {
        // GET: NhaSanXuat
        public ActionResult Index(int id)
        {
            var dsLoaiSanPham = LoaiSanPhamBUS.ChiTiet(id);
            return View(dsLoaiSanPham);
        }

        // GET: NhaSanXuat/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: NhaSanXuat/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NhaSanXuat/Create
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

        // GET: NhaSanXuat/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: NhaSanXuat/Edit/5
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

        // GET: NhaSanXuat/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: NhaSanXuat/Delete/5
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
