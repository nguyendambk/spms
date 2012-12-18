<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Danh sách đơn vị</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/resources/css/stype.css"/>">
<script type="text/javascript"
	src="<c:url value = "/resources/js/jquery.js"/>"></script>
</head>
<body>
	<div id="wrapper">

		<div id="wrap_header">
			<div id="banner_header">
				<h1 class="stitle_web">Viện khoa học và công nghệ Việt Nam</h1>
			</div>
			<!--End banner_header -->
			<div id="nav_menu">
				<div class="header-row-1">
					<ul>
						<li><a
							href="<c:if test="${not empty homePage}"> ${homePage} </c:if>
							<c:if test="${empty homePage}">/k54/home.spms</c:if>">Trang
								chủ</a></li>
						<li><a href="#">Tin tức - thông báo</a>
							<ul>
								<li><a href="#">Hoạt động</a></li>
								<li><a href="#">Tin KH trong nước</a></li>
								<li><a href="#">Tin KH quốc tế</a></li>
								<li><a href="#">Thông báo</a></li>
							</ul></li>
						<li><a>Đơn vị</a>
							<ul>
								<c:forEach items="${donviquanly}" var="donviquanly">
									<li><a
										href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">${donviquanly.ten}</a>
										<ul>
											<li><a
												href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">Giới
													thiệu chung</a></li>
											<li><a
												href="/k54/guest/donviquanly/danhsachcanbo.spms?iddonviquanly=${donviquanly.iddonviquanly}">Danh
													mục cán bộ</a></li>
											<li><a
												href="/k54/guest/donviquanly/danhsachphongban.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các
													phòng ban</a>
											<li><a
												href="/k54/guest/donviquanly/nghiencuu.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các
													nghiên cứu</a></li>
										</ul></li>
								</c:forEach>

							</ul></li>
						<li></li>

						<li><a
							href="<c:if test="${not empty search}"> ${search} </c:if>
							<c:if test="${empty search}"> /k54/guest/search.spms</c:if>">Tìm
								kiếm</a></li>
						<li><a
							href="<c:if test="${not empty info}"> ${info} </c:if>
							<c:if test="${empty info}"> /k54/guest/info.spms</c:if>">Giới
								thiệu</a></li>
						<li><a
							href="<c:if test="${not empty contact}"> ${contact} </c:if>
							<c:if test="${empty contact}"> /k54/guest/contact.spms</c:if>">Liên
								hệ</a></li>
					</ul>
				</div>
				<!--End header-row-1-->
			</div>
			<!-- end nav_menu -->
		</div>
		<!--End wrap_header -->

		<div id="wrap_main">
			<div class="title_home">
				<h2>Danh sách đơn vị</h2>
			</div>
			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>


			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>

			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>

			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>

			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>

			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>


			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>


			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>


			<div class="list_dv">
				<div class="row_dv">
					<div class="avatar_dv">
						<img src="../images/public/vientoanhoc.jpg" width="200"
							height="150" />
					</div>
					<div class="content_dv">
						<p class="name_dv">
							<a>Viện toán học</a>
						</p>
						<p class="addr_dv">
							<a> Trụ sở: Nhà A5 - 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội</a>
						</p>
						<p class="manger_dv">
							Viện trưởng &nbsp;<a>GS.TSKH. Ngô Việt Trung</a>
						</p>
						<p class="sub_dv">
							Phó viện trưởng &nbsp;<a>PGS.TS Nguyễn Việt Dũng, PGS.TSKH
								Phùng Hồ Hải</a>
						</p>
						<p class="more_dv">
							<a>Xem chi tiết</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
				<!--End row_dv -->
			</div>


		</div>
		<!--End wrap_main-->

		<div id="wrap_right">
			<div class="box_right">
				<c:if test="${not empty user}">
					<div class="title_ok">
						<a>Xin chào:${user.username}</a>
					</div>
					<div class="content_box">
						<div class="loginpopup" style="">
							<form action="/k54/logout.spms" method="POST">
								<input value="Đăng xuất" class="button" type="submit"
									name="logout" />
							</form>
						</div>
					</div>
				</c:if>

				<c:if test="${empty user}">
					<div class="title_box">
						<a>Đăng nhập</a>
					</div>
					<!--title_box-->
					<div class="content_box">
						<div class="loginpopup" style="">
							<form action="/k54/login.spms" method="POST">
								<label>Tài khoản : </label> <input type="text" name="user_name"
									placeholder="Tài khoản" /> <label>Mật khẩu : </label> <input
									type="password" name="user_password" placeholder="Mật khẩu" />
								<input value="Đăng nhập" class="button" type="submit"
									name="login" />
							</form>
							<label> ${loginFalse} </label>
						</div>
					</div>
				</c:if>
				<!--end content_box-->
			</div>
			<!--box_right-->

			<c:if test="${not empty user}">
				<c:if test="${user.permission == 1}">
					<div class="box_right">
						<div class="title_box">
							<a>Cập nhật</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật thông tin cá nhân</a></li>
									<li><a href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật lý lịch khoa học</a></li>
									<li><a href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật tài khoản</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					<div class="box_right">
						<div class="title_box">
							<a>Thông tin cá nhân</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/staff/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ yếu lý lịch</a></li>
									<li><a href="/k54/staff/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý lịch khoa học</a></li>
									<li><a href="/k54/staff/thongtin/quatrinhcongtac.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Quá trình công tác</a></li>
									<li><a href="/k54/staff/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn biến lương</a></li>
									<li><a href="/k54/staff/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen thưởng</a></li>
									<li><a href="/k54/staff/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ luật</a></li>
								</ul>
							</div>
							<!--End accordion -->

						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
				</c:if>

				<c:if test="${user.permission == 2}">
					<div class="box_right">
						<div class="title_box">
							<a>Chức năng quản lý</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/manager/quanly/phongban.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý phòng ban</a></li>
									<li><a href="/k54/manager/quanly/hosocanbo.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý hồ sơ cán bộ</a></li>
									<li><a href="/k54/manager/quanly/khenthuong.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý khen thưởng</a></li>
									<li><a href="/k54/manager/quanly/kyluat.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý kỷ luật</a></li>
									<li><a href="/k54/manager/quanly/baocao.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Báo cáo</a></li>
									<li><a href="/k54/manager/quanly/thongke.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Thống kê</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					
					<div class="box_right">
						<div class="title_box">
							<a>Cập nhật</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật thông tin cá nhân</a></li>
									<li><a href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật lý lịch khoa học</a></li>
									<li><a href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật tài khoản</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					<div class="box_right">
						<div class="title_box">
							<a>Thông tin cá nhân</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/manager/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ yếu lý lịch</a></li>
									<li><a href="/k54/manager/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý lịch khoa học</a></li>
									<li><a href="/k54/manager/thongtin/quatrinhcongtac.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Quá trình công tác</a></li>
									<li><a href="/k54/manager/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn biến lương</a></li>
									<li><a href="/k54/manager/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen thưởng</a></li>
									<li><a href="/k54/manager/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ luật</a></li>
								</ul>
							</div>
							<!--End accordion -->

						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
				</c:if>



				<c:if test="${user.permission == 3}">
					<div class="box_right">
						<div class="title_box">
							<a>Chức năng quản lý</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/superManager/quanly/donvi.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản lý đơn vị</a></li>
									<li><a href="/superManager/quanly/phongban.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản lý phòng ban</a></li>
									<li><a href="/superManager/quanly/thongtincanbo.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản lý thông tin cán bộ</a></li>
									<li><a href="/superManager/quanly/baocao.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Báo cáo</a></li>
									<li><a href="/superManager/quanly/thongke.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Thống kê</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					
					<div class="box_right">
						<div class="title_box">
							<a>Cập nhật</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật thông tin cá nhân</a></li>
									<li><a href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật lý lịch khoa học</a></li>
									<li><a href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật tài khoản</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					<div class="box_right">
						<div class="title_box">
							<a>Thông tin cá nhân</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/superManager/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ yếu lý lịch</a></li>
									<li><a href="/k54/superManager/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý lịch khoa học</a></li>
									<li><a href="/k54/superManager/thongtin/quatrinhcongtac.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Quá trình công tác</a></li>
									<li><a href="/k54/superManager/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn biến lương</a></li>
									<li><a href="/k54/superManager/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen thưởng</a></li>
									<li><a href="/k54/superManager/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ luật</a></li>
								</ul>
							</div>
							<!--End accordion -->

						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
				</c:if>
			</c:if>
		</div>
		<!--End wrap_right-->
		<div class="clear"></div>
		<div id="wrap_footer"></div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper -->
</body>
</html>
