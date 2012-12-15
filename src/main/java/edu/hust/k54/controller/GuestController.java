package edu.hust.k54.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class GuestController implements Controller {
	private static final int PERMISSION = 0;

	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Guest guestController = new Guest();
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0
				.getSession().getAttribute("user");
		if (taikhoandangnhap != null) {
			if (taikhoandangnhap.getPermission() < PERMISSION) {
				modelAndView = new ModelAndView("errorPage");
				return modelAndView;
			} else {
				String uri = arg0.getRequestURI();
				if (uri.contains("search")) {
					modelAndView = new ModelAndView("timkiem");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					String Vien = arg0.getParameter("vien");
					String PhongBan = arg0.getParameter("phongban");
					String tenCb = arg0.getParameter("tenCanBo");
					if ((tenCb != null) || (Vien != null) || (PhongBan != null)) {
						Integer idVien, idPhongBan;
						if (Vien == null) {
							idVien = 0;
						} else {
							idVien = Integer.parseInt(Vien);
						}

						if (PhongBan == null) {
							idPhongBan = 0;
						} else {
							idPhongBan = Integer.parseInt(PhongBan);
						}

						List<Soyeulylich> danhsachcanbo = guestController
								.TimCB(idVien, idPhongBan, tenCb);
						modelAndView.addObject("result", danhsachcanbo);
					}
					modelAndView = setLink(modelAndView);
				} else if (uri.contains("info")) {
					modelAndView = new ModelAndView("info");
				} else if (uri.contains("contact")) {
					modelAndView = new ModelAndView("contact");
				} else if (uri.contains("donviquanly")) {
					if (uri.contains("gioithieuchung")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("vienkhoahoc");
						// TODO
					} else if (uri.contains("danhsachcanbo")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("danhsachcanbo");
						// TODO
					} else if (uri.contains("danhsachphongban")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("danhsachphongban");
						// TODO
					} else if (uri.contains("nghiencuu")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("danhsachdetai");
					}
				}
			}
		} else {
			String uri = arg0.getRequestURI();
			if (uri.contains("search")) {
				modelAndView = new ModelAndView("timkiem");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				String Vien = arg0.getParameter("vien");
				String PhongBan = arg0.getParameter("phongban");
				String tenCb = arg0.getParameter("tenCanBo");
				if ((tenCb != "") || (Vien != null) || (PhongBan != null)) {
					Integer idVien, idPhongBan;
					if (Vien == null) {
						idVien = 0;
					} else {
						idVien = Integer.parseInt(Vien);
					}

					if (PhongBan == null) {
						idPhongBan = 0;
					} else {
						idPhongBan = Integer.parseInt(PhongBan);
					}
					System.out.println("id vien = " + idVien
							+ "id phong ban = " + idPhongBan + "tencanbo = "
							+ tenCb);
					List<Soyeulylich> danhsachcanbo = guestController.TimCB(
							idVien, idPhongBan, ((tenCb == "") ? null : tenCb));
					modelAndView.addObject("result", danhsachcanbo);
				}
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("info")) {
				modelAndView = new ModelAndView("info");
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("contact")) {
				modelAndView = new ModelAndView("xem_danhsachdetai");
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("donviquanly")) {
				if (uri.contains("gioithieuchung")) {
					modelAndView = new ModelAndView("vienkhoahoc");
					List< Donviquanly> donviquanly = guestController.TimDVQL(0, 0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly).get(0));
				} else if (uri.contains("danhsachcanbo")) {
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView = new ModelAndView("danhsachcanbo");
					List< Donviquanly> donviquanly = guestController.TimDVQL(0, 0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly).get(0));
					modelAndView.addObject("danhsachcanbo",
							guestController.TimCB(iddonviquanly, 0, null));
					// TODO
				} else if (uri.contains("danhsachphongban")) {
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView = new ModelAndView("danhsachphongban");
					List< Donviquanly> donviquanly = guestController.TimDVQL(0, 0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly).get(0));
					modelAndView.addObject("danhsachphongban",
							guestController.timPhongBan(iddonviquanly));
				} else if (uri.contains("nghiencuu")) {
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView = new ModelAndView("danhsachdetai");
					List< Donviquanly> donviquanly = guestController.TimDVQL(0, 0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly).get(0));
					List<Soyeulylich> canbonghiencuu = guestController.TimCB(iddonviquanly, 0, null);
					System.out.println("danh sach can bo"+canbonghiencuu.size());
					modelAndView.addObject("canbonghiencuu",canbonghiencuu);
				}
			}
		}
		return modelAndView;
	}

	private ModelAndView setLink(ModelAndView view) {
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "search.spms");
		view.addObject("info", "info.spms");
		view.addObject("contact", "contact.spms");
		return view;
	}
}
