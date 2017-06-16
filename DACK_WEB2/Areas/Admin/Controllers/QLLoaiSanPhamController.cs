﻿using BabyShopConnection;
using DACK_WEB2.Areas.Admin.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DACK_WEB2.Areas.Admin.Controllers
{
    [Authorize(Roles = "Admin")]
    public class QLLoaiSanPhamController : Controller
    {
        // GET: Admin/QLLoaiSanPham
        public ActionResult Index(int page = 1)
        {
            var ds = QLloaisanphambus.HienThiDanhSachLoaiSanPham(page,3);
            return View(ds);
        }

        // GET: Admin/QLLoaiSanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QLLoaiSanPham/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QLLoaiSanPham/Create
        [HttpPost]
        public ActionResult Create(loaisanpham lsp)
        {

            QLloaisanphambus.ThemLoaiSanPham(lsp);
            return RedirectToAction("Index");
        }

        // GET: Admin/QLLoaiSanPham/Edit/5
        public ActionResult Edit(int id)
        {
            return View(QLloaisanphambus.ChiTietLoaiSanPham(id));
        }

        // POST: Admin/QLLoaiSanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, loaisanpham lsp)
        {
            //try
            //{
            //    // TODO: Add update logic here

            //    return RedirectToAction("Index");
            //}
            //catch
            //{
            //    return View();
            //}
           QLloaisanphambus.EditLoaiSanPham(id, lsp);
            return RedirectToAction("Index");


        }

        // GET: Admin/QLLoaiSanPham/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/QLLoaiSanPham/Delete/5
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
