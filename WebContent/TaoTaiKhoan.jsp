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
  <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

    <!-- Page-Level CSS -->
    <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

<!-- Load Thư viện jQuery vào trước khi load jQuery Validate-->
<style type="text/css">

	label.error {
		display: inline-block;
		color:red;
		width: 200px;
	}
	</style>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
	
</head>

<body >
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
                        <a href="Admin.jsp"><i class="fa fa-book fa-fw"></i>Danh sách tài khoản</a>
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
                    <h1 class="page-header">TẠO TÀI KHOẢN</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
				 <form class="form-horizontal" id="formMain" name="formMain" action="Admin.jsp" method="get">
					<fieldset>
					
		                <div class="col-md-5">
							<div class="panel panel-primary">
						 
								<div class="panel-heading">Thông tin tài khoản</div>
								 <div class="panel-body" >

									  <div class="form-group">
									    <label class="control-label col-sm-4" for="user">Tài khoản </label>
									    <div class="col-sm-8">
									      <input type="text" class="form-control"  name="user" id="user" placeholder="Enter username" required>
		
									    </div>
									  </div>
									  <div class="form-group">
									    <label class="control-label col-sm-4" for="pwd">Mật khẩu</label>
									    <div class="col-sm-8"> 
									      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter password" required>
		
									    </div>
									  </div>
									  <div class="form-group">
									    <label class="control-label col-sm-4" for="pwdagain">Nhập lại</label>
									    <div class="col-sm-8"> 
									      <input type="password" class="form-control"  name="pwdagain" id="pwdagain" placeholder="Enter password again" required>
		
									    </div>
									  </div>						  
									  <div class="form-group"> 
									  <label class="control-label col-sm-4" for="phanquyen">Phân quyền</label>
									    <div class="col-sm-8" id="phanquyen" >
											  <select class="form-control">
												  <option value="qd">Người quy định</option>
												  <option value="g">Người giao</option>
												  <option value="n">Người nhập</option>
												  <option value="kt">Người kiểm tra</option>
											  </select>
									    </div>
							 	 		</div>

									</div>
					    		</div>
						</div>
						<div class="col-md-7">
							<div class="panel panel-primary">
							    <div class="panel-heading">Thông tin cá nhân</div>
							    <div class="panel-body" >
							
							   
									<div class="form-group">
									    <label class="control-label col-sm-3" for="inputName">Họ tên </label>
									    <div class="col-sm-9">
									      <input type="text" class="form-control" name="inputName" id="inputName" placeholder="Enter name" required>
									      <label class="radio-inline"><input type="radio" name="optradio" checked="checked">Nam</label>
									      <label class="radio-inline"><input type="radio" name="optradio">Nữ</label>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="inputDate">Ngày sinh </label>
									    <div class="col-sm-9">
									          <input type="date" name="inputDate" id="inputDate" placeholder="Enter date" class="form-control"   required>  
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="inputTel">Điện thoại </label>
									    <div class="col-sm-9">
									      <input type="tel" class="form-control" name="inputTel" id="inputTel" placeholder="Enter telephonenumber" required>
										</div>
									</div>
									<div class="form-group"> 
									  <label class="control-label col-sm-3" for="Khoa">Khoa/Phòng ban:</label>
									    <div class="col-sm-9">
											  <select class="form-control" id="Khoa">
												  <option value="CNTT">Công nghệ thông tin</option>
												  <option value="CKM">Cơ khí máy</option>
												  <option value="CNTP">Công nghệ thực phẩm</option>
												  <option value="CNM">Công nghệ may</option>
												  <option value="CKD">Cơ khí động lực</option>
												  <option value="PDBCL">Phòng đảm bảo chất lượng</option>
												  <option value="PDT">Phòng đào tạo</option>
												  <option value="BGH">Ban giám hiệu</option>
											  </select>
									    </div>
									 </div>
									 <div class="form-group">
										<label class="control-label col-sm-3" for="chucvu">Chức vụ: </label>
									    <div class="col-sm-9">
									      <select class="form-control" id ="chucvu" >
												  <option >Trưởng khoa </option>
												  <option >Phó khoa</option>
												  <option >CBVC</option>
												  <option >Trưởng phòng</option>
												  <option >Phó phòng</option>
												  <option >Thanh tra</option>
												  <option >Khác</option>
			
											  </select>
										</div>
									</div>

					
					
				    </div>

		    		</div>
	           <!--End col 7 -->
	           	 </div>
	           	 	<button  type="submit" hidden="true" id="btnsubmit" name="btnsubmit"></button>
				</fieldset>
			</form>
					 <div class="row">
			   			<div class= "col-md-offset-10">
			   			<form class="form-inline" >
							<div class="form-group" >
							<button  type="button" class="btn btn-primary btn-md" id="btnHoanTat" >Hoàn tất</button>
							<button  style="margin-left:20px;" id="btnHuy" type="button"
							 class="btn btn-primary btn-md" style="margin-left:20px;" >Hủy</button>
							</div>
						</form>
						</div>
					</div>
					<!-- end col 12 -->
            </div>
                    <!--  end  Context Classes  -->
        </div>
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
   
    
	    <script type="text/javascript">
			$(document).ready(function(){
				$('#btnHoanTat').on('click',function(){
					var retVal = confirm("Lưu thay đổi?");
		               if( retVal == true ){
		            		submit();
		               }
		               else{
		                  
		                  return false;
		               }
				});
				$('#btnHuy').on('click',function(){
					var retVal = confirm("Bạn có chắc muốn thoát?");
		               if( retVal == true ){
		            	   document.location = 'Admin.jsp';
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

		
<script type="text/javascript">

	$(document).ready(function() {
		
		//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
		$("#formMain").validate({
					rules: {
						user: "required",
				
						pwd: {
							required: true,
							minlength: 5
						},
						pwdagain: {
							required: true,
							minlength: 5,
							equalTo: "#pwd"
						},
						inputName: "required",
						inputDate: "required",
				
						inputTel: {
							required: true,
							minlength: 10,
							digits: true
						},
					},
					messages: {
						user: "Vui lòng nhập user",
					
						
						pwd: {
							required: 'Vui lòng nhập mật khẩu',
							minlength: 'Vui lòng nhập ít nhất 5 kí tự'
						},
						pwdagain: {
							required: 'Vui lòng nhập lại mật khẩu',
							minlength: 'Vui lòng nhập ít nhất 5 kí tự',
							equalTo: 'Mật khẩu không trùng'
						},
						inputName: "Vui lòng nhập họ tên",
			
						inputDate: {
							required: "Vui lòng nhập ngày sinh",
							Date: "Sai định dạng"
						},
						inputTel: {
							required: "Vui lòng nhập số điện thoại",
							minlength: "số điện thoại không hợp lệ",
							digits: "số điện thoại không hợp lệ"
						},
								
					}
				});
		
		});

	</script>


</body>
<footer style="background-color: rgb(83, 163, 163); min-height: 90px; padding-top: 25px;padding-left:40%; ;color: #fff" >
	<h5> © 2016 Website quản lý minh chứng đảm bảo chất lượng - Group 18</h5>
</footer>
</html>	

