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
	<sql:query var="items"> SELECT * FROM user WHERE ID = '${a}'  </sql:query>
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
   
            
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">CẬP NHẬT TÀI KHOẢN</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
				 <form class="form-horizontal" id="formMain" name="formMain" action="Admin.jsp" method="post">
				  <c:forEach items="${items.rows}" var="col">	
					<fieldset>
					
		                <div class="col-md-5">
							<div class="panel panel-primary">
						 
								<div class="panel-heading">Thông tin tài khoản</div>
								 <div class="panel-body" >

									  <div class="form-group">
									    <label class="control-label col-sm-4" for="user">Tài khoản </label>
									    <div class="col-sm-8">
									      <input type="text" class="form-control"  name="user" id="user" required value="${col.ID}">
		
									    </div>
									  </div>
									  <div class="form-group">
									    <label class="control-label col-sm-4" for="pwd">Mật khẩu</label>
									    <div class="col-sm-8"> 
									      <input type="text" class="form-control" name="pwd" id="pwd"  required value="${col.PASS}">
		
									    </div>
									  </div>
									  <div class="form-group">
									    <label class="control-label col-sm-4" for="pwdagain">Nhập lại</label>
									    <div class="col-sm-8"> 
									      <input type="text" class="form-control"  name="pwdagain" id="pwdagain" required value="${col.PASS}">
		
									    </div>
									  </div>						  
									  <div class="form-group"> 
									  <label class="control-label col-sm-4" for="phanquyen">Phân quyền</label>
									    <div class="col-sm-8" id="phanquyen" >
											  <select class="form-control" id="role" name="role">
												  <option value="qd">Người quy định</option>
												  <option value="g">Người giao</option>
												  <option value="n">Người nhập</option>
												  <option value="kt">Người kiểm tra</option>
											  </select>
											   <c:choose>
											    <c:when test="${col.ROLE=='Người quy định'}">
											  <script>   document.getElementById('role').value ='qd';  </script>
											    </c:when>
											   <c:when test="${col.ROLE=='Người giao'}">
											  <script>   document.getElementById('role').value ='g'; </script> 
											    </c:when>
											    <c:when test="${col.ROLE=='Người nhập'}">
											  <script>   document.getElementById('role').value ='n'; </script> 
											    </c:when>
											    <c:when test="${col.ROLE=='Người kiểm tra'}">
											  <script>   document.getElementById('role').value ='kt'; </script> 
											    </c:when>
									
											
											   </c:choose>
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
									      <input type="text" class="form-control" name="inputName" id="inputName"  required value="${col.NAME}">
									      <c:choose>
							    <c:when test="${col.GTINH=='Nam'}">
							       <label class="radio-inline"><input type="radio" name="optradio" checked="checked" >Nam</label>
						     		 <label class="radio-inline"><input type="radio" name="optradio" >Nữ</label>
							    </c:when>
							    <c:when test="${col.GTINH=='Nữ'}">
							       <label class="radio-inline"><input type="radio" name="optradio" >Nam</label>
						     		 <label class="radio-inline"><input type="radio" name="optradio" checked="checked"  >Nữ</label>
							    </c:when>
							    </c:choose>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="inputDate">Ngày sinh </label>
									    <div class="col-sm-9">
									          <input type="date" name="inputDate" id="inputDate"  class="form-control"   required value="${col.DATE}">  
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="inputTel">Điện thoại </label>
									    <div class="col-sm-9">
									      <input type="tel" class="form-control" name="inputTel" id="inputTel"  required value="${col.TEL}">
										</div>
									</div>
									<div class="form-group"> 
									  <label class="control-label col-sm-3" for="Khoa">Khoa/Phòng ban:</label>
									 
									    <div class="col-sm-9">
											  <select class="form-control" id="Khoa" name="Khoa" >
												  <option  value="CNTT" >Công nghệ thông tin</option>
												  <option   value="CNM">Công nghệ may</option>
												  <option  value="CKD">Cơ khí động lực</option>
												  <option value="PDBCL">Phòng đảm bảo chất lượng</option>
												  <option   value="PDT">Phòng đào tạo</option>
												  <option   value="BGH">Ban giám hiệu</option>
											  </select>
											   <c:choose>
											    <c:when test="${col.KHOA=='Công nghệ thông tin'}">
											  <script>   document.getElementById('Khoa').value ='CNTT';  </script>
											    </c:when>
											   <c:when test="${col.KHOA=='Công nghệ may'}">
											  <script>   document.getElementById('Khoa').value ='CNM'; </script> 
											    </c:when>
											    <c:when test="${col.KHOA=='Cơ khí động lực'}">
											  <script>   document.getElementById('Khoa').value ='CKD'; </script> 
											    </c:when>
											    <c:when test="${col.KHOA=='Phòng đảm bảo chất lượng'}">
											  <script>   document.getElementById('Khoa').value ='PDBCL'; </script> 
											    </c:when>
											    <c:when test="${col.KHOA=='Phòng đào tạo'}">
											  <script>   document.getElementById('Khoa').value ='PDT'; </script> 
											    </c:when>
											    <c:when test="${col.KHOA=='Ban giám hiệu'}">
											  <script>   document.getElementById('Khoa').value ='BGH'; </script> 
											    </c:when>
											
											   </c:choose>
									    </div>
									 </div>
									 <div class="form-group">
										<label class="control-label col-sm-3" for="chucvu">Chức vụ: </label>
									    <div class="col-sm-9">
									      <select class="form-control" id ="chucvu" >
												  <option value="tk">Trưởng khoa </option>
												  <option value="pk">Phó khoa</option>
												  <option value="cbvc">CBVC</option>
												  <option value="tp">Trưởng phòng</option>
												  <option value="pp">Phó phòng</option>
												  <option value="tt">Thanh tra</option>
												  <option value="khac">Khác</option>
			
											  </select>
											   <c:choose>
											    <c:when test="${col.CHUCVU=='Trưởng khoa'}">
											  <script>   document.getElementById('chucvu').value ='tk'; </script> 
											    </c:when>
											   <c:when test="${col.CHUCVU=='Phó khoa'}">
											  <script>   document.getElementById('chucvu').value ='pk'; </script> 
											    </c:when>
											    <c:when test="${col.CHUCVU=='CBVC'}">
											  <script>   document.getElementById('chucvu').value ='cbvc'; </script> 
											    </c:when>
											    <c:when test="${col.CHUCVU=='Trưởng phòng'}">
											  <script>   document.getElementById('chucvu').value ='tp'; </script> 
											    </c:when>
											    <c:when test="${col.CHUCVU=='Phó phòng'}">
											  <script>   document.getElementById('chucvu').value ='pp'; </script> 
											    </c:when>
											    <c:when test="${col.CHUCVU=='Thanh tra'}">
											  <script>   document.getElementById('chucvu').value ='tt'; </script> 
											    </c:when>
											     <c:when test="${col.CHUCVU=='Khác'}">
											  <script>   document.getElementById('chucvu').value ='khac'; </script> 
											    </c:when>
											
											   </c:choose>
										</div>
									</div>

						<button  type="submit" hidden="true" id="btnsubmit" name="btnsubmit"></button>
					
				    </div>

		    		</div>
	           <!--End col 7 -->
	           	 </div>
	           	
				</fieldset>
			 </c:forEach>
			</form>
					 <div class="row">
			   			<div class= "col-md-offset-10">
			   			<form class="form-inline" >
							<div class="form-group" >
							<button  type="button" class="btn btn-primary btn-md" id="btnHoanTat" >Hoàn tất</button>
							<button  style="margin-left:20px;" id="btnHuy" type="button" class="btn btn-primary btn-md" style="margin-left:20px;" >Hủy</button>
							</div>
						</form>
						</div>
					</div>
					<!-- end col 12 -->
            </div>
                    <!--  end  Context Classes  -->
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
						inputDate: {
							required: true,
					
						},
				
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

</html>