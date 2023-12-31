USE [db_QuanLyHeThongNhaThuocLongChau]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyenKhongMatKhau'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyenKhongMatKhau'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyen'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyen'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_SanPham'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_SanPham'
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTaiKhoan]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_XoaTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_XoaSanPham]
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_XoaPhieuThu]
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaKhachhang]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_XoaKhachhang]
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaCTPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_XoaCTPhieuThu]
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemTenTaiKhoan]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_TimKiemTenTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_TimKiemSanPham]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiKhoan]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ThemTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ThemSanPham]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ThemPhieuThu]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ThemNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemKhachHang]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ThemKhachHang]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemCTPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ThemCTPhieuThu]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTTKhachHang]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_SuaTTKhachHang]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiKhoan]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_SuaTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_SuaSanPham]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_SuaPhieuThu]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaNhanVien]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_SuaNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaCTPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_SuaCTPhieuThu]
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowViewSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_ShowViewSanPham]
GO
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP PROCEDURE [dbo].[sp_DoiMatKhau]
GO
ALTER TABLE [dbo].[tbl_ThanhVienKiemKe] DROP CONSTRAINT [FK_ThanhVienKiemKe_NhanVien]
GO
ALTER TABLE [dbo].[tbl_ThanhVienKiemKe] DROP CONSTRAINT [FK_ThanhVienKiemKe_BienBanKiemKe]
GO
ALTER TABLE [dbo].[tbl_ThanhVienHuy] DROP CONSTRAINT [FK_ThanhVienHuy_NhanVien]
GO
ALTER TABLE [dbo].[tbl_ThanhVienHuy] DROP CONSTRAINT [FK_ThanhVienHuy_BienBanHuy]
GO
ALTER TABLE [dbo].[tbl_TaiKhoan] DROP CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[tbl_SanPham] DROP CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[tbl_SanPham] DROP CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[tbl_PhieuYeuCau] DROP CONSTRAINT [FK_PhieuYeuCau_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho] DROP CONSTRAINT [FK_PhieuXuatKho_NhanVienLay]
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho] DROP CONSTRAINT [FK_PhieuXuatKho_NhanVienLap]
GO
ALTER TABLE [dbo].[tbl_PhieuThu] DROP CONSTRAINT [FK_PhieuThu_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuThu] DROP CONSTRAINT [FK_PhieuThu_KhachHang]
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho] DROP CONSTRAINT [FK_PhieuNhapKho_PhieuGiaoHang]
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho] DROP CONSTRAINT [FK_PhieuNhapKho_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang] DROP CONSTRAINT [FK_PhieuGiaoHang_PhieuDatHang]
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang] DROP CONSTRAINT [FK_PhieuGiaoHang_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuDatHang] DROP CONSTRAINT [FK_PhieuDatHang_PhieuYeuCau]
GO
ALTER TABLE [dbo].[tbl_PhieuDatHang] DROP CONSTRAINT [FK_PhieuDatHang_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuChi] DROP CONSTRAINT [FK_PhieuChi_PhieuNhap]
GO
ALTER TABLE [dbo].[tbl_PhieuChi] DROP CONSTRAINT [FK_PhieuChi_NhanVien]
GO
ALTER TABLE [dbo].[tbl_NhanVien] DROP CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap] DROP CONSTRAINT [FK_HopDongCungCap_NhanVien]
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap] DROP CONSTRAINT [FK_HopDongCungCap_NhaCungCap]
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau] DROP CONSTRAINT [FK_CTPhieuYeuCau_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau] DROP CONSTRAINT [FK_CTPhieuYeuCau_PhieuYeuCau]
GO
ALTER TABLE [dbo].[tbl_CTPhieuXuatKho] DROP CONSTRAINT [FK_CTPhieuXuatKho_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuXuatKho] DROP CONSTRAINT [FK_CTPhieuXuatKho_PhieuXuatKho]
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu] DROP CONSTRAINT [FK_CTPhieuThu_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu] DROP CONSTRAINT [FK_CTPhieuThu_PhieuThu]
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho] DROP CONSTRAINT [FK_CTPhieuNhapKho_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho] DROP CONSTRAINT [FK_CTPhieuNhapKho_PhieuNhapKho]
GO
ALTER TABLE [dbo].[tbl_CTPhieuGiao] DROP CONSTRAINT [FK_CTPhieuGiao_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuGiao] DROP CONSTRAINT [FK_CTPhieuGiao_PhieuGiaoHang]
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang] DROP CONSTRAINT [FK_CTPhieuDatHang_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang] DROP CONSTRAINT [FK_CTPhieuDatHang_PhieuDatHang]
GO
ALTER TABLE [dbo].[tbl_CTPhieuChi] DROP CONSTRAINT [FK_CTPhieuChi_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuChi] DROP CONSTRAINT [FK_CTPhieuChi_PhieuChi]
GO
ALTER TABLE [dbo].[tbl_CTHopDongCungCap] DROP CONSTRAINT [FK_CTHopDongCungCap_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTHopDongCungCap] DROP CONSTRAINT [FK_CTHopDongCungCap_HopDongCungCap]
GO
ALTER TABLE [dbo].[tbl_CTBienBanKiemKe] DROP CONSTRAINT [FK_CTBienBanKiemKe_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTBienBanKiemKe] DROP CONSTRAINT [FK_CTBienBanKiemKe_BienBanKiemKe]
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy] DROP CONSTRAINT [FK_CTBienBanHuy_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy] DROP CONSTRAINT [FK_CTBienBanHuy_BienBanHuy]
GO
ALTER TABLE [dbo].[tbl_CTBaoCaoThuChi] DROP CONSTRAINT [FK_CTBaoCaoThuChi_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTBaoCaoThuChi] DROP CONSTRAINT [FK_CTBaoCaoThuChi_BaoCaoThuChi]
GO
ALTER TABLE [dbo].[tbl_BienBanKiemKe] DROP CONSTRAINT [FK_BienBanKiemKe_NhanVien]
GO
ALTER TABLE [dbo].[tbl_BienBanHuy] DROP CONSTRAINT [FK_BienBanHuy_NhanVien]
GO
ALTER TABLE [dbo].[tbl_BaoCaoThuChi] DROP CONSTRAINT [FK_BaoCaoThuChi_NhanVien]
GO
ALTER TABLE [dbo].[tbl_SanPham] DROP CONSTRAINT [DF__tbl_SanPham__iSL__1D7B6025]
GO
ALTER TABLE [dbo].[tbl_PhieuYeuCau] DROP CONSTRAINT [DF__tbl_Phieu__dTgLa__1C873BEC]
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho] DROP CONSTRAINT [DF__tbl_Phieu__dTgLa__1B9317B3]
GO
ALTER TABLE [dbo].[tbl_PhieuThu] DROP CONSTRAINT [DF__tbl_Phieu__dTgLa__1A9EF37A]
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho] DROP CONSTRAINT [DF__tbl_Phieu__dTgLa__19AACF41]
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang] DROP CONSTRAINT [DF__tbl_Phieu__dTgLa__18B6AB08]
GO
ALTER TABLE [dbo].[tbl_PhieuChi] DROP CONSTRAINT [DF__tbl_Phieu__dTgLa__17C286CF]
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap] DROP CONSTRAINT [DF__tbl_HopDo__dTgLa__16CE6296]
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau] DROP CONSTRAINT [DF__tbl_CTPhi__iSLCa__15DA3E5D]
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu] DROP CONSTRAINT [DF__tbl_CTPhieu__iSL__14E61A24]
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho] DROP CONSTRAINT [DF__tbl_CTPhieu__iSL__13F1F5EB]
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang] DROP CONSTRAINT [DF__tbl_CTPhieu__iSL__12FDD1B2]
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy] DROP CONSTRAINT [DF__tbl_CTBienB__iSL__1209AD79]
GO
ALTER TABLE [dbo].[tbl_BienBanKiemKe] DROP CONSTRAINT [DF__tbl_BienB__dTgLa__11158940]
GO
ALTER TABLE [dbo].[tbl_BienBanHuy] DROP CONSTRAINT [DF__tbl_BienB__dTgLa__10216507]
GO
ALTER TABLE [dbo].[tbl_BaoCaoThuChi] DROP CONSTRAINT [DF__tbl_BaoCa__dTgLa__0F2D40CE]
GO
/****** Object:  Table [dbo].[tbl_ThanhVienKiemKe]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ThanhVienKiemKe]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ThanhVienKiemKe]
GO
/****** Object:  Table [dbo].[tbl_ThanhVienHuy]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ThanhVienHuy]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ThanhVienHuy]
GO
/****** Object:  Table [dbo].[tbl_PhieuYeuCau]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuYeuCau]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuYeuCau]
GO
/****** Object:  Table [dbo].[tbl_PhieuXuatKho]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuXuatKho]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuXuatKho]
GO
/****** Object:  Table [dbo].[tbl_PhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuThu]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuThu]
GO
/****** Object:  Table [dbo].[tbl_PhieuNhapKho]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuNhapKho]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuNhapKho]
GO
/****** Object:  Table [dbo].[tbl_PhieuGiaoHang]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuGiaoHang]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuGiaoHang]
GO
/****** Object:  Table [dbo].[tbl_PhieuDatHang]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuDatHang]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuDatHang]
GO
/****** Object:  Table [dbo].[tbl_PhieuChi]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PhieuChi]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PhieuChi]
GO
/****** Object:  Table [dbo].[tbl_HopDongCungCap]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_HopDongCungCap]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_HopDongCungCap]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuYeuCau]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuYeuCau]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuYeuCau]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuXuatKho]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuXuatKho]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuXuatKho]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuThu]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuThu]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuThu]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuNhapKho]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuNhapKho]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuNhapKho]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuGiao]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuGiao]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuGiao]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuDatHang]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuDatHang]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuDatHang]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuChi]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTPhieuChi]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTPhieuChi]
GO
/****** Object:  Table [dbo].[tbl_CTHopDongCungCap]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTHopDongCungCap]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTHopDongCungCap]
GO
/****** Object:  Table [dbo].[tbl_CTBienBanKiemKe]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTBienBanKiemKe]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTBienBanKiemKe]
GO
/****** Object:  Table [dbo].[tbl_CTBienBanHuy]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTBienBanHuy]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTBienBanHuy]
GO
/****** Object:  Table [dbo].[tbl_CTBaoCaoThuChi]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CTBaoCaoThuChi]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CTBaoCaoThuChi]
GO
/****** Object:  Table [dbo].[tbl_BienBanKiemKe]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_BienBanKiemKe]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_BienBanKiemKe]
GO
/****** Object:  Table [dbo].[tbl_BienBanHuy]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_BienBanHuy]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_BienBanHuy]
GO
/****** Object:  Table [dbo].[tbl_BaoCaoThuChi]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_BaoCaoThuChi]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_BaoCaoThuChi]
GO
/****** Object:  View [dbo].[vv_TaiKhoanNhanVienQuyenKhongMatKhau]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_TaiKhoanNhanVienQuyenKhongMatKhau]
GO
/****** Object:  View [dbo].[vv_Quyen]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_Quyen]
GO
/****** Object:  View [dbo].[vv_NhaCungCap]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_NhaCungCap]
GO
/****** Object:  View [dbo].[vv_LoaiSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_LoaiSanPham]
GO
/****** Object:  View [dbo].[vv_TaiKhoanNhanVienQuyen]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_TaiKhoanNhanVienQuyen]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_NhanVien]
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_TaiKhoan]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_TaiKhoan]
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Quyen]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Quyen]
GO
/****** Object:  View [dbo].[vv_MaSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_MaSanPham]
GO
/****** Object:  View [dbo].[vv_Khachhang]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_Khachhang]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_KhachHang]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_KhachHang]
GO
/****** Object:  View [dbo].[vv_SanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP VIEW [dbo].[vv_SanPham]
GO
/****** Object:  Table [dbo].[tbl_NhaCungCap]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_NhaCungCap]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_NhaCungCap]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SanPham]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_SanPham]
GO
/****** Object:  Table [dbo].[tbl_LoaiSanPham]    Script Date: 2023/04/04 5:21:07 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_LoaiSanPham]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_LoaiSanPham]
GO
USE [master]
GO
/****** Object:  Database [db_QuanLyHeThongNhaThuocLongChau]    Script Date: 2023/04/04 5:21:07 PM ******/
DROP DATABASE [db_QuanLyHeThongNhaThuocLongChau]
GO
/****** Object:  Database [db_QuanLyHeThongNhaThuocLongChau]    Script Date: 2023/04/04 5:21:07 PM ******/
CREATE DATABASE [db_QuanLyHeThongNhaThuocLongChau]
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_QuanLyHeThongNhaThuocLongChau].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET RECOVERY FULL 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET  MULTI_USER 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_QuanLyHeThongNhaThuocLongChau', N'ON'
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET QUERY_STORE = OFF
GO
USE [db_QuanLyHeThongNhaThuocLongChau]
GO
/****** Object:  Table [dbo].[tbl_LoaiSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiSanPham](
	[PK_sMaLoai] [varchar](10) NOT NULL,
	[sTenLoai] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_sMaLoai] PRIMARY KEY CLUSTERED 
(
	[PK_sMaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[PK_sMaSP] [varchar](10) NOT NULL,
	[sTenSP] [nvarchar](100) NOT NULL,
	[sDonViTinh] [nvarchar](10) NOT NULL,
	[sHanDung] [nvarchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
	[fDonGiaBan] [float] NOT NULL,
	[FK_sMaLoai] [varchar](10) NOT NULL,
	[FK_sNhaCungCap] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[PK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhaCungCap]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhaCungCap](
	[PK_sMaNCC] [varchar](10) NOT NULL,
	[sTenNCC] [nvarchar](100) NOT NULL,
	[sDiaChi] [nvarchar](100) NULL,
	[sSDT] [varchar](10) NOT NULL,
	[sSoTK] [varchar](20) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[PK_sMaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_SanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_SanPham]
AS
SELECT    a.PK_sMaSP AS [Mã SP], a.sTenSP AS [Tên SP], dbo.tbl_NhaCungCap.sTenNCC AS [Tên NCC], b.sTenLoai AS Loại, a.sDonViTinh AS [Đơn vị tính], a.sHanDung AS [Hạn dùng], a.iSL AS [Số lượng tồn], 
                      a.fDonGiaBan AS [Giá bán]
FROM         dbo.tbl_SanPham AS a INNER JOIN
                      dbo.tbl_LoaiSanPham AS b ON b.PK_sMaLoai = a.FK_sMaLoai INNER JOIN
                      dbo.tbl_NhaCungCap ON a.FK_sNhaCungCap = dbo.tbl_NhaCungCap.PK_sMaNCC
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[PK_sMaKH] [varchar](10) NOT NULL,
	[sTenKH] [nvarchar](50) NOT NULL,
	[sSDT] [varchar](10) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[PK_sMaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_Khachhang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_Khachhang]
AS
	SELECT PK_sMaKH AS [Mã KH], sTenKH AS [Tên KH], sSDT AS [SĐT]
	FROM tbl_KhachHang
GO
/****** Object:  View [dbo].[vv_MaSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_MaSanPham]
AS
	SELECT PK_sMaSP AS [Mã SP], sTenSP AS [Tên SP]
	FROM tbl_SanPham
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Quyen](
	[PK_sMaQuyen] [varchar](10) NOT NULL,
	[sTenQuyen] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[PK_sMaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TaiKhoan](
	[PK_sMaTK] [varchar](10) NOT NULL,
	[sTenTK] [varchar](20) NOT NULL,
	[sMK] [varchar](20) NOT NULL,
	[FK_sMaQuyen] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[PK_sMaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVien](
	[PK_sMaNV] [varchar](10) NOT NULL,
	[FK_sMaTK] [varchar](10) NOT NULL,
	[sHoTen] [nvarchar](50) NOT NULL,
	[dNgaySinh] [datetime] NOT NULL,
	[sCCCD] [varchar](12) NOT NULL,
	[sSDT] [varchar](10) NOT NULL,
	[dNgayVaoLam] [datetime] NOT NULL,
	[sCVu] [nvarchar](20) NOT NULL,
	[bTrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[PK_sMaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vv_TaiKhoanNhanVienQuyen]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_TaiKhoanNhanVienQuyen]
AS
SELECT    a.PK_sMaNV AS [Mã NV], a.sHoTen AS [Tên NV], a.dNgaySinh AS [Ngày sinh], a.sCCCD AS CCCD, a.sSDT AS SĐT, a.dNgayVaoLam AS [Ngày vào làm], a.sCVu AS [Chức vụ], IIF(a.bTrangThai= 1, N'Bình thường', N'Khóa') AS [Trạng thái], 
                      a.FK_sMaTK AS [Mã TK], b.sTenTK AS [Tên tài khoản], b.sMK AS [Mật khẩu], b.FK_sMaQuyen AS [Mã quyền], c.sTenQuyen AS [Tên quyền]
FROM         dbo.tbl_NhanVien AS a INNER JOIN
                      dbo.tbl_TaiKhoan AS b ON b.PK_sMaTK = a.FK_sMaTK INNER JOIN
                      dbo.tbl_Quyen AS c ON c.PK_sMaQuyen = b.FK_sMaQuyen
GO
/****** Object:  View [dbo].[vv_LoaiSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_LoaiSanPham]
AS
	SELECT PK_sMaLoai AS [Mã loại], sTenLoai AS [Tên loại]
	FROM dbo.tbl_LoaiSanPham
GO
/****** Object:  View [dbo].[vv_NhaCungCap]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_NhaCungCap]
AS
	SELECT PK_sMaNCC AS [Mã NCC], sTenNCC AS [Tên NCC], sDiaChi AS [Địa chỉ], sSDT AS [SĐT], sSoTK AS [Số TK]
	FROM dbo.tbl_NhaCungCap
GO
/****** Object:  View [dbo].[vv_Quyen]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_Quyen]
AS
	SELECT PK_sMaQuyen AS [Mã quyền], sTenQuyen AS [Tên quyền]
	FROM dbo.tbl_Quyen
GO
/****** Object:  View [dbo].[vv_TaiKhoanNhanVienQuyenKhongMatKhau]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vv_TaiKhoanNhanVienQuyenKhongMatKhau]
AS
SELECT    a.PK_sMaNV AS [Mã NV], a.sHoTen AS [Tên NV], a.dNgaySinh AS [Ngày sinh], a.sCCCD AS CCCD, a.sSDT AS SĐT, a.dNgayVaoLam AS [Ngày vào làm], a.sCVu AS [Chức vụ], IIF(a.bTrangThai = 1, N'Bình thường', 
                      N'Khóa') AS [Trạng thái], a.FK_sMaTK AS [Mã TK], b.sTenTK AS [Tên tài khoản], b.FK_sMaQuyen AS [Mã quyền], c.sTenQuyen AS [Tên quyền]
FROM         dbo.tbl_NhanVien AS a INNER JOIN
                      dbo.tbl_TaiKhoan AS b ON b.PK_sMaTK = a.FK_sMaTK INNER JOIN
                      dbo.tbl_Quyen AS c ON c.PK_sMaQuyen = b.FK_sMaQuyen
GO
/****** Object:  Table [dbo].[tbl_BaoCaoThuChi]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BaoCaoThuChi](
	[PK_sMaBC] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[dTgBatDau] [datetime] NOT NULL,
	[dTgKetThuc] [datetime] NOT NULL,
	[bTrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_BaoCaoThuChi] PRIMARY KEY CLUSTERED 
(
	[PK_sMaBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BienBanHuy]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BienBanHuy](
	[PK_sMaBBH] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[sDiaDiemHuy] [nvarchar](100) NOT NULL,
	[dTgBatDau] [datetime] NOT NULL,
	[dTgKetThuc] [datetime] NOT NULL,
	[sPhuongThucHuy] [nvarchar](20) NOT NULL,
	[bTrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_BienBanHuy] PRIMARY KEY CLUSTERED 
(
	[PK_sMaBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BienBanKiemKe]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BienBanKiemKe](
	[PK_sMaBBK] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[sDiaDiemKiem] [nvarchar](100) NOT NULL,
	[dTgBatDau] [datetime] NOT NULL,
	[dTgKetThuc] [datetime] NOT NULL,
	[bTrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_BienBanKiemKe] PRIMARY KEY CLUSTERED 
(
	[PK_sMaBBK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTBaoCaoThuChi]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTBaoCaoThuChi](
	[PK_FK_sMaBC] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CTBaoCaoThuChi] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaBC] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTBienBanHuy]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTBienBanHuy](
	[PK_FK_sMaBBH] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
	[sLyDo] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CTBienBanHuy] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaBBH] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTBienBanKiemKe]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTBienBanKiemKe](
	[PK_FK_sMaBBK] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
 CONSTRAINT [PK_CTBienBanKiemKe] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaBBK] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTHopDongCungCap]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTHopDongCungCap](
	[PK_FK_sMaHD] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[fDonGia] [float] NOT NULL,
 CONSTRAINT [PK_CTHopDongCungCap] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaHD] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuChi]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuChi](
	[PK_FK_sMaPChi] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CTPhieuChi] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaPChi] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuDatHang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuDatHang](
	[PK_FK_sMaPDH] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaPDH] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuGiao]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuGiao](
	[PK_FK_sMaPGH] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuGiao] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaPGH] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuNhapKho]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuNhapKho](
	[PK_FK_sMaPN] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
	[sGhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_CTPhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaPN] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuThu](
	[PK_FK_sMaPT] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSL] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuThu] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaPT] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuXuatKho]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuXuatKho](
	[PK_FK_sMaPX] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSLYC] [int] NOT NULL,
	[iSLX] [int] NOT NULL,
	[sGhiChu] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTPhieuYeuCau]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTPhieuYeuCau](
	[PK_FK_sMaPYC] [varchar](10) NOT NULL,
	[PK_FK_sMaSP] [varchar](10) NOT NULL,
	[iSLCan] [int] NOT NULL,
	[iSLDuyet] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuYeuCau] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaPYC] ASC,
	[PK_FK_sMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HopDongCungCap]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HopDongCungCap](
	[PK_sMaHD] [varchar](10) NOT NULL,
	[FK_sMaNCC] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[dNgayBatDau] [datetime] NOT NULL,
	[dNgayketThuc] [datetime] NOT NULL,
 CONSTRAINT [PK_HopDongCungCap] PRIMARY KEY CLUSTERED 
(
	[PK_sMaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuChi]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuChi](
	[PK_sMaPChi] [varchar](10) NOT NULL,
	[FK_sMaPN] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[sHinhThucTT] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_PhieuChi] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuDatHang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuDatHang](
	[PK_sMaPDH] [varchar](10) NOT NULL,
	[FK_sMaPYC] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[bTrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_PhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuGiaoHang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuGiaoHang](
	[PK_sMaPGH] [varchar](10) NOT NULL,
	[FK_sMaPDH] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[sHoTenGH] [nvarchar](50) NOT NULL,
	[sSDTGH] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PhieuGiaoHang] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuNhapKho]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuNhapKho](
	[PK_sMaPN] [varchar](10) NOT NULL,
	[FK_sMaPGH] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuThu](
	[PK_sMaPT] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[FK_sMaKH] [varchar](10) NOT NULL,
	[sHinhThucTT] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_PhieuThu] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuXuatKho]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuXuatKho](
	[PK_sMaPX] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[FK_sMaNguoiLay] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PhieuXuatKho] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuYeuCau]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuYeuCau](
	[PK_sMaPYC] [varchar](10) NOT NULL,
	[dTgLap] [datetime] NOT NULL,
	[FK_sMaNguoiLap] [varchar](10) NOT NULL,
	[bTrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_PhieuYeuCau] PRIMARY KEY CLUSTERED 
(
	[PK_sMaPYC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThanhVienHuy]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThanhVienHuy](
	[PK_FK_MaBBH] [varchar](10) NOT NULL,
	[PK_FK_sMaNguoiHuy] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ThanhVienHuy] PRIMARY KEY CLUSTERED 
(
	[PK_FK_MaBBH] ASC,
	[PK_FK_sMaNguoiHuy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThanhVienKiemKe]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThanhVienKiemKe](
	[PK_FK_sMaBBK] [varchar](10) NOT NULL,
	[PK_FK_sMaNguoiKiem] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ThanhVienKiemKe] PRIMARY KEY CLUSTERED 
(
	[PK_FK_sMaBBK] ASC,
	[PK_FK_sMaNguoiKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_KhachHang] ([PK_sMaKH], [sTenKH], [sSDT]) VALUES (N'1', N'Nguyễn Văn A', N'0123456789')
GO
INSERT [dbo].[tbl_LoaiSanPham] ([PK_sMaLoai], [sTenLoai]) VALUES (N'L01', N'Thuốc giảm đau')
INSERT [dbo].[tbl_LoaiSanPham] ([PK_sMaLoai], [sTenLoai]) VALUES (N'L02', N'Thuốc gây mê')
INSERT [dbo].[tbl_LoaiSanPham] ([PK_sMaLoai], [sTenLoai]) VALUES (N'L03', N'Thuốc giảm đau')
INSERT [dbo].[tbl_LoaiSanPham] ([PK_sMaLoai], [sTenLoai]) VALUES (N'L04', N'Thuốc kháng sinh')
GO
INSERT [dbo].[tbl_NhaCungCap] ([PK_sMaNCC], [sTenNCC], [sDiaChi], [sSDT], [sSoTK]) VALUES (N'NCC01', N'Công ty Dược Việt Nam', NULL, N'0123456789', NULL)
INSERT [dbo].[tbl_NhaCungCap] ([PK_sMaNCC], [sTenNCC], [sDiaChi], [sSDT], [sSoTK]) VALUES (N'NCC02', N'Công ty Cổ phần Dược liệu TW2', NULL, N'0234567891', NULL)
INSERT [dbo].[tbl_NhaCungCap] ([PK_sMaNCC], [sTenNCC], [sDiaChi], [sSDT], [sSoTK]) VALUES (N'NCC03', N'Công ty Cổ phần Dược liệu TW3', NULL, N'0345678912', NULL)
INSERT [dbo].[tbl_NhaCungCap] ([PK_sMaNCC], [sTenNCC], [sDiaChi], [sSDT], [sSoTK]) VALUES (N'NCC04', N'Công ty Cổ phần thiết bị Y tế Medinsco', NULL, N'0456789123', NULL)
GO
INSERT [dbo].[tbl_NhanVien] ([PK_sMaNV], [FK_sMaTK], [sHoTen], [dNgaySinh], [sCCCD], [sSDT], [dNgayVaoLam], [sCVu], [bTrangThai]) VALUES (N'NV00', N'TK00', N'ADMIN', CAST(N'2001-10-14T00:00:00.000' AS DateTime), N'001202038688', N'0123456789', CAST(N'2023-03-09T00:00:00.000' AS DateTime), N'Quản lý', 1)
INSERT [dbo].[tbl_NhanVien] ([PK_sMaNV], [FK_sMaTK], [sHoTen], [dNgaySinh], [sCCCD], [sSDT], [dNgayVaoLam], [sCVu], [bTrangThai]) VALUES (N'NV01', N'TK01', N'Nguyễn Văn A', CAST(N'2000-03-20T14:16:35.000' AS DateTime), N'012345678910', N'0234567891', CAST(N'2023-03-20T14:16:35.000' AS DateTime), N'Bán hàng', 1)
INSERT [dbo].[tbl_NhanVien] ([PK_sMaNV], [FK_sMaTK], [sHoTen], [dNgaySinh], [sCCCD], [sSDT], [dNgayVaoLam], [sCVu], [bTrangThai]) VALUES (N'NV02', N'TK02', N'Nguyễn Văn B', CAST(N'1999-03-20T15:28:52.000' AS DateTime), N'022222222222', N'0345678912', CAST(N'2023-03-20T15:28:52.000' AS DateTime), N'Kho', 1)
INSERT [dbo].[tbl_NhanVien] ([PK_sMaNV], [FK_sMaTK], [sHoTen], [dNgaySinh], [sCCCD], [sSDT], [dNgayVaoLam], [sCVu], [bTrangThai]) VALUES (N'NV03', N'TK03', N'Phạm Thị C', CAST(N'1995-03-21T00:00:00.000' AS DateTime), N'011111111111', N'0123232321', CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'Kế toán', 1)
GO
INSERT [dbo].[tbl_Quyen] ([PK_sMaQuyen], [sTenQuyen]) VALUES (N'Q01', N'Quản lý')
INSERT [dbo].[tbl_Quyen] ([PK_sMaQuyen], [sTenQuyen]) VALUES (N'Q02', N'Bán hàng')
INSERT [dbo].[tbl_Quyen] ([PK_sMaQuyen], [sTenQuyen]) VALUES (N'Q03', N'Kho')
INSERT [dbo].[tbl_Quyen] ([PK_sMaQuyen], [sTenQuyen]) VALUES (N'Q04', N'Kế toán')
GO
INSERT [dbo].[tbl_SanPham] ([PK_sMaSP], [sTenSP], [sDonViTinh], [sHanDung], [iSL], [fDonGiaBan], [FK_sMaLoai], [FK_sNhaCungCap]) VALUES (N'SP001', N'Product 3', N'Cái', N'1 năm', 0, 10000, N'L01', N'NCC01')
INSERT [dbo].[tbl_SanPham] ([PK_sMaSP], [sTenSP], [sDonViTinh], [sHanDung], [iSL], [fDonGiaBan], [FK_sMaLoai], [FK_sNhaCungCap]) VALUES (N'SP6737806', N'Paradol', N'Cái', N'1 năm', 0, 10000, N'L03', N'NCC01')
INSERT [dbo].[tbl_SanPham] ([PK_sMaSP], [sTenSP], [sDonViTinh], [sHanDung], [iSL], [fDonGiaBan], [FK_sMaLoai], [FK_sNhaCungCap]) VALUES (N'SP6766874', N'Băng Ugo', N'cái', N'1 năm', 0, 1000, N'L03', N'NCC02')
INSERT [dbo].[tbl_SanPham] ([PK_sMaSP], [sTenSP], [sDonViTinh], [sHanDung], [iSL], [fDonGiaBan], [FK_sMaLoai], [FK_sNhaCungCap]) VALUES (N'SP6938702', N'Tiffy', N'vỉ', N'2 năm', 0, 123, N'L04', N'NCC03')
GO
INSERT [dbo].[tbl_TaiKhoan] ([PK_sMaTK], [sTenTK], [sMK], [FK_sMaQuyen]) VALUES (N'TK00', N'admin', N'Phamtu123', N'Q01')
INSERT [dbo].[tbl_TaiKhoan] ([PK_sMaTK], [sTenTK], [sMK], [FK_sMaQuyen]) VALUES (N'TK01', N'BH01', N'123', N'Q02')
INSERT [dbo].[tbl_TaiKhoan] ([PK_sMaTK], [sTenTK], [sMK], [FK_sMaQuyen]) VALUES (N'TK02', N'K01', N'1234', N'Q03')
INSERT [dbo].[tbl_TaiKhoan] ([PK_sMaTK], [sTenTK], [sMK], [FK_sMaQuyen]) VALUES (N'TK03', N'KT01', N'123', N'Q04')
GO
ALTER TABLE [dbo].[tbl_BaoCaoThuChi] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_BienBanHuy] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_BienBanKiemKe] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy] ADD  DEFAULT ((1)) FOR [iSL]
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang] ADD  DEFAULT ((1)) FOR [iSL]
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho] ADD  DEFAULT ((1)) FOR [iSL]
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu] ADD  DEFAULT ((1)) FOR [iSL]
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau] ADD  DEFAULT ((1)) FOR [iSLCan]
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_PhieuChi] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_PhieuThu] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_PhieuYeuCau] ADD  DEFAULT (getdate()) FOR [dTgLap]
GO
ALTER TABLE [dbo].[tbl_SanPham] ADD  DEFAULT ((0)) FOR [iSL]
GO
ALTER TABLE [dbo].[tbl_BaoCaoThuChi]  WITH CHECK ADD  CONSTRAINT [FK_BaoCaoThuChi_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_BaoCaoThuChi] CHECK CONSTRAINT [FK_BaoCaoThuChi_NhanVien]
GO
ALTER TABLE [dbo].[tbl_BienBanHuy]  WITH CHECK ADD  CONSTRAINT [FK_BienBanHuy_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_BienBanHuy] CHECK CONSTRAINT [FK_BienBanHuy_NhanVien]
GO
ALTER TABLE [dbo].[tbl_BienBanKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_BienBanKiemKe_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_BienBanKiemKe] CHECK CONSTRAINT [FK_BienBanKiemKe_NhanVien]
GO
ALTER TABLE [dbo].[tbl_CTBaoCaoThuChi]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoThuChi_BaoCaoThuChi] FOREIGN KEY([PK_FK_sMaBC])
REFERENCES [dbo].[tbl_BaoCaoThuChi] ([PK_sMaBC])
GO
ALTER TABLE [dbo].[tbl_CTBaoCaoThuChi] CHECK CONSTRAINT [FK_CTBaoCaoThuChi_BaoCaoThuChi]
GO
ALTER TABLE [dbo].[tbl_CTBaoCaoThuChi]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoThuChi_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTBaoCaoThuChi] CHECK CONSTRAINT [FK_CTBaoCaoThuChi_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy]  WITH CHECK ADD  CONSTRAINT [FK_CTBienBanHuy_BienBanHuy] FOREIGN KEY([PK_FK_sMaBBH])
REFERENCES [dbo].[tbl_BienBanHuy] ([PK_sMaBBH])
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy] CHECK CONSTRAINT [FK_CTBienBanHuy_BienBanHuy]
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy]  WITH CHECK ADD  CONSTRAINT [FK_CTBienBanHuy_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTBienBanHuy] CHECK CONSTRAINT [FK_CTBienBanHuy_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTBienBanKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_CTBienBanKiemKe_BienBanKiemKe] FOREIGN KEY([PK_FK_sMaBBK])
REFERENCES [dbo].[tbl_BienBanKiemKe] ([PK_sMaBBK])
GO
ALTER TABLE [dbo].[tbl_CTBienBanKiemKe] CHECK CONSTRAINT [FK_CTBienBanKiemKe_BienBanKiemKe]
GO
ALTER TABLE [dbo].[tbl_CTBienBanKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_CTBienBanKiemKe_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTBienBanKiemKe] CHECK CONSTRAINT [FK_CTBienBanKiemKe_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTHopDongCungCap]  WITH CHECK ADD  CONSTRAINT [FK_CTHopDongCungCap_HopDongCungCap] FOREIGN KEY([PK_FK_sMaHD])
REFERENCES [dbo].[tbl_HopDongCungCap] ([PK_sMaHD])
GO
ALTER TABLE [dbo].[tbl_CTHopDongCungCap] CHECK CONSTRAINT [FK_CTHopDongCungCap_HopDongCungCap]
GO
ALTER TABLE [dbo].[tbl_CTHopDongCungCap]  WITH CHECK ADD  CONSTRAINT [FK_CTHopDongCungCap_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTHopDongCungCap] CHECK CONSTRAINT [FK_CTHopDongCungCap_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuChi_PhieuChi] FOREIGN KEY([PK_FK_sMaPChi])
REFERENCES [dbo].[tbl_PhieuChi] ([PK_sMaPChi])
GO
ALTER TABLE [dbo].[tbl_CTPhieuChi] CHECK CONSTRAINT [FK_CTPhieuChi_PhieuChi]
GO
ALTER TABLE [dbo].[tbl_CTPhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuChi_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuChi] CHECK CONSTRAINT [FK_CTPhieuChi_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatHang_PhieuDatHang] FOREIGN KEY([PK_FK_sMaPDH])
REFERENCES [dbo].[tbl_PhieuDatHang] ([PK_sMaPDH])
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang] CHECK CONSTRAINT [FK_CTPhieuDatHang_PhieuDatHang]
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatHang_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuDatHang] CHECK CONSTRAINT [FK_CTPhieuDatHang_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuGiao]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuGiao_PhieuGiaoHang] FOREIGN KEY([PK_FK_sMaPGH])
REFERENCES [dbo].[tbl_PhieuGiaoHang] ([PK_sMaPGH])
GO
ALTER TABLE [dbo].[tbl_CTPhieuGiao] CHECK CONSTRAINT [FK_CTPhieuGiao_PhieuGiaoHang]
GO
ALTER TABLE [dbo].[tbl_CTPhieuGiao]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuGiao_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuGiao] CHECK CONSTRAINT [FK_CTPhieuGiao_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhapKho_PhieuNhapKho] FOREIGN KEY([PK_FK_sMaPN])
REFERENCES [dbo].[tbl_PhieuNhapKho] ([PK_sMaPN])
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho] CHECK CONSTRAINT [FK_CTPhieuNhapKho_PhieuNhapKho]
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhapKho_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuNhapKho] CHECK CONSTRAINT [FK_CTPhieuNhapKho_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuThu_PhieuThu] FOREIGN KEY([PK_FK_sMaPT])
REFERENCES [dbo].[tbl_PhieuThu] ([PK_sMaPT])
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu] CHECK CONSTRAINT [FK_CTPhieuThu_PhieuThu]
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuThu_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuThu] CHECK CONSTRAINT [FK_CTPhieuThu_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuXuatKho_PhieuXuatKho] FOREIGN KEY([PK_FK_sMaPX])
REFERENCES [dbo].[tbl_PhieuXuatKho] ([PK_sMaPX])
GO
ALTER TABLE [dbo].[tbl_CTPhieuXuatKho] CHECK CONSTRAINT [FK_CTPhieuXuatKho_PhieuXuatKho]
GO
ALTER TABLE [dbo].[tbl_CTPhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuXuatKho_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuXuatKho] CHECK CONSTRAINT [FK_CTPhieuXuatKho_SanPham]
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuYeuCau_PhieuYeuCau] FOREIGN KEY([PK_FK_sMaPYC])
REFERENCES [dbo].[tbl_PhieuYeuCau] ([PK_sMaPYC])
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau] CHECK CONSTRAINT [FK_CTPhieuYeuCau_PhieuYeuCau]
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuYeuCau_SanPham] FOREIGN KEY([PK_FK_sMaSP])
REFERENCES [dbo].[tbl_SanPham] ([PK_sMaSP])
GO
ALTER TABLE [dbo].[tbl_CTPhieuYeuCau] CHECK CONSTRAINT [FK_CTPhieuYeuCau_SanPham]
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap]  WITH CHECK ADD  CONSTRAINT [FK_HopDongCungCap_NhaCungCap] FOREIGN KEY([FK_sMaNCC])
REFERENCES [dbo].[tbl_NhaCungCap] ([PK_sMaNCC])
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap] CHECK CONSTRAINT [FK_HopDongCungCap_NhaCungCap]
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap]  WITH CHECK ADD  CONSTRAINT [FK_HopDongCungCap_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_HopDongCungCap] CHECK CONSTRAINT [FK_HopDongCungCap_NhanVien]
GO
ALTER TABLE [dbo].[tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([FK_sMaTK])
REFERENCES [dbo].[tbl_TaiKhoan] ([PK_sMaTK])
GO
ALTER TABLE [dbo].[tbl_NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_PhieuNhap] FOREIGN KEY([FK_sMaPN])
REFERENCES [dbo].[tbl_PhieuNhapKho] ([PK_sMaPN])
GO
ALTER TABLE [dbo].[tbl_PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_PhieuNhap]
GO
ALTER TABLE [dbo].[tbl_PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatHang_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuDatHang] CHECK CONSTRAINT [FK_PhieuDatHang_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatHang_PhieuYeuCau] FOREIGN KEY([FK_sMaPYC])
REFERENCES [dbo].[tbl_PhieuYeuCau] ([PK_sMaPYC])
GO
ALTER TABLE [dbo].[tbl_PhieuDatHang] CHECK CONSTRAINT [FK_PhieuDatHang_PhieuYeuCau]
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoHang_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang] CHECK CONSTRAINT [FK_PhieuGiaoHang_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoHang_PhieuDatHang] FOREIGN KEY([FK_sMaPDH])
REFERENCES [dbo].[tbl_PhieuDatHang] ([PK_sMaPDH])
GO
ALTER TABLE [dbo].[tbl_PhieuGiaoHang] CHECK CONSTRAINT [FK_PhieuGiaoHang_PhieuDatHang]
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho_PhieuGiaoHang] FOREIGN KEY([FK_sMaPGH])
REFERENCES [dbo].[tbl_PhieuGiaoHang] ([PK_sMaPGH])
GO
ALTER TABLE [dbo].[tbl_PhieuNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho_PhieuGiaoHang]
GO
ALTER TABLE [dbo].[tbl_PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_KhachHang] FOREIGN KEY([FK_sMaKH])
REFERENCES [dbo].[tbl_KhachHang] ([PK_sMaKH])
GO
ALTER TABLE [dbo].[tbl_PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_KhachHang]
GO
ALTER TABLE [dbo].[tbl_PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_NhanVien]
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatKho_NhanVienLap] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho] CHECK CONSTRAINT [FK_PhieuXuatKho_NhanVienLap]
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatKho_NhanVienLay] FOREIGN KEY([FK_sMaNguoiLay])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuXuatKho] CHECK CONSTRAINT [FK_PhieuXuatKho_NhanVienLay]
GO
ALTER TABLE [dbo].[tbl_PhieuYeuCau]  WITH CHECK ADD  CONSTRAINT [FK_PhieuYeuCau_NhanVien] FOREIGN KEY([FK_sMaNguoiLap])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_PhieuYeuCau] CHECK CONSTRAINT [FK_PhieuYeuCau_NhanVien]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([FK_sMaLoai])
REFERENCES [dbo].[tbl_LoaiSanPham] ([PK_sMaLoai])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([FK_sNhaCungCap])
REFERENCES [dbo].[tbl_NhaCungCap] ([PK_sMaNCC])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Quyen] FOREIGN KEY([FK_sMaQuyen])
REFERENCES [dbo].[tbl_Quyen] ([PK_sMaQuyen])
GO
ALTER TABLE [dbo].[tbl_TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[tbl_ThanhVienHuy]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVienHuy_BienBanHuy] FOREIGN KEY([PK_FK_MaBBH])
REFERENCES [dbo].[tbl_BienBanHuy] ([PK_sMaBBH])
GO
ALTER TABLE [dbo].[tbl_ThanhVienHuy] CHECK CONSTRAINT [FK_ThanhVienHuy_BienBanHuy]
GO
ALTER TABLE [dbo].[tbl_ThanhVienHuy]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVienHuy_NhanVien] FOREIGN KEY([PK_FK_sMaNguoiHuy])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_ThanhVienHuy] CHECK CONSTRAINT [FK_ThanhVienHuy_NhanVien]
GO
ALTER TABLE [dbo].[tbl_ThanhVienKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVienKiemKe_BienBanKiemKe] FOREIGN KEY([PK_FK_sMaBBK])
REFERENCES [dbo].[tbl_BienBanKiemKe] ([PK_sMaBBK])
GO
ALTER TABLE [dbo].[tbl_ThanhVienKiemKe] CHECK CONSTRAINT [FK_ThanhVienKiemKe_BienBanKiemKe]
GO
ALTER TABLE [dbo].[tbl_ThanhVienKiemKe]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVienKiemKe_NhanVien] FOREIGN KEY([PK_FK_sMaNguoiKiem])
REFERENCES [dbo].[tbl_NhanVien] ([PK_sMaNV])
GO
ALTER TABLE [dbo].[tbl_ThanhVienKiemKe] CHECK CONSTRAINT [FK_ThanhVienKiemKe_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DoiMatKhau] (@tenTK VARCHAR(20), @MK VARCHAR(20))
AS
BEGIN
    UPDATE dbo.tbl_TaiKhoan 
	SET sMK = @MK
	WHERE sTenTK = @tenTK
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ShowViewSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ShowViewSanPham]
AS
BEGIN
	SELECT * FROM vv_SanPham
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaCTPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaCTPhieuThu]
    @sMaPT VARCHAR(10),
    @sMaSP VARCHAR(10),
    @iSL INT
AS
BEGIN
    UPDATE tbl_CTPhieuThu
    SET iSL = @iSL
    WHERE PK_FK_sMaPT = @sMaPT AND PK_FK_sMaSP = @sMaSP
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaNhanVien]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaNhanVien]
    @MaNV VARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATETIME,
    @CCCD VARCHAR(12),
    @SDT VARCHAR(10),
    @NgayVaoLam DATETIME,
    @ChucVu NVARCHAR(20),

	@TenTK VARCHAR(20),
    @MatKhau VARCHAR(20),
    @MaQuyen VARCHAR(10)
AS
BEGIN
    UPDATE tbl_NhanVien
    SET sHoTen = @HoTen, dNgaySinh = @NgaySinh, sCCCD = @CCCD, sSDT = @SDT, dNgayVaoLam = @NgayVaoLam, sCVu = @ChucVu
    WHERE PK_sMaNV = @MaNV

	UPDATE dbo.tbl_TaiKhoan
	SET sTenTK = @TenTK, FK_sMaQuyen = @MaQuyen
	WHERE PK_sMaTK = (SELECT FK_sMaTK FROM dbo.tbl_NhanVien WHERE PK_sMaNV = @MaNV)

	IF(@MatKhau <> '')
	BEGIN
	    UPDATE dbo.tbl_TaiKhoan
		SET sMK = @MatKhau
		WHERE PK_sMaTK = (SELECT FK_sMaTK FROM dbo.tbl_NhanVien WHERE PK_sMaNV = @MaNV)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaPhieuThu]
    @sMaPT VARCHAR(10),
    @dTgLap DATETIME,
    @sMaNV VARCHAR(10),
    @sMaKH VARCHAR(10),
    @sHinhThucTT NVARCHAR(20)
AS
BEGIN
    UPDATE tbl_PhieuThu
    SET dTgLap = @dTgLap,
        FK_sMaNguoiLap = @sMaNV,
        FK_sMaKH = @sMaKH,
        sHinhThucTT = @sHinhThucTT
    WHERE PK_sMaPT = @sMaPT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SuaSanPham] (@MaSP VARCHAR(10), @TenSP NVARCHAR(100), @DonViTinh NVARCHAR(10), @HanDung NVARCHAR(10), 
						   @DonGiaBan FLOAT, @MaLoai VARCHAR(10), @MaNCC VARCHAR(10))
AS
BEGIN
    UPDATE dbo.tbl_SanPham
    SET sTenSP = @TenSP,
        sDonViTinh = @DonViTinh,
        sHanDung = @HanDung,
        fDonGiaBan = @DonGiaBan,
        FK_sMaLoai = @MaLoai,
		FK_sNhaCungCap = @MaNCC
    WHERE PK_sMaSP = @MaSP;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiKhoan]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaTaiKhoan]
    @MaTK VARCHAR(10),
    @TenTK VARCHAR(20),
    @MatKhau VARCHAR(20),
    @MaQuyen VARCHAR(10)
AS
BEGIN
    UPDATE tbl_TaiKhoan
    SET sTenTK = @TenTK,
        sMK = @MatKhau,
        FK_sMaQuyen = @MaQuyen
    WHERE PK_sMaTK = @MaTK
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTTKhachHang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaTTKhachHang](@PK_sMaKH VARCHAR(10),@sTenKH VARCHAR(50),@sSDT VARCHAR(10))
as
BEGIN
    UPDATE tbl_KhachHang
    SET sTenKH=@sTenKH,
		sSDT=@sSDT
    WHERE @PK_sMaKH=PK_sMaKH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemCTPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemCTPhieuThu]
    @sMaPT VARCHAR(10),
    @sMaSP VARCHAR(10),
    @iSL INT
AS
BEGIN
    INSERT INTO tbl_CTPhieuThu(PK_FK_sMaPT, PK_FK_sMaSP, iSL)
    VALUES(@sMaPT, @sMaSP, @iSL)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemKhachHang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemKhachHang] (@PK_sMaKH VARCHAR(10),@sTenKH VARCHAR(50),@sSDT NVARCHAR(10))
AS
BEGIN
    INSERT INTO tbl_KhachHang
    VALUES(@PK_sMaKH, @sTenKH, @sSDT)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemNhanVien]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemNhanVien]
    @MaNV VARCHAR(10),
    @MaTK VARCHAR(10),
    @HoTen NVARCHAR(50),
    @NgaySinh DATETIME,
    @CCCD VARCHAR(12),
    @SDT VARCHAR(10),
    @NgayVaoLam DATETIME,
    @ChucVu NVARCHAR(20),

	@TenTK VARCHAR(20),
    @MatKhau VARCHAR(20),
    @MaQuyen VARCHAR(10)
AS
BEGIN
	INSERT INTO tbl_TaiKhoan (PK_sMaTK, sTenTK, sMK, FK_sMaQuyen)
    VALUES (@MaTK, @TenTK, @MatKhau, @MaQuyen)

    INSERT INTO tbl_NhanVien(PK_sMaNV, FK_sMaTK, sHoTen, dNgaySinh, sCCCD, sSDT, dNgayVaoLam, sCVu, bTrangThai)
    VALUES(@MaNV, (SELECT TOP 1 PK_sMaTK FROM dbo.tbl_TaiKhoan ORDER BY PK_sMaTK DESC), @HoTen, @NgaySinh, @CCCD, @SDT, @NgayVaoLam, @ChucVu, 1)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemPhieuThu]
    @sMaPT VARCHAR(10),
    @dTgLap DATETIME,
    @sMaNV VARCHAR(10),
    @sMaKH VARCHAR(10),
    @sHinhThucTT NVARCHAR(20)
AS
BEGIN
    INSERT INTO tbl_PhieuThu(PK_sMaPT, dTgLap, FK_sMaNguoiLap, FK_sMaKH, sHinhThucTT)
    VALUES(@sMaPT, @dTgLap, @sMaNV, @sMaKH, @sHinhThucTT)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemSanPham] (@MaSP VARCHAR(10), @TenSP NVARCHAR(100), @DonViTinh NVARCHAR(10), 
							@HanDung NVARCHAR(10), @DonGiaBan FLOAT, @MaLoai VARCHAR(10), @MaNCC VARCHAR(10))
AS
BEGIN
    INSERT INTO dbo.tbl_SanPham (PK_sMaSP, sTenSP, sDonViTinh, sHanDung, iSL, fDonGiaBan, FK_sMaLoai, FK_sNhaCungCap)
    VALUES (@MaSP, @TenSP, @DonViTinh, @HanDung, 0, @DonGiaBan, @MaLoai, @MaNCC)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiKhoan]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemTaiKhoan]
    @MaTK VARCHAR(10),
    @TenTK VARCHAR(20),
    @MatKhau VARCHAR(20),
    @MaQuyen VARCHAR(10)
AS
BEGIN
    INSERT INTO tbl_TaiKhoan (PK_sMaTK, sTenTK, sMK, FK_sMaQuyen)
    VALUES (@MaTK, @TenTK, @MatKhau, @MaQuyen)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimKiemSanPham] (@TenSP NVARCHAR(100), @DonViTinh NVARCHAR(10), 
							  @HanDung NVARCHAR(10), @DonGiaBan VARCHAR(MAX),
							  @TenLoai NVARCHAR(100), @TenNCC NVARCHAR(100))
AS
BEGIN
	SELECT * 
	FROM dbo.vv_SanPham
	WHERE (@TenSP IS NULL OR [Tên SP] LIKE '%' + @TenSP + '%')
			AND (@DonViTinh IS NULL OR [Đơn vị tính] LIKE '%' + @DonViTinh + '%')
			AND (@HanDung IS NULL OR [Hạn dùng] LIKE '%' + @HanDung + '%')
			AND (@DonGiaBan IS NULL OR @DonGiaBan = '' OR [Giá bán] = CONVERT(FLOAT, @DonGiaBan))
			AND (@TenLoai IS NULL OR [Loại] LIKE '%' + @TenLoai + '%')
			AND (@TenNCC IS NULL OR [Tên NCC] LIKE '%' + @TenNCC + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemTenTaiKhoan]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimKiemTenTaiKhoan] (@TenTK VARCHAR(10))
AS
BEGIN
    SELECT * FROM vv_TaiKhoanNhanVienQuyen WHERE [Tên tài khoản] = @TenTK
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaCTPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaCTPhieuThu]
    @sMaPT VARCHAR(10),
    @sMaSP VARCHAR(10)
AS
BEGIN
    DELETE FROM tbl_CTPhieuThu
    WHERE PK_FK_sMaPT = @sMaPT AND PK_FK_sMaSP = @sMaSP
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaKhachhang]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_XoaKhachhang]
    @PK_sMaKH VARCHAR(10)
AS
BEGIN
	DELETE FROM tbl_PhieuThu
    WHERE  FK_sMaKH= @PK_sMaKH

    DELETE FROM tbl_KhachHang
    WHERE PK_sMaKH = @PK_sMaKH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaPhieuThu]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaPhieuThu]
    @sMaPT VARCHAR(10)
AS
BEGIN
    DELETE FROM tbl_CTPhieuThu
    WHERE PK_FK_sMaPT = @sMaPT
    
    DELETE FROM tbl_PhieuThu
    WHERE PK_sMaPT = @sMaPT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSanPham]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaSanPham] @MaSP VARCHAR(10)
AS
BEGIN
    DELETE FROM tbl_SanPham WHERE PK_sMaSP = @MaSP
END
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTaiKhoan]    Script Date: 2023/04/04 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaTaiKhoan] @MaTK VARCHAR(10)
AS
BEGIN
    DELETE FROM tbl_TaiKhoan WHERE PK_sMaTK = @MaTK;
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 175
               Left = 48
               Bottom = 294
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_NhaCungCap"
            Begin Extent = 
               Top = 7
               Left = 306
               Bottom = 170
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_SanPham'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_SanPham'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 175
               Left = 48
               Bottom = 338
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 343
               Left = 48
               Bottom = 462
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -960
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyenKhongMatKhau'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vv_TaiKhoanNhanVienQuyenKhongMatKhau'
GO
USE [master]
GO
ALTER DATABASE [db_QuanLyHeThongNhaThuocLongChau] SET  READ_WRITE 
GO
