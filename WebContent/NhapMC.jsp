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
					    <form class="form-horizontal" action="NguoiNhapMC.jsp">
					    <fieldset>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="ten" >Tên mục minh chứng:</label>
							    <div class="col-sm-7">
							      <input type="text" class="form-control" id="ten" placeholder="Nhập tên mục minh chứng" required="required">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="mota" style="margin-left:0;">Mô tả:</label>
							    <div class="col-sm-7"> 
							      <input type="text" class="form-control" id="mota" placeholder="Nhập mô tả minh chứng" required="required">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="tao">Người tạo:</label>
							    <div class="col-sm-7"> 
							      <input type="text" class="form-control" id="tao" placeholder="Nhập họ và tên người tạo" required="required">
							    </div>
							  </div>
							  <div class="form-group">
							    <label class="control-label col-sm-4" for="giao">Người giao:</label>
							    <div class="col-sm-7"> 
							      <input type="text" class="form-control" id="giao" placeholder="Nhập họ và tên người giao" required="required">
							    </div>
							  </div>
							 <div class="form-group">
							   <label class="control-label col-sm-4" for="file">Up file minh chứng:</label>
										<div class="col-sm-7">
										     <input type="file" class="form-control" id="file" required="required">
										</div>
							  </div>
							   <button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
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
			$(document).ready(function(){
			
				$('#btnXacnhan').on('click',function(){
					var retVal = confirm("Lưu thay đổi?");
		               if( retVal == true ){
		            	   submit();
		                  return true;
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
