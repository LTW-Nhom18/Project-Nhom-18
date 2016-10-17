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
						    <form class="form-horizontal" action="NguoiQuyDinhMC.jsp" method="get" id="myForm">
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
	 function validateText(id)
	 {
		 if($("#"+id).val()==null ||$("#"+id).val()=="")
			 {
			 var div = $("#"+id).closest("div");
			 div.addClass("has-error");
			 return false;
			 }
		 else
			 {
			 var div = $("#"+id).closest("div");
			 div.removeClass("has-error");
			 return true;
			 }
	 }
			$(document).ready(function(){
				
				$('#btnXacnhan').on('click',function(){
					var retVal = confirm("Lưu thay đổi ?");
		               if( retVal == true )
		               {
					            	if(!validateText("namemc"))
									{
									 return false;
									}
									if(!validateText("mota"))
									{
									 return false;
									}
									if(!validateText("nguoitao"))
									{
									 return false;
									}
									if(!validateText("nguoigiao"))
									{
									 return false;
									}
					            	$("form#myForm").submit();
					                  
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
	
	
	


</body>

</html>
