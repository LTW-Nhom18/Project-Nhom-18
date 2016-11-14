<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/qlmc" 
		user="root" 
		password=""/>

	
	<%@ page session="true" %>
	<% String c= request.getParameter("abc");%>
	<c:set var="a" value="<%=c %>" />
	
	<sql:query var="items"> SELECT * FROM mucmc inner join phancong on mucmc.IDmucmc=phancong.IDmucmc where phancong.IDmucmc= '${a}'</sql:query>
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
    <!--  wrapper -->
    
            
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">NHẬP MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-primary">
					    <div class="panel-heading">Thông tin minh chứng</div>
					    <div class="panel-body" >
					    <form class="form-horizontal" action="addmc.do" id="myForm" method="post" enctype="multipart/form-data">
					    <fieldset>					 
					     <c:forEach items="${items.rows}" var="col">	
							  <div class="form-group">
						
							    <label class="control-label col-sm-4" for="tenmc" >Tên mục minh chứng:</label>
							    <div class="col-sm-7">
							      <input type="text" class="form-control" name="tenmc" id="tenmc" value="${col.TenMucmc}" readonly="readonly">
							      <input name="idmc" value="${a}" hidden="true">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="mota" style="margin-left:0;">Mô tả:</label>
							    <div class="col-sm-7"> 
							      <input type="text" class="form-control" name="mota" id="mota" placeholder="Nhập mô tả minh chứng" required="required">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="nguoitao">Người tạo:</label>
							    <div class="col-sm-7"> 
							      <input type="text" class="form-control" name="nguoitao" id="nguoitao" value="${col.NguoiTao}" readonly="readonly">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="nguoinhap">Người nhập:</label>
							    <div class="col-sm-7"> 
							      <input type="text" class="form-control" name="nguoinhap" id="nguoinhap" value="${col.NguoiDuocGiao}" readonly="readonly">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="loaifile">Loại file:</label>
							    <div class="col-sm-7" id="phanquyen" >
											  <select  name="loaifile" id="loaifile" class="form-control">
												  <option  name="loaifile" value="Document">Document</option>
												  <option  name="loaifile" value="Image">Image</option>
												  <option  name="loaifile" value="Video">Video</option>
												  <option  name="loaifile" value="Zip">Zip</option>
											  </select>
								</div>
							  </div>
							 <div class="form-group">
							   <label class="control-label col-sm-4" for="fx">Up file minh chứng:</label>
										<div class="col-sm-7">
										     <input type="file" class="form-control" name="fx" id="fx" required="required">
										</div>
							  </div>
							   <button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
						 </c:forEach>	
							  </fieldset>
							</form>
					    </div>
					    	
					    <div class="panel-footer" >

					    	<form class="form-inline col-md-offset-9  ">
					    	<button type="button" class="btn btn-primary btn-md" id="btnXacnhan">Hoàn tất</button>
							<button style="margin-left:25px;" type="button" class="btn btn-primary btn-md" id="btnHuy">Hủy</button>
							</form>
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
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
     
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
					var retVal = confirm("Lưu thay đổi ?");
		               if( retVal == true )
		               {
					            	if(!validateText("tenmc"))
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
									if(!validateText("nguoinhap"))
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
		            	   document.location = 'NguoiNhapMC.jsp';
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


</body>

</html>
