package edu.hust.k54.persistence;

import java.util.Date;

public class Khenthuong implements java.io.Serializable {

	private Integer idkhenthuong;
	private Soyeulylich soyeulylich;
	private String lydo;
	private String hinhthuc;
	private String capkhenthuong;
	private Date ngayquyetdinh;
	private Byte trangthai;
	private String nguoikyquyetdinh;

	public Khenthuong() {
	}

	public Khenthuong(Soyeulylich soyeulylich, String lydo, String hinhthuc,
			String capkhenthuong, Date ngayquyetdinh, Byte trangthai,
			String nguoikyquyetdinh) {
		this.soyeulylich = soyeulylich;
		this.lydo = lydo;
		this.hinhthuc = hinhthuc;
		this.capkhenthuong = capkhenthuong;
		this.ngayquyetdinh = ngayquyetdinh;
		this.trangthai = trangthai;
		this.nguoikyquyetdinh = nguoikyquyetdinh;
	}

	public Integer getIdkhenthuong() {
		return this.idkhenthuong;
	}

	public void setIdkhenthuong(Integer idkhenthuong) {
		this.idkhenthuong = idkhenthuong;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public String getLydo() {
		return this.lydo;
	}

	public void setLydo(String lydo) {
		this.lydo = lydo;
	}

	public String getHinhthuc() {
		return this.hinhthuc;
	}

	public void setHinhthuc(String hinhthuc) {
		this.hinhthuc = hinhthuc;
	}

	public String getCapkhenthuong() {
		return this.capkhenthuong;
	}

	public void setCapkhenthuong(String capkhenthuong) {
		this.capkhenthuong = capkhenthuong;
	}

	public Date getNgayquyetdinh() {
		return this.ngayquyetdinh;
	}

	public void setNgayquyetdinh(Date ngayquyetdinh) {
		this.ngayquyetdinh = ngayquyetdinh;
	}

	public Byte getTrangthai() {
		return this.trangthai;
	}

	public void setTrangthai(Byte trangthai) {
		this.trangthai = trangthai;
	}

	public String getNguoikyquyetdinh() {
		return this.nguoikyquyetdinh;
	}

	public void setNguoikyquyetdinh(String nguoikyquyetdinh) {
		this.nguoikyquyetdinh = nguoikyquyetdinh;
	}

}
