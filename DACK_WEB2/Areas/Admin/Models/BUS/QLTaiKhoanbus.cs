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
        static BabyShopConnectionDB db = new BabyShopConnectionDB();
        public static Page<AspNetUser> HienThiDanhSachTaiKhoan(int pageNumber, int itemPerpage)
        {
            return db.Page<AspNetUser>(pageNumber, itemPerpage, "SELECT * FROM AspNetUsers");
        }

        public static PetaPoco.Page<dynamic> DanhSachFull(int pgNumb = 1, int itemsPerPg = 20)
        {
            var sql = "select u.*, r.name as RoleName, ur.roleid as RoleId from aspnetusers u left join aspnetuserroles ur on ur.userid=u.id left join aspnetroles r on ur.roleid=r.id";
            return db.Page<dynamic>(pgNumb, itemsPerPg, sql);
        }
    }
}