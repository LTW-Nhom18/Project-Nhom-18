<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
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
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">
                    <img src="assets/img/logo.png" alt="" />
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="top-label label label-danger">3</span><i class="fa fa-envelope fa-3x"></i>
                    </a>
                    <!-- dropdown-messages -->
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-danger">Andrew Smith</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-info">Jonney Depp</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong><span class=" label label-success">Jonney Depp</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- end dropdown-messages -->
                </li>

                

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="top-label label label-warning">5</span>  <i class="fa fa-bell fa-3x"></i>
                    </a>
                    <!-- dropdown alerts-->
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i>New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i>3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i>Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i>New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i>Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
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
                                <div><strong>Nguyễn Văn A</strong></div>
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
                        <a href="#" onclick="loadtab2()"><i class="fa fa-file fa-fw"></i>Quản lý mục minh chứng</a>
                     <li>
                        <a href="#" onclick="loadtab3()"><i class="fa fa-search fa-fw"></i> Tìm kiếm</a>
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
                    <h1 class="page-header">CẬP NHẬT MỤC MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-primary">
						  <div class="panel-heading"><h4>Mục minh chứng 1</h4></div>
						    <div class="panel-body">
						    <form class="form-horizontal" action="NguoiQuyDinhMC.jsp" method="get">
								<fieldset>
									    	<div class="form-group">
										    	<label class="control-label col-sm-3" for="namemc">Tên mục minh chứng </label>
												<div class="col-sm-8">
												     <input type="text" class="form-control" id="namemc" value="Tham gia hội thao" required="required">
												</div>
											</div>
									   <div class="form-group">
											<label class="control-label col-sm-3" for="mota">Mô tả minh chứng</label>
											<div class="col-sm-8">
											     <input type="text" class="form-control" id="mota" value="Tham gia hội thao công đoàn trường HK2 - Năm học 2016-2017" required="required" >
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-3" for="file">File minh chứng</label>
											<div class="col-sm-8">
												<div class="form-group">
													    <div class="container">
															   <label class="radio-inline"><input type="radio" name="optradio" checked="checked" >Văn bản</label>
														      <label class="radio-inline"><input type="radio" name="optradio" >Hình ảnh</label>
														      <label class="radio-inline"><input type="radio" name="optradio" >Video</label>
														      <label class="radio-inline"><input type="radio" name="optradio" >Zip</label>
														</div>
												</div>	
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-3" for="nguoitao">Người tạo</label>
											<div class="col-sm-8">
											     <input type="text" class="form-control" id="nguoitao" value="Phòng ĐBCL" required="required">
											</div>
											
											<br>
										</div>
										<div class="form-group">
										<label class="control-label col-sm-3"  for="nguoigiao">Người giao</label>
											<div class="col-sm-8">
											     <input type="text" class="form-control" id="nguoigiao" value ="Trưởng khoa CNTT " required="required"> 
											</div>
										</div>
										<button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
									  </fieldset>
								  </form>
								  
								  <div class="panel-footer">
											<form class="form-inline col-md-offset-10 "  >
												<button type="button" class="btn btn-primary" id="btnXacnhan">Xác nhận</button>
												<button style="margin-left:20px;" id="btnHuy" type="button" class="btn btn-primary">Hủy</button>
											</form>
									</div>
						  </div>
						
					</div>
				<!-- tab content -->
				
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
	<script type="text/javascript">
					 function submit()
					 {
					    $("#btnsubmit").click();
					    
					 }
		</script>
	
	 <script type="text/javascript">
			$(document).ready(function(){
				
				$('#btnXacnhan').on('click',function(){
					var retVal = confirm("Lưu thay đổi ?");
		               if( retVal == true ){
		            	   submit();
		                  return true;
		               }
		               else{
		                  
		                  return false;
		               }
				});
				$('#btnHuy').on('click',function(){
					var retVal = confirm("Bạn có chắc muốn thoát?");
		               if( retVal == true ){
		            	   document.location = 'NguoiQuyDinhMC.jsp';
		                  return true;
		               }
		               else{
		                  
		                  return false;
		               }
				});
				
			});
			</script>
	
	
	<script language="javascript">
					
				function loadtab2() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("page-wrapper").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "QLMucMC.jsp", true);
					  xhttp.send();
					}
				function loadtab3() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("page-wrapper").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "Timkiem2.jsp", true);
					  xhttp.send();
					}
		</script>


</body>
<footer style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff" >
	<h5> © 2016 Website quản lý minh chứng đảm bảo chất lượng - Group 18</h5>
</footer>
</html>
