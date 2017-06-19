using BabyShopConnection;
using DACK_WEB2.Models.Bus;
using System;
using System.Collections.Generic;
using Microsoft.AspNet.Identity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace DACK_WEB2.Controllers
{
    public class BinhLuanApiController : ApiController
    {
        // GET: api/BinhLuanApi
        public IEnumerable<BinhLuan> Get(int maSanPham)
        {
            return BinhLuanBUS.DanhSachBL(maSanPham);
        }

        // GET: api/BinhLuanApi/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST: api/BinhLuanApi
        public void Post([FromBody]BinhLuan binhluan)
        {
            BinhLuanBUS.Them(binhluan.MaSanPham, User.Identity.GetUserId(), User.Identity.Name, binhluan.NoiDung);
        }

        // PUT: api/BinhLuanApi/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/BinhLuanApi/5
        public void Delete(int id)
        {
        }
    }
}
