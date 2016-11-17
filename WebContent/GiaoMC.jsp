<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/qlmc" 
		user="root" 
		password=""/>
	<sql:query var="items"> SELECT * FROM user where IDROLE=1  </sql:query>
<%@ page session="true" %>
	<% String id=(String)session.getAttribute("id");%>
	<c:set var="i" value="<%=id %>" />
	<% String c=(String)session.getAttribute("ten");%>
	<c:set var="a" value="<%=c %>" />

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
                <a class="navbar-brand" href="NguoiGiaoMC.jsp">
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
                        <a href="NguoiGiaoMC.jsp"  ><i class="fa fa-book fa-fw"></i>Xem cây minh chứng</a>
                    </li>
                     <li class="">
                        <a href="GiaoMC.jsp" ><i class="fa fa-pencil fa-fw"></i>Phân công nhập minh chứng</a>
                    </li>
                     <li class="">
                        <a href="#" onclick="loadKT()"><i class="fa fa-check fa-fw"></i>Kiểm tra mục minh chứng</a>
                    </li>
                     <li>
                        <a href="Timkiem1.jsp" ><i class="fa fa-search fa-fw"></i> Tìm kiếm</a> 
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
                    <h1 class="page-header">GIAO MINH CHỨNG</h1>
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
			   				<div class="easy-tree">
											<ul>
								
										<jsp:include page="loadmc.do" >
											<jsp:param name="link" value="chinhsua"/>
											</jsp:include>
										
						    </ul>

							</div>
					</div>
				</div>
			</div>
				
                    <!--End Advanced Tables -->
                </div>
            </div>
            
                    <!--  end  Context Classes  -->
                </div>
 </div>

     <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Giao minh chứng</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" action="giaomc.do" id="myForm" method="post">
         <fieldset>
           <div class="form-group">
             <label class="control-label col-md-4" for="namemc">Mục minh chứng: </label>
             <div class="col-md-7">
            	 <input id="idmc" name="idmc" hidden="true"  ></input>
            	 
               <input type="text" class="form-control input-lg" name="namemc" id="namemc" value="${col2.TenMucmc}"  readonly="readonly">
             
             </div>
           </div>
           <div class="form-group">
             <label class="control-label col-md-4" for="nguoinhap">Người được giao: </label>
             <div class="col-sm-7" id="nguoinhap" >
				 <select  name="nguoinhap" class="form-control">
				  <c:forEach items="${items.rows}" var="col">	
							<option  name="nguoinhap" value="${col.ID}">${col.NAME}</option>
					</c:forEach>		
				</select>
			</div>
           </div>
           <div class="form-group">
				<label class="control-label col-sm-4" for="ngayhoanthanh">Ngày hoàn thành</label>
					<div class="col-sm-7">
						<input type="date" name="ngayhoanthanh" id="ngayhoanthanh" placeholder="Enter date" class="form-control"   required>  
					</div>
			</div>
           <button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
           </fieldset>
         </form>
        </div>
        <div class="modal-footer">
          <button id="btnXacnhan" type="button" class="btn btn-success" data-dismiss="modal">Xác nhận</button>
        </div>
      </div>
      
    </div>
  </div>
  
      


    <!-- Core Scripts - Include with every page -->
  
   <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    
  <script type="text/javascript">
   function validateText(id)
	 {
		 if($("#"+id).val()==null ||$("#"+id).val()=="")
			 {
			 var div = $("#"+id).closest("div");
			 div.removeClass("has-success");
			 $("#glypcn"+id).remove();
			 div.addClass("has-error has-feedback");
			 div.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-remove form-control-feedback"></span>')
			 return false;
			 }
		 else
			 {
			 var div = $("#"+id).closest("div");
			 div.removeClass("has-error");
			 $("#glypcn"+id).remove();
			 div.addClass("has-success has-feedback");
			 div.append('<span id="glypcn'+id+'"class="glyphicon glyphicon-ok form-control-feedback"></span>')
			 return true;
			 }
	 }
			$(document).ready(function(){
				  
				$('#btnXacnhan').on('click',function(){
					var retVal = confirm("Lưu thay đổi?");
					if( retVal == true )
		               {
						if(!validateText("ngayhoanthanh"))
						{
						 return false;
						}
					            	
									
					            	submit();
					                  
		               }
		               else{
		                  
		                  return false;
		               }
				});
				$('#btnHuy').on('click',function(){
					var retVal = confirm("Bạn có chắc muốn thoát?");
		               if( retVal == true ){
		            	   document.location = 'NguoiGiaoMC.jsp';
		                  return true;
		               }
		               else{
		                  
		                  return false;
		               }
				});
				
			});
			</script> 
	<script type="text/javascript">
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
	});



})
		function loadKT()
				{
					$('#page-wrapper').load('KiemTraMinhChung.jsp');
				}
				
				function loadtab3() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("page-wrapper").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "KiemTraMinhChung.jsp", true);
					  xhttp.send();
					}
				function test ()
				{
	
					 
					 var x = $(".easy-tree").find('li.li_selected').attr("id");
				//	 var y= $(".easy-tree").find('li.li_selected').clone().children().remove().end().text();
					 var z= $(".easy-tree").find('li.li_selected').attr("value");
					 $("#idmc").val(x);
					 $("#namemc").val(z);
					 $('#myModal').modal('show');
		
					
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

