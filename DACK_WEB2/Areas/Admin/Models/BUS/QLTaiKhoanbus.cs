using BabyShopConnection;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DACK_WEB2.Areas.Admin.Models.BUS
{
    public class QLTaiKhoanbus
    {
        public static Page<AspNetUser> HienThiDanhSachTaiKhoan(int pageNumber, int itemPerpage)
        {
            var db = new BabyShopConnectionDB();
            return db.Page<AspNetUser>(pageNumber, itemPerpage, "SELECT * FROM AspNetUsers");
        }
    }
}