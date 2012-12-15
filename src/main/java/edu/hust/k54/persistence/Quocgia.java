package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Quocgia implements java.io.Serializable {

	private Integer idquocgia;
	private String ten;
	private Set soyeulyliches = new HashSet(0);
	private Set quatrinhdinuocngoais = new HashSet(0);

	public Quocgia() {
	}

	public Quocgia(String ten, Set soyeulyliches, Set quatrinhdinuocngoais) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
		this.quatrinhdinuocngoais = quatrinhdinuocngoais;
	}

	public Integer getIdquocgia() {
		return this.idquocgia;
	}

	public void setIdquocgia(Integer idquocgia) {
		this.idquocgia = idquocgia;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

	public Set getQuatrinhdinuocngoais() {
		return this.quatrinhdinuocngoais;
	}

	public void setQuatrinhdinuocngoais(Set quatrinhdinuocngoais) {
		this.quatrinhdinuocngoais = quatrinhdinuocngoais;
	}

}
