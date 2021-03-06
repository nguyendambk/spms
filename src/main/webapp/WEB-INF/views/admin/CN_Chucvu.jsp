<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chức vụ</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" type="text/css"
			href="<c:url value = "/resources/css/admin.css"/>">
		<script type="text/javascript"
			src="<c:url value = "/resources/js/jquery.js"/>"></script>

    </head>
    <body>
        <div id="wrapper">
            <div id="wrap_header">

            </div> <!--End wrap_header-->
            <div id="wrap_main">
                <div id="wrap_left">
                    <div class="menu_left">
                        <ul>
                            <li ><a href="/k54/admin/logsystem.spms">Nhật ký hệ thống</a></li>
                            <li ><a>Cập nhật danh mục</a>
                                <ul>
                                    <li><a href="/k54/admin/updatesalary.spms">Ngạch lương</a></li>
                                    <li><a href="/k54/admin/updatechucvu.spms">Chức vụ</a></li>
                                    <li><a href="/k54/admin/updatehocham.spms">Học hàm</a></li>
                                    <li><a href="/k54/admin/updatehocvi.spms">Học vị</a></li>
                                </ul>
                            </li>
                            <li><a href="/k54/admin/phanquyen.spms">Phân quyền</a></li>
                            <li><a href="/k54/admin/taotaikhoan.spms">Tạo tài khoản</a></li>
                            <li><a href="/k54/admin/duyettaikhoan.spms">Duyệt tài khoản khách</a></li>
                        </ul>
                    </div>
                </div> <!--End wrap_left--> 
                <div id="wrap_center">
				<div class="title_home">
					<a>
					<c:if test='${not empty "${title_home}"}'>${title_home}</c:if>
					<c:if test='${empty "${title_home}"}'>Chức vụ</c:if>
					</a>
				</div>
				<div class="list_data">
				
					<c:if test='${chucvu.idchucvu != null}'>
						<form name="edit_hocvi" action="/k54/admin/updatechucvu.spms?manager=capnhat&idchucvu=${chucvu.idchucvu }" method="POST">
					</c:if>
					<c:if test='${chucvu.idchucvu == null}'>
						<form name="edit_hocvi" action="/k54/admin/updatechucvu.spms?manager=capnhat" method="POST">
					</c:if>
                            <table  class="boloc" cellspacing="0" cellpadding="1" style="width: 700px">
                                <tr>
                                    <td style="width: 20%;"><label>Tên</label></td>
                                    <td><input name="ten" size="40" type="text" value="${chucvu.ten}"/></td>
                                </tr>
                                
                            </table>
                            <div style="text-align: center; margin-top: 20px;" >
                                <input type="submit" class="button" value="Cập nhật"/>
                            </div>
                            
                        </form>
                        
                    </div><!--End list_data-->
                   
                </div><!--End wrap_center--> 
                <div class="clear"></div>
            </div><!--End wrap_main -->
            <div class="clear"></div>
            <div id="wrap_footer">

            </div> <!--End wrap_footer-->
        </div> <!--End wrapper-->
    </body>
</html>
