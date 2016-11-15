<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/qlmc" 
		user="root" 
		password=""/>
	<%@ page session="true" %>

	<sql:query var="items"> SELECT * FROM mucmc inner join phancong on mucmc.IDmucmc=phancong.IDmucmc </sql:query>


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

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="stylesheet" href="css/easyTree.css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<link href="assets/js/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="assets/js/jquery.min.js"></script>
	<script src="assets/css/bootstrap.min.js"></script>
		<script src="src/easyTree.js"></script>
</head>

<body>
    

            
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
					<form class="form-inline col-md-offset-11 "  >
						<button type="button" class="btn btn-primary" id="btnXacnhan" onclick="update();">Lưu</button>
						
					</form>
				</div>
				</div>
			</div>
				
                    <!--End Advanced Tables -->
                </div>
            </div>
            
                    <!--  end  Context Classes  -->
     
  
		<script type="text/javascript">
			$(document).ready(function(){
				
				$('#btnXacnhan').on('click',function(){
					var retVal = confirm("Lưu thay đổi?");
		               if( retVal == true ){
		            	   document.location = 'NguoiQuyDinhMC.jsp';
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
<script>
    (function ($) {
        function inittree() {
        	var item = $('<li id="1">ABC</li>');
        	var item2 = $('<li>XYZ</li>');
        	$(".easy-tree >ul").append(item);
       // 	$(".easy-tree >ul li:eq(0)").append("<ul></ul>");
       //		$(".easy-tree >ul > li:eq(0)> ul").append(item2);
      	//	 $("#2 >ul").append(item);
        }
   //   window.onload = inittree();
    })(jQuery)
</script>
<script>
		function abc()
		{
			var item = $('<li id="1">ABC</li>');
        	var item2 = $('<li>XYZ</li>');
		}

</script>



	<script>
    (function ($) {
        function init() {
            $('.easy-tree').EasyTree({
           
                selectable:false
                
            });
            $('.easy-tree li ul > li').hide();
        }
        window.onload = init();
    })(jQuery)
</script>


	
	



</body>


</html>