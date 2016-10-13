<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng nhập - Hệ thống quản lý minh chứng ĐBCL</title>
    <script src="login.e-school.edu.vn/Scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
    <link href="login.e-school.edu.vn/Content/css/common.css" rel="stylesheet" type="text/css" />
    <script src="login.e-school.edu.vn/Scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script src="login.e-school.edu.vn/Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="login.e-school.edu.vn/Scripts/jquery.validate.unobtrusive.min.js" type="text/javascript"></script>
    <script src="login.e-school.edu.vn/Scripts/md5.js" type="text/javascript"></script>
    <script src="login.e-school.edu.vn/Scripts/jquery.browser-fingerprint-1.1.js" type="text/javascript"></script>
    <script src="login.e-school.edu.vn/Scripts/jquery.cookie.js" type="text/javascript"></script>
</head>
<body class="body-login">
<!-- 
	<div class="row">
			<div class="col-md-12" style="min-height:100px;">
				<br><br>
   				<center><img border="0" src="image/SPKT.jpg" height="143"  ></center>
   			
   			</div>
   	</div>  -->
   	<div class="row">
   	
    <div class="container-login">
    
       <h1 class="title-head">SMS Hệ thống quản lý minh chứng ĐBCL</h1>
        <div class="main">
           <br><br><br><br>
			<form action="" method=""><input type="hidden"  />               
				 <div class="col-login">
                    <div class="box-login">
                        <h2>Đăng nhập hệ thống</h2>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Tên đăng nhập" id ="UserName" name ="UserName" maxlength ="128">
                            <span class="icon icon-username"></span>
                        </div>
                        <div class="input-group">
                            <input type="password" class="form-control" placeholder="Mật khẩu" id ="Password" name ="Password" maxlength ="128">
                            <span class="icon icon-password"></span>
                        </div>
                        <div class="box-remember-forget">
                            <label><input type="checkbox" id ="RememberMe" name ="RememberMe"> Ghi nhớ?</label>
                        </div>
                        
                        <div class="box-btn">
                            <button class="btn-login" onclick="Admin();">Đăng nhập</button>
                            <input type="hidden" id="tokenAuthen" name="tokenAuthen" />
                        </div>
                        <div class="box-message-logon" id ="idErrorMessage" style ="display:none;">
						    <div class="box-message-in-logon">
							    <div class="box-message-btm"></div>
						    </div>
					    </div>
                    </div>
                    <p class="txt-footer">Trường Đại học Sư phạm Kỹ thuật TPHCM </p>
                </div>
			</form>       
 		</div>
    </div>
    </div>
    <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script language = JavaScript>

	function Admin()
	{
		location = 'DSTaikhoan.jsp';

	}
</body>
	
	

<!-- Mirrored from login.e-school.edu.vn/Account/LogOn by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Oct 2016 11:16:29 GMT -->
</html>

            <div id="footer">
            </div>
        </div>
    </div>
</body>
</html>
