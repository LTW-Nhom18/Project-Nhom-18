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
								
											<li>Hoạt động giảng dạy
												<ul>
													<li>Mục minh chứng 1</li>
													<li>Mục minh chứng 2
														<ul>
															<li><span><i class="glyphicon glyphicon-file"></i>   File minh chứng: File văn bản</span> <a href="minhchung/mc1.txt">  Download</a></li>
															<li>Mục minh chứng 2.2</li>
														</ul>
													</li>
													<li>Mục minh chứng 3</li>
												</ul>
											</li>
											<li>Công tác xã hội
												<ul>
													<li>Mục minh chứng 1</li>
													<li>Mục minh chứng 2</li>
												</ul>
											</li>
											<li>Hoạt động tư vấn
												<ul>
													<li>Mục minh chứng 1</li>
													<li>Mục minh chứng 2</li>
												</ul>
											</li>
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
        function init() {
            $('.easy-tree').EasyTree({
                addable: true,
                editable: true,
                deletable: true
            });
            $('.easy-tree li ul > li').hide();
        }
        window.onload = init();
    })(jQuery)
</script>


	<script>
    (function ($) {
        function inittree() {
        	$(easyTree).find('.easy-tree-toolbar .create > button').click();
        }
        window.onload = inittree();
    })(jQuery)
</script>




</body>


</html>