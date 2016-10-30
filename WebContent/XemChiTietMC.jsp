<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/qlmc" 
		user="root" 
		password=""/>

	
	
	<% String c= request.getParameter("abc");%>
	<c:set var="a" value="<%=c %>" />
	<sql:query var="items"> SELECT * FROM mucmc inner join phancong on mucmc.IDmucmc=phancong.IDmucmc where phancong.IDmucmc= '${a}'</sql:query>
	<%@ page session="true" %>
	<% String d=(String)session.getAttribute("ten");%>
	<c:set var="b" value="<%=d %>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống quản lý minh chứng đảm bảo chất lượng - SPKT</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    	<link href="MyCustom.css" rel="stylesheet">
	<link href="tree.css" rel="stylesheet">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

    <!-- Page-Level CSS -->
    <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

</head>

<body>
   <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Admin.jsp">
                    <img src="assets/img/logo.png" alt="" />
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="top-label label label-warning">3</span>  <i class="fa fa-bell fa-3x"></i>
                    </a>
                    <!-- dropdown alerts-->
                    <ul class="dropdown-menu dropdown-alerts">
                     	<li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-info">Nguyễn Thanh Bình</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>13/10/2016</em>
                                    </span>
                                </div>
                                <div>Có 1 thông báo mới</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-info">Phạm Thị C</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>15/10/2016</em>
                                    </span>
                                </div>
                                <div>Có 1 thông báo mới</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-info">Nguyễn Thanh Bình</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>Hôm qua</em>
                                    </span>
                                </div>
                                <div>Có 1 thông báo mới</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Xem tất cả thông báo</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- end dropdown-alerts -->
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                	 <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                                <img src="assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <div><strong>${b}</strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>

                    
                      
                <li class="">
                        <a href ="NguoiNhapMC.jsp" ><i class="fa fa-book fa-fw"></i>  Danh sách minh chứng</a>
                    </li>
                    <li>
                         <a href ="#" onclick="loadtab2();"><i class="fa fa-pencil fa-fw"></i>  Nhập minh chứng</a>

                    </li>
                     <li>
                        <a href ="Timkiem.jsp" ><i class="fa fa-search fa-fw"></i>  Tìm kiếm</a>
                    </li>

                    
                    
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">CHI TIẾT MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class="col-sm-10 col-sm-offset-1" >
						
						<div class="panel panel-primary ">
							<c:forEach items="${items.rows}" var="col">	
								  <div class="panel-heading">Thông tin minh chứng</div>
								      <div class="panel-body">
								    <br>
								    	<label class="control-label col-sm-3" for="namemc">Tên mục minh chứng</label>
										<div class="col-sm-8">
										     <input type="text" class="form-control" id="namemc" value="${col.TenMucmc}" disabled>
										</div>
									</div>
								    <div class="panel-body">
										<label class="control-label col-sm-3" for="mota">Mô tả minh chứng</label>
										<div class="col-sm-8">
										     <input type="text" class="form-control" id="mota" value="${col.MoTa}" disabled>
										</div>
									</div>
									<div class="panel-body">
										<label class="control-label col-sm-3" for="file">File minh chứng</label>
										<div class="col-sm-5">     
											        <label style="font-size: 20px">
											        	<span class="glyphicon glyphicon-file" style="font-size:30px;" ></span>
											        ${col.File}</label>			
											        <a href="minhchung/mc1.txt">  Download</a>							
										</div>
									</div>
									<div class="panel-body">
										<label class="control-label col-sm-3" for="nguoitao">Người tạo</label>
										<div class="col-sm-3">
										     <input type="text" class="form-control" id="nguoitao" value="${col.NguoiTao}" disabled>
										</div>
										<label class="control-label col-sm-2" style="margin-left: 20px;" for="nguoigiao">Người nhập</label>
										<div class="col-sm-3">
										     <input type="text" class="form-control" id="nguoigiao" value ="${col.NguoiDuocGiao}" disabled>
										</div>
									</div>
									<div class="panel-body">
										<label class="control-label col-sm-3" for="date">Ngày tạo</label>
										<div class="col-sm-3">
										     <input type="text" class="form-control" id="date" value="${col.NgayTao}" disabled>
										</div>
										<label class="control-label col-sm-2" style="margin-left: 20px;" for="state">Tình trạng</label>
										<div class="col-sm-3">
										     <input type="text" class="form-control" id="state" value ="${col.TrangThai}" disabled>
										</div>
									</div>
									<div class="panel-body">
										<label class="control-label col-sm-3" for="date">Ngày hết hạn</label>
										<div class="col-sm-3">
										     <input type="text" class="form-control" id="date" value="${col.NgayHoanThanh}" disabled>
										</div>
										<label class="control-label col-sm-2" style="margin-left: 20px;" for="state">Ngày nhập</label>
										<div class="col-sm-3">
										     <input type="text" class="form-control" id="state" value ="${col.NgayNhap}" disabled>
										</div>
									</div>
									<br>
							 </c:forEach>		
						 </div>
							
																
				
			</div>
				
                    <!--End Advanced Tables -->
                </div>
            </div>
            
                    <!--  end  Context Classes  -->
                </div>
 </div>


    <!-- Core Scripts - Include with every page -->

    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script> 
	<script language="javascript">
				
		
					function loadtab2() {
						
						  $('#page-wrapper').load('NhapMC.jsp');
					}
				
		</script>
	
	

</body>
<footer style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff" >
	<h5> © 2016 Website quản lý minh chứng đảm bảo chất lượng - Group 18</h5>
</footer>
</html>
