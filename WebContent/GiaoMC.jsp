<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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

		
		<link rel="stylesheet" href="css/easyTree.css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<link href="assets/js/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="assets/js/jquery.min.js"></script>
	<script src="assets/css/bootstrap.min.js"></script>
		<script src="src/easyTree2.js"></script>


	
</head>

<body>
    
     
              <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">GIAO MINH CHỨNG</h1>
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
			   				<div class="easy-tree">
									<ul>
								
										<jsp:include page="loadmc.do" >
											<jsp:param name="link" value="chinhsua"/>
											</jsp:include>
										
						   			 </ul>
								</div>
					</div>
				</div>
			</div>
				
                    <!--End Advanced Tables -->
                </div>
            </div>
   
            
                    <!--  end  Context Classes  -->
     <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Giao minh chung</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" action="NguoiGiaoMC.jsp" id="myForm">
         <fieldset>
           <div class="form-group">
             <label class="control-label col-md-4" for="namemc">Mục minh chứng: </label>
             <div class="col-md-7">
               <input type="text" class="form-control input-lg" id="namemc" placeholder="Nhập tên mục minh chứng"  readonly="readonly">
             </div>
           </div>
           <div class="form-group">
             <label class="control-label col-md-4" for="nguoinhap">Người được giao: </label>
             <div class="col-md-7"> 
               <input type="text" class="form-control input-lg" id="nguoinhap" placeholder="Nhập họ và tên người được giao" required="required">
             </div>
           </div>
           <button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
           </fieldset>
         </form>
        </div>
        <div class="modal-footer">
          <button id="btnXacnhan" type="button" class="btn btn-success" data-dismiss="modal">Xác nhận</button>
        </div>
      </div>
      
    </div>
  </div>
  
      


    <!-- Core Scripts - Include with every page -->
  
   <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
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
					var retVal = confirm("Lưu thay đổi?");
					if( retVal == true )
		               {
					            	if(!validateText("namemc"))
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
		            	   document.location = 'NguoiGiaoMC.jsp';
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
<script language="javascript">
				
		
				
				function loadtab3() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("page-wrapper").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "KiemTraMinhChung.jsp", true);
					  xhttp.send();
					}
				
		</script>
<script>
    (function ($) {
        function init() {
            $('.easy-tree').EasyTree({
            	selectable: false,
            });
            $('.easy-tree li ul > li').hide();
        }
        
        window.onload = init();
    
    })(jQuery)
</script>


</body>


</html>
