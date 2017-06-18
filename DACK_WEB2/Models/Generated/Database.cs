
// This file was automatically generated by the PetaPoco T4 Template
// Do not make changes directly to this file - edit the template instead
// 
// The following connection settings were used to generate this file
// 
//     Connection String Name: `BabyShopConnection`
//     Provider:               `System.Data.SqlClient`
//     Connection String:      `Data Source=DESKTOP-RH4N778\SQLEXPRESS;Initial Catalog=babyshop5;Integrated Security=True`
//     Schema:                 ``
//     Include Views:          `True`

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;

namespace BabyShopConnection
{
	public partial class BabyShopConnectionDB : Database
	{
		public BabyShopConnectionDB() 
			: base("BabyShopConnection")
		{
			CommonConstruct();
		}

		public BabyShopConnectionDB(string connectionStringName) 
			: base(connectionStringName)
		{
			CommonConstruct();
		}
		
		partial void CommonConstruct();
		
		public interface IFactory
		{
			BabyShopConnectionDB GetInstance();
		}
		
		public static IFactory Factory { get; set; }
        public static BabyShopConnectionDB GetInstance()
        {
			if (_instance!=null)
				return _instance;
				
			if (Factory!=null)
				return Factory.GetInstance();
			else
				return new BabyShopConnectionDB();
        }

		[ThreadStatic] static BabyShopConnectionDB _instance;
		
		public override void OnBeginTransaction()
		{
			if (_instance==null)
				_instance=this;
		}
		
		public override void OnEndTransaction()
		{
			if (_instance==this)
				_instance=null;
		}
        
