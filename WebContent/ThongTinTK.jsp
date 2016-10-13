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

</head>

<body>
     
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">CHI TIẾT TÀI KHOẢN</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                   <div class="col-md-5">
				<div class="panel panel-primary">
				    <div class="panel-heading">Thông tin tài khoản</div>
				     <div class="panel-body" >
					     <form class="form-horizontal">
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="user" >Tài khoản </label>
							    <div class="col-sm-8">
							      <input type="text" class="form-control" id="user" value="NVA@gmail.com" readonly>
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="pwd">Mật khẩu</label>
							    <div class="col-sm-8"> 
							      <input type="password" class="form-control" id="pwd" value="123456789" readonly>
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="pwdagain">Nhập lại</label>
							    <div class="col-sm-8"> 
							      <input type="password" class="form-control" id="pwdagain" value="123456789" readonly>
							    </div>
							  </div>						  
							  <div class="form-group"> 
							  <label class="control-label col-sm-4" for="phanquyen">Phân quyền</label>
							    <div class="col-sm-8">
						      <input type="text" class="form-control" id="phanquyen" value="Người giao minh chứng" readonly>
							</div>
							  </div>
						</form>
					</div>
	    		</div>
			</div>
			<div class="col-md-7">
				<div class="panel panel-primary">
				    <div class="panel-heading">Thông tin cá nhân</div>
				    <div class="panel-body" >
				    	  <form class="form-horizontal">
						<div class="form-group">
						    <label class="control-label col-sm-3" for="inputName">Họ tên </label>
						    <div class="col-sm-9">
						      <input type="text" class="form-control" id="inputName" value="Nguyễn Văn A" readonly>
						      <label class="radio-inline"><input type="radio" name="optradio" checked="checked" disabled="disabled">Nam</label>
						      <label class="radio-inline"><input type="radio" name="optradio" disabled="disabled">Nữ</label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="inputDate">Ngày sinh </label>
						    <div class="col-sm-9">
						    	<div class="input-group">
						          <input type="text" name="cognito_time_slots" id="inputDate" value="22/07/1965"  class="form-control input-lg datepicker" readonly >
						          <span class="input-group-addon time-slots-loading">
						          	 <i class="glyphicon glyphicon-calendar"></i>
						          </span>
						         
						        </div>
		
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="inputTel">Điện thoại </label>
						    <div class="col-sm-9">
						      <input type="text" class="form-control" id="inputTel" value="0123696548" readonly>
							</div>
						</div>
						<div class="form-group"> 
						  <label class="control-label col-sm-3" for="Khoa">Khoa:</label>
						   <div class="col-sm-9">
						      <input type="text" class="form-control" id="Khoa" value="Công Nghệ Thông Tin" readonly>
							</div>
						 </div>
						 <div class="form-group">
							<label class="control-label col-sm-3" for="chucvu">Chức vụ: </label>
						   <div class="col-sm-9">
						      <input type="text" class="form-control" id="chucvu" value="Trưởng khoa" readonly>
							</div>
						</div>
					</form>
				    </div>
				  

	    		</div>
			</div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            
            
                    <!--  end  Context Classes  -->
       

    <!-- Core Scripts - Include with every page -->

    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
    


</body>

</html>