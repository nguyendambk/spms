package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Donviquanly implements java.io.Serializable {

	private Integer iddonviquanly;
	private Khoidonviquanly khoidonviquanly;
	private String ten;
	private String nhiemvu;
	private String chucnang;
	private String hoatdongthuongxuyen;
	private String thanhtuu;
	private String thongtinkhac;
	private String diachitruso;
	private String dienthoai;
	private String email;
	private String fax;
	private String thudientu;
	private String duongdananh;
	private Set phongbans = new HashSet(0);
	private Set soyeulyliches = new HashSet(0);

	public Donviquanly() {
	}

	public Donviquanly(Khoidonviquanly khoidonviquanly, String ten,
			String nhiemvu, String chucnang, String hoatdongthuongxuyen,
			String thanhtuu, String thongtinkhac, String diachitruso,
			String dienthoai, String email, String fax, String thudientu,
			String duongdananh, Set phongbans, Set soyeulyliches) {
		this.khoidonviquanly = khoidonviquanly;
		this.ten = ten;
		this.nhiemvu = nhiemvu;
		this.chucnang = chucnang;
		this.hoatdongthuongxuyen = hoatdongthuongxuyen;
		this.thanhtuu = thanhtuu;
		this.thongtinkhac = thongtinkhac;
		this.diachitruso = diachitruso;
		this.dienthoai = dienthoai;
		this.email = email;
		this.fax = fax;
		this.thudientu = thudientu;
		this.duongdananh = duongdananh;
		this.phongbans = phongbans;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIddonviquanly() {
		return this.iddonviquanly;
	}

	public void setIddonviquanly(Integer iddonviquanly) {
		this.iddonviquanly = iddonviquanly;
	}

	public Khoidonviquanly getKhoidonviquanly() {
		return this.khoidonviquanly;
	}

	public void setKhoidonviquanly(Khoidonviquanly khoidonviquanly) {
		this.khoidonviquanly = khoidonviquanly;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getNhiemvu() {
		return this.nhiemvu;
	}

	public void setNhiemvu(String nhiemvu) {
		this.nhiemvu = nhiemvu;
	}

	public String getChucnang() {
		return this.chucnang;
	}

	public void setChucnang(String chucnang) {
		this.chucnang = chucnang;
	}

	public String getHoatdongthuongxuyen() {
		return this.hoatdongthuongxuyen;
	}

	public void setHoatdongthuongxuyen(String hoatdongthuongxuyen) {
		this.hoatdongthuongxuyen = hoatdongthuongxuyen;
	}

	public String getThanhtuu() {
		return this.thanhtuu;
	}

	public void setThanhtuu(String thanhtuu) {
		this.thanhtuu = thanhtuu;
	}

	public String getThongtinkhac() {
		return this.thongtinkhac;
	}

	public void setThongtinkhac(String thongtinkhac) {
		this.thongtinkhac = thongtinkhac;
	}

	public String getDiachitruso() {
		return this.diachitruso;
	}

	public void setDiachitruso(String diachitruso) {
		this.diachitruso = diachitruso;
	}

	public String getDienthoai() {
		return this.dienthoai;
	}

	public void setDienthoai(String dienthoai) {
		this.dienthoai = dienthoai;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getThudientu() {
		return this.thudientu;
	}

	public void setThudientu(String thudientu) {
		this.thudientu = thudientu;
	}

	public String getDuongdananh() {
		return this.duongdananh;
	}

	public void setDuongdananh(String duongdananh) {
		this.duongdananh = duongdananh;
	}

	public Set getPhongbans() {
		return this.phongbans;
	}

	public void setPhongbans(Set phongbans) {
		this.phongbans = phongbans;
	}

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

}