		public class Record<T> where T:new()
		{
			public static BabyShopConnectionDB repo { get { return BabyShopConnectionDB.GetInstance(); } }
			public bool IsNew() { return repo.IsNew(this); }
			public object Insert() { return repo.Insert(this); }
			public void Save() { repo.Save(this); }
			public int Update() { return repo.Update(this); }
			public int Update(IEnumerable<string> columns) { return repo.Update(this, columns); }
			public static int Update(string sql, params object[] args) { return repo.Update<T>(sql, args); }
			public static int Update(Sql sql) { return repo.Update<T>(sql); }
			public int Delete() { return repo.Delete(this); }
			public static int Delete(string sql, params object[] args) { return repo.Delete<T>(sql, args); }
			public static int Delete(Sql sql) { return repo.Delete<T>(sql); }
			public static int Delete(object primaryKey) { return repo.Delete<T>(primaryKey); }
			public static bool Exists(object primaryKey) { return repo.Exists<T>(primaryKey); }
			public static bool Exists(string sql, params object[] args) { return repo.Exists<T>(sql, args); }
			public static T SingleOrDefault(object primaryKey) { return repo.SingleOrDefault<T>(primaryKey); }
			public static T SingleOrDefault(string sql, params object[] args) { return repo.SingleOrDefault<T>(sql, args); }
			public static T SingleOrDefault(Sql sql) { return repo.SingleOrDefault<T>(sql); }
			public static T FirstOrDefault(string sql, params object[] args) { return repo.FirstOrDefault<T>(sql, args); }
			public static T FirstOrDefault(Sql sql) { return repo.FirstOrDefault<T>(sql); }
			public static T Single(object primaryKey) { return repo.Single<T>(primaryKey); }
			public static T Single(string sql, params object[] args) { return repo.Single<T>(sql, args); }
			public static T Single(Sql sql) { return repo.Single<T>(sql); }
			public static T First(string sql, params object[] args) { return repo.First<T>(sql, args); }
			public static T First(Sql sql) { return repo.First<T>(sql); }
			public static List<T> Fetch(string sql, params object[] args) { return repo.Fetch<T>(sql, args); }
			public static List<T> Fetch(Sql sql) { return repo.Fetch<T>(sql); }
			public static List<T> Fetch(long page, long itemsPerPage, string sql, params object[] args) { return repo.Fetch<T>(page, itemsPerPage, sql, args); }
			public static List<T> Fetch(long page, long itemsPerPage, Sql sql) { return repo.Fetch<T>(page, itemsPerPage, sql); }
			public static List<T> SkipTake(long skip, long take, string sql, params object[] args) { return repo.SkipTake<T>(skip, take, sql, args); }
			public static List<T> SkipTake(long skip, long take, Sql sql) { return repo.SkipTake<T>(skip, take, sql); }
			public static Page<T> Page(long page, long itemsPerPage, string sql, params object[] args) { return repo.Page<T>(page, itemsPerPage, sql, args); }
			public static Page<T> Page(long page, long itemsPerPage, Sql sql) { return repo.Page<T>(page, itemsPerPage, sql); }
			public static IEnumerable<T> Query(string sql, params object[] args) { return repo.Query<T>(sql, args); }
			public static IEnumerable<T> Query(Sql sql) { return repo.Query<T>(sql); }
		}
	}
	

    
	[TableName("dbo.__MigrationHistory")]
	[PrimaryKey("MigrationId", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class __MigrationHistory : BabyShopConnectionDB.Record<__MigrationHistory>  
    {
		[Column] public string MigrationId { get; set; }
		[Column] public string ContextKey { get; set; }
		[Column] public byte[] Model { get; set; }
		[Column] public string ProductVersion { get; set; }
	}
    
	[TableName("dbo.AspNetRoles")]
	[PrimaryKey("Id", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class AspNetRole : BabyShopConnectionDB.Record<AspNetRole>  
    {
		[Column] public string Id { get; set; }
		[Column] public string Name { get; set; }
	}
    
	[TableName("dbo.AspNetUserClaims")]
	[PrimaryKey("Id")]
	[ExplicitColumns]
    public partial class AspNetUserClaim : BabyShopConnectionDB.Record<AspNetUserClaim>  
    {
		[Column] public int Id { get; set; }
		[Column] public string UserId { get; set; }
		[Column] public string ClaimType { get; set; }
		[Column] public string ClaimValue { get; set; }
	}
    
	[TableName("dbo.AspNetUserLogins")]
	[PrimaryKey("LoginProvider", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class AspNetUserLogin : BabyShopConnectionDB.Record<AspNetUserLogin>  
    {
		[Column] public string LoginProvider { get; set; }
		[Column] public string ProviderKey { get; set; }
		[Column] public string UserId { get; set; }
	}
    
	[TableName("dbo.AspNetUserRoles")]
	[PrimaryKey("UserId", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class AspNetUserRole : BabyShopConnectionDB.Record<AspNetUserRole>  
    {
		[Column] public string UserId { get; set; }
		[Column] public string RoleId { get; set; }
	}
    
	[TableName("dbo.AspNetUsers")]
	[PrimaryKey("Id", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class AspNetUser : BabyShopConnectionDB.Record<AspNetUser>  
    {
		[Column] public string Id { get; set; }
		[Column] public string Email { get; set; }
		[Column] public bool EmailConfirmed { get; set; }
		[Column] public string PasswordHash { get; set; }
		[Column] public string SecurityStamp { get; set; }
		[Column] public string PhoneNumber { get; set; }
		[Column] public bool PhoneNumberConfirmed { get; set; }
		[Column] public bool TwoFactorEnabled { get; set; }
		[Column] public DateTime? LockoutEndDateUtc { get; set; }
		[Column] public bool LockoutEnabled { get; set; }
		[Column] public int AccessFailedCount { get; set; }
		[Column] public string UserName { get; set; }
	}
    
	[TableName("dbo.BinhLuan")]
	[PrimaryKey("MaBinhLuan")]
	[ExplicitColumns]
    public partial class BinhLuan : BabyShopConnectionDB.Record<BinhLuan>  
    {
		[Column] public int MaBinhLuan { get; set; }
		[Column] public int MaSanPham { get; set; }
		[Column] public string TenTaiKhoan { get; set; }
		[Column] public string MaTaiKhoan { get; set; }
		[Column] public string NoiDung { get; set; }
		[Column] public int? TinhTrang { get; set; }
		[Column] public DateTime Ngay { get; set; }
	}
    
	[TableName("dbo.chitietdondathang")]
	[PrimaryKey("MaChiTietDDH", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class chitietdondathang : BabyShopConnectionDB.Record<chitietdondathang>  
    {
		[Column] public string MaChiTietDDH { get; set; }
		[Column] public string MaDonDatHang { get; set; }
		[Column] public int MaSanPham { get; set; }
		[Column] public int? GiaBan { get; set; }
		[Column] public int? SoLuong { get; set; }
	}
    
	[TableName("dbo.dondathang")]
	[PrimaryKey("MaDonDatHang", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class dondathang : BabyShopConnectionDB.Record<dondathang>  
    {
		[Column] public string MaDonDatHang { get; set; }
		[Column] public DateTime? NgayLap { get; set; }
		[Column] public int? TongThanhTien { get; set; }
		[Column] public int MaTaiKhoan { get; set; }
		[Column] public int MaTinhTrang { get; set; }
	}
    
	[TableName("dbo.GioHang")]
	[PrimaryKey("id")]
	[ExplicitColumns]
    public partial class GioHang : BabyShopConnectionDB.Record<GioHang>  
    {
		[Column] public int id { get; set; }
		[Column] public string MaTaiKhoan { get; set; }
		[Column] public int MaSanPham { get; set; }
		[Column] public int SoLuong { get; set; }
	}
    
	[TableName("dbo.loaisanpham")]
	[PrimaryKey("MaLoaiSanPham", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class loaisanpham : BabyShopConnectionDB.Record<loaisanpham>  
    {
		[Column] public int MaLoaiSanPham { get; set; }
		[Column] public string TenLoaiSanPham { get; set; }
		[Column] public int? BiXoa { get; set; }
	}
    
	[TableName("dbo.loaitaikhoan")]
	[PrimaryKey("MaLoaiTaiKhoan", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class loaitaikhoan : BabyShopConnectionDB.Record<loaitaikhoan>  
    {
		[Column] public int MaLoaiTaiKhoan { get; set; }
		[Column] public string LoaiTaiKhoan { get; set; }
	}
    
	[TableName("dbo.nhasanxuat")]
	[PrimaryKey("MaNhaSanXuat", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class nhasanxuat : BabyShopConnectionDB.Record<nhasanxuat>  
    {
		[Column] public int MaNhaSanXuat { get; set; }
		[Column] public string TenNhaSanXuat { get; set; }
		[Column] public string LoGoURL { get; set; }
		[Column] public int? BiXoa { get; set; }
	}
    
	[TableName("dbo.sanpham")]
	[PrimaryKey("MaSanPham")]
	[ExplicitColumns]
    public partial class sanpham : BabyShopConnectionDB.Record<sanpham>  
    {
		[Column] public int MaSanPham { get; set; }
		[Column] public string TenSanPham { get; set; }
		[Column] public string MoTa { get; set; }
		[Column] public string XuatXu { get; set; }
		[Column] public int MaNhaSanXuat { get; set; }
		[Column] public int? GiaBan { get; set; }
		[Column] public DateTime? NgayNhap { get; set; }
		[Column] public int? SoLuongBan { get; set; }
		[Column] public int? SoLuongTon { get; set; }
		[Column] public int MaLoaiSanPham { get; set; }
		[Column] public int? SoLuongXem { get; set; }
		[Column] public string HinhAnh { get; set; }
		[Column] public int? BiXoa { get; set; }
	}
    
	[TableName("dbo.taikhoan")]
	[PrimaryKey("MaTaiKhoan", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class taikhoan : BabyShopConnectionDB.Record<taikhoan>  
    {
		[Column] public int MaTaiKhoan { get; set; }
		[Column] public string TenTaiKhoan { get; set; }
		[Column] public string MatKhau { get; set; }
		[Column] public string TenHienThi { get; set; }
		[Column] public DateTime? NgaySinh { get; set; }
		[Column] public int? BiXoa { get; set; }
		[Column] public int MaLoaiTaiKhoan { get; set; }
		[Column] public string NoiSong { get; set; }
	}
    
	[TableName("dbo.trangthai")]
	[PrimaryKey("MaTinhTrang", AutoIncrement=false)]
	[ExplicitColumns]
    public partial class trangthai : BabyShopConnectionDB.Record<trangthai>  
    {
		[Column] public int MaTinhTrang { get; set; }
		[Column] public string TenTinhTrang { get; set; }
	}
    
	[TableName("dbo.v_GioHang")]
	[ExplicitColumns]
    public partial class v_GioHang : BabyShopConnectionDB.Record<v_GioHang>  
    {
		[Column] public int id { get; set; }
		[Column] public string MaTaiKhoan { get; set; }
		[Column] public int MaSanPham { get; set; }
		[Column] public int SoLuong { get; set; }
		[Column] public string TenSanPham { get; set; }
	}
}
