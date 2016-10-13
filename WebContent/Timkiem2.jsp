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

</head>

<body>
    
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">TÌM KIẾM MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class="col-md-3">
							<div class="panel panel-primary"> 
								<div class="panel-heading"> 
									<p><span class="glyphicon glyphicon-search" ></span>       TÌM KIẾM THEO:
									</p>
								</div>
								<div class="panel-body"> 
									<div class="checkbox">
									  <label><input type="checkbox" value="">Tên mục minh chứng</label>
									</div>
									<div class="checkbox">
									  <label><input type="checkbox" value="">Mô tả</label>
									</div>
									<div class="checkbox ">
									  <label><input type="checkbox" value="">File minh chứng</label>
									</div>
									<div class="checkbox">
									  <label><input type="checkbox" value="">Người nhập</label>
									</div>
									<div class="checkbox">
									  <label><input type="checkbox" value="">Người tạo</label>
									</div>	
								</div>
								<div class="panel-footer"> 
								<form class="form-inline col-md-offset-3 "  >
										<button type="button" class="btn btn-info" style="margin-left:20px;" >
         							 		<span class="glyphicon glyphicon-search" ></span> Tìm kiếm
         							 </button>
									
								</form>
								</div>		
						</div>
						</div>
						<div class="col-md-9" >
							<div class="panel panel-primary">
							  <div class="panel-heading">Danh sách minh chứng</div>
							   <span class="MyNewClass">
							      <table class="table table-bordered table-hover specialCollapse" >
							    		<thead>
									      <tr>
									        <th>STT</th>
									        <th>Tên mục minh chứng</th>
									        <th>Chi tiết</th>
									        <th>Tình trạng</th>
									      </tr>
									    </thead>
									    <tbody>
									      <tr>
									        <td>1</td>
									        <td>Tham gia hội thao</td>
									        <td><a href="XemChiTietMC2.jsp" >Chi tiết</a></td>
									        <td>Đã hoàn thành</td>
									      </tr>
			
									    </tbody>
							    
							      </table>
							   </span>
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
	
	
	



</body>

</html>