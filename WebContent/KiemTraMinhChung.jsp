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
	<link rel="stylesheet" href="tree.css">
		<link rel="stylesheet" href="css/easyTree.css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">	
		<script src="src/easyTree.js"></script>
		<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

</head>

<body>



    	 
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">KIỂM TRA MINH CHỨNG</h1>
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
			   				<div class="tree">
							 <ul>
								<li>
					            <span><i class="glyphicon glyphicon-folder-open"></i>    Hoạt động giảng dạy</span> 
						            <ul>
						                <li>
						                	<span><i class= "glyphicon glyphicon-ok" ></i>   100% giảng viên dạy đủ số tiết</span> 
						                    
						                </li>
						               <li>
						                	<span><i class="glyphicon glyphicon-book"></i>   90% giảng viên đạt loại giỏi</span> 
						                    
						                </li>
						            </ul>
						        </li>
						        <li>
						            <span><i class="glyphicon glyphicon-folder-open"></i>    Công tác xã hội</span>
						            <ul>
						                <li>
						                	<span><i class= "glyphicon glyphicon-ok" ></i>   Tổ chức 1 buổi CTXH trong học kỳ</span> 
								        </li>
								        <li>
						                	<span><i class= "glyphicon glyphicon-ok" ></i>   Tổ chức hội thao cấp trường</span> 
								        </li>
								        <li>
						                	<span><i class="glyphicon glyphicon-book"></i>   100% giảng viên tham gia hội thao cấp khoa</span> 
								        </li>
								    </ul>
						        </li>
						        <li>
						            <span><i class="glyphicon glyphicon-folder-open"></i>    Hoạt động tư vấn</span> 
						            <ul>
						                <li>
						                	<span><i class= "glyphicon glyphicon-ok" ></i>   Tư vấn chọn chuyên ngành</span> 
								        </li>
								        <li>
						                	<span><i class="glyphicon glyphicon-book"></i>   Tư vấn hướng nghiệp</span> 
								        </li>
	
								    </ul>
						        </li>
						    </ul>
						</div>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script> 
	
	<script type="text/javascript">
				$(document).ready(function(){
					$(function () {
					    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
	
					    //hide the child li elements
					    $('.tree li ul > li').hide();
					    $('.tree li.parent_li > span').on('click', function (e) {
					        var children = $(this).parent('li.parent_li').find(' > ul > li');
					        if (children.is(":visible")) {
					            children.hide('fast');
					            $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
					        } else {
					            children.show('fast');
					            $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
					        }
					        e.stopPropagation();
					    });
					});
				});
	</script>

</body>

</html>