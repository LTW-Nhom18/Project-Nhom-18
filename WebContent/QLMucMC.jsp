<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/qlmc" 
		user="root" 
		password=""/>
		<% String c= request.getParameter("id");%>
	<c:set var="a" value="<%=c %>" />
	<sql:query var="items"> SELECT * FROM mucmc LEFT JOIN phancong on mucmc.IDmucmc=phancong.IDmucmc  </sql:query>
	<sql:query var="items2"> SELECT * FROM user where IDROLE=1  </sql:query>
	<sql:query var="items3"> SELECT * FROM user where IDROLE=3  </sql:query>
	<%@ page session="true" %>
	<% String d=(String)session.getAttribute("ten");%>
	<c:set var="t" value="<%=d %>" />
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

		<script src="assets/css/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/easyTree.css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<link href="assets/js/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="assets/js/jquery.min.js"></script>
	<!-- 	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>  -->
		<script src="src/easyTree2.js"></script>

</head>

<body>
    <c:if test="${a!=null}">
        <script type="text/javascript">$(document).ready(function(){$('#myModal').modal('show');})</script>
      </c:if>
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
                                <div><strong>${t}</strong></div>
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
                        <a href="QLMucMC.jsp" ><i class="fa fa-file fa-fw"></i>Quản lý mục minh chứng</a>
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
                    <h1 class="page-header">QUẢN LÝ MỤC MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class ="panel panel-primary" >
                  	  <div class="panel-heading">Cây minh chứng</div>
                  	  <div class="panel-body">
						<form class="form-inline  "  >
									<input class="btn btn-success" type="button" onclick="expand();" value="Expand All">
									<input class="btn btn-danger" type="button" onclick="collapse();" value="Collapse All">
									
								</form>
								<br>
							<div class="col-md-12" >
								<div class="easy-tree">
											<ul>
								
										<jsp:include page="kiemtramc.do" >
											<jsp:param name="link" value="chinhsua"/>
											</jsp:include>
										
						    </ul>

							</div>
						</div>
					</div>
					</div>
					</div>
				<!-- tab content -->
				
                    <!--End Advanced Tables -->
                </div>
 <!-- Modal content-->
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Sửa mục minh chứng</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" action="suamucmc" method="get" id="myForm">
								<fieldset>
								
								<c:forEach items="${items.rows}" var="col">
									<c:choose>
									 <c:when test="${col.id == a}">
									    	<div class="form-group">
										    	<label class="control-label col-sm-4" for="namemc">Tên mục minh chứng </label>
												<div class="col-sm-8">
												 <input id="idmc" name="idmc" value="${a}" hidden="true"  ></input>
												     <input type="text" class="form-control" id="namemc" name="namemc" value="${col.TenMucmc}" required="required">
												</div>
											</div>
									   <div class="form-group">
											<label class="control-label col-sm-4" for="mota">Mô tả minh chứng</label>
											<div class="col-sm-8">											
											     <input type="text" class="form-control" id="mota" name="mota" value="${col.Mota}" required="required" >
											</div>
										</div>
									
										<div class="form-group"> 
									  <label class="control-label col-sm-4" for="file">Loại File</label>
									 
									    <div class="col-sm-8"  >
									     <c:if test="${not empty col.File}">
											  <select  id="file" name="file" class="form-control" >
												  <option  name="file" value="Image">Image</option>
												  <option  name="file" value="Video">Video</option>
												  <option  name="file" value="Document">Document</option>
												  <option  name="file" value="Zip">Zip</option>
											  </select>
											    
									      <script>   document.getElementById('file').value ='${col.File}';  </script>
									    </c:if>
									    <c:if test="${empty col.File}">
											  <input id="file" name="file"  type="text" class="form-control" placeholder="minh chứng chưa được nhập" value="" readonly="readonly" >
										</c:if>
									    
									    </div>
									  
									      
							 	 		</div>
										<div class="form-group">
											<label class="control-label col-sm-4" for="nguoitao">Người tạo</label>
											<div class="col-sm-8">
												<select  id="nguoitao" name="nguoitao" class="form-control" value="${col.NguoiTao}" >
													 <c:forEach items="${items3.rows}" var="col3">	
															<option  name="nguoitao" value="${col3.NAME}">${col3.NAME}</option>
													</c:forEach>	
												 </select>
												
											     
											</div>
											
											<br>
										</div>
										<div class="form-group">
										<label class="control-label col-sm-4"  for="nguoinhap">Người nhập</label>
											<div class="col-sm-8"> 
											<c:if test="${not empty col.NguoiDuocGiao}">
											   <select  id="nguoinhap" name="nguoinhap" class="form-control"  >
													 <c:forEach items="${items2.rows}" var="col2">	
															<option  name="nguoinhap" value="${col2.ID}">${col2.NAME}</option>
													</c:forEach>	
											</select>
												
												  <script>   document.getElementById('nguoinhap').value ='${col.IDnguoiduocgiao}';  </script>
												</c:if>
												<c:if test="${empty col.NguoiDuocGiao}">
											  <input id="nguoinhap" name="nguoinhap"  type="text" class="form-control" value="" placeholder="minh chứng chưa được giao" readonly="readonly" >
												</c:if>
											</div>
										</div>
										<button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
								</c:when>
									</c:choose>	
									</c:forEach>
								
									  </fieldset>
								  </form>
        </div>
        <div class="modal-footer">
          <button id="btnXacnhan" type="button" class="btn btn-success" data-dismiss="modal">Xác nhận</button>
        </div>
      </div>
       </div>
      </div>
         </div>
      </div>

    <!-- Core Scripts - Include with every page -->
 

   <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
	
	<script language="javascript">
				function update()
				{
					$('#page-wrapper').load('SuaMucMC.jsp');
				
				}
				function expand() {
					 $('.easy-tree li ul > li').show();
					}
				function collapse()
				{
					$('.easy-tree li ul > li').hide();
				}
				 function submit()
				 {
				   $("#btnsubmit").click();		  
				    
				 }
	
		</script>
		<script language="javascript">
$(document).ready(function(){
	
    
    
	$(".easy-tree").find('li > span > a').click(function (e) {
		 var li = $(this).parent().parent();
		 $(li).addClass('li_selected');
		test();
		$(li).removeClass('li_selected');
	})
	
	
	$('#btnXacnhan').on('click',function(){
		var retVal = confirm("Lưu thay đổi?");
		if( retVal == true )
           {
   			   	submit();
		                  
           }
           else{
              
              return false;
           }
	});


})
		
		</script>
		<script type="text/javascript">
		function test ()
		{

			 var x = $(".easy-tree").find('li.li_selected').attr("id");
			
			 window.location.href ="QLMucMC.jsp?id="+x;
		
		//	 var someJsVar = "<c:out value='${a}'/>";
	//	alert("abcbca "+someJsVar);
//	 $('#myModal').modal('show');
		

			
		}
			</script>
<script>
    (function ($) {
        function init() {
            $('.easy-tree').EasyTree({
            	selectable: false,
            });
            $('.easy-tree li ul > li').hide();
        }
        
        window.onload = init();
    
    })(jQuery)
</script>
	
	


</body>

</html>
