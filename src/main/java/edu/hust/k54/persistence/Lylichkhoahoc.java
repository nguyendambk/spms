package edu.hust.k54.persistence;

public class Lylichkhoahoc implements java.io.Serializable {

	private int idsoyeulylich;
	private Soyeulylich soyeulylich;
	private int idquatrinhghiencuu;
	private String daotaohocvien;
	private String dinhhuongnc;
	private String lylichkhoahoccol;
	private String lylichkhoahoccol1;

	public Lylichkhoahoc() {
	}

	public Lylichkhoahoc(Soyeulylich soyeulylich, int idquatrinhghiencuu,
			String daotaohocvien, String dinhhuongnc) {
		this.soyeulylich = soyeulylich;
		this.idquatrinhghiencuu = idquatrinhghiencuu;
		this.daotaohocvien = daotaohocvien;
		this.dinhhuongnc = dinhhuongnc;
	}

	public Lylichkhoahoc(Soyeulylich soyeulylich, int idquatrinhghiencuu,
			String daotaohocvien, String dinhhuongnc, String lylichkhoahoccol,
			String lylichkhoahoccol1) {
		this.soyeulylich = soyeulylich;
		this.idquatrinhghiencuu = idquatrinhghiencuu;
		this.daotaohocvien = daotaohocvien;
		this.dinhhuongnc = dinhhuongnc;
		this.lylichkhoahoccol = lylichkhoahoccol;
		this.lylichkhoahoccol1 = lylichkhoahoccol1;
	}

	public int getIdsoyeulylich() {
		return this.idsoyeulylich;
	}

	public void setIdsoyeulylich(int idsoyeulylich) {
		this.idsoyeulylich = idsoyeulylich;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public int getIdquatrinhghiencuu() {
		return this.idquatrinhghiencuu;
	}

	public void setIdquatrinhghiencuu(int idquatrinhghiencuu) {
		this.idquatrinhghiencuu = idquatrinhghiencuu;
	}

	public String getDaotaohocvien() {
		return this.daotaohocvien;
	}

	public void setDaotaohocvien(String daotaohocvien) {
		this.daotaohocvien = daotaohocvien;
	}

	public String getDinhhuongnc() {
		return this.dinhhuongnc;
	}

	public void setDinhhuongnc(String dinhhuongnc) {
		this.dinhhuongnc = dinhhuongnc;
	}

	public String getLylichkhoahoccol() {
		return this.lylichkhoahoccol;
	}

	public void setLylichkhoahoccol(String lylichkhoahoccol) {
		this.lylichkhoahoccol = lylichkhoahoccol;
	}

	public String getLylichkhoahoccol1() {
		return this.lylichkhoahoccol1;
	}

	public void setLylichkhoahoccol1(String lylichkhoahoccol1) {
		this.lylichkhoahoccol1 = lylichkhoahoccol1;
	}

}
