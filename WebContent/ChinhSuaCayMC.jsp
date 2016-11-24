<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<% String c=(String)session.getAttribute("ten");%>
	<c:set var="a" value="<%=c %>" />


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

	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

    <!-- Page-Level CSS -->
    <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="stylesheet" href="css/easyTree.css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<link href="assets/js/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="assets/js/jquery.min.js"></script>
	<script src="assets/css/bootstrap.min.js"></script>
		<script src="src/easyTree2.js"></script>
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
                <a class="navbar-brand" href="NguoiQuyDinhMC.jsp">
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
                        <li><a href="logout.do"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
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
                                <div><strong>${a}</strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>

                    
                             <li class="">
                        <a href="NguoiQuyDinhMC.jsp"><i class="fa fa-book fa-fw"></i>Quản lý cây minh chứng</a>
                    </li>
                     <li class="">
                        <a href="#" onclick="loadtab2();"><i class="fa fa-file fa-fw"></i>Quản lý mục minh chứng</a>
                     <li>
                        <a href="Timkiem2.jsp" ><i class="fa fa-search fa-fw"></i> Tìm kiếm</a>
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
                    <h1 class="page-header">QUẢN LÝ CÂY MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class="panel-group" id="accordion">
					<div class ="panel panel-primary">
						<div class="panel-heading">Cây minh chứng</div>
						   
						
						<div class="panel-body">
							<div class="col-md-12" >
							<form class="form-inline  "  >
									<input class="btn btn-success" type="button" onclick="expand();" value="Expand All">
									<input class="btn btn-danger" type="button" onclick="collapse();" value="Collapse All">
									
								</form>
								<br>
								<div class="easy-tree">
										<ul>
										<jsp:include page="loadmc.do" >
											<jsp:param name="link" value="chinhsua"/>
											</jsp:include>
										
											</ul>
							</div>
						</div>
					</div>
					<div class="panel-footer">
					<form class="form-inline  "  >
						
					</form>
				</div>
				</div>
			</div>
				
                    <!--End Advanced Tables -->
                </div>
            </div>
      </div>
            </div>         
                    <!--  end  Context Classes  -->


		<script type="text/javascript">
			$(document).ready(function(){
							
					
	
			});
			function expand() {
				 $('.easy-tree li ul > li').show();
				}
			function collapse()
			{
				$('.easy-tree li ul > li').hide();
			}
			function loadtab2() {
				$('#page-wrapper').load('QLMucMC.jsp');
				}
			function themcay()
			{
				if($('#text').val()==null ||$('#text').val()=="")
					{
					alert("Nhập tên mục minh chứng!");
					}
				else
					{
					 var x = $(".easy-tree").find('li.li_selected').attr("id");
			//	alert("Hello! ID is: " );
				window.location.href="taocay?idmc="+x+"&tenmc="+$('#text').val()+"";
		
				$('#add').find('input').val('');
				$('#add').remove();
				}
			}
			function sua(s)
			{
				 var x = s;
				 var i = $(".easy-tree").find('li.li_selected').attr("id");
			//	alert("HELOOO! "+x+" "+i.toString());
			//	 document.app.Edit("Abc","xyz");
				 window.location.href="suacay?idmc="+i+"&tenmc="+x+"";

			}
			function xoa()
			{
				var i = $(".easy-tree").find('li.li_selected').attr("id");
				//alert("HELOOO! "+i);
				window.location.href="xoacay?idmc="+i;
			}
			
			</script>


	<script>
    (function ($) {
        function init() {
            $('.easy-tree').EasyTree({
                addable: true,
                editable: true,
                deletable: true
            });
            $('.easy-tree li ul > li').hide();
        }
      
        window.onload = init();
    })(jQuery)
</script>


	




</body>


</html>