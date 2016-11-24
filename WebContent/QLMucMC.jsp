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
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

    <!-- Page-Level CSS -->
    <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/easyTree.css">
    	<script src="src/easyTree2.js"></script>

</head>

<body>
    
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                	<br>
                    <h1 class="page-header">QUẢN LÝ MỤC MINH CHỨNG</h1>
                </div>
                 <!-- end  page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Advanced Tables -->
                    <div class ="panel panel-primary" >
                  	  <div class="panel-heading">Cây minh chứng</div>
                  	  <div class="panel-body">
						<form class="form-inline  "  >
									<input class="btn btn-success" type="button" onclick="expand();" value="Expand All">
									<input class="btn btn-danger" type="button" onclick="collapse();" value="Collapse All">
									
								</form>
								<br>
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
					</div>
					</div>
				<!-- tab content -->
				
                    <!--End Advanced Tables -->
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
	
	<script language="javascript">
				function update()
				{
					$('#page-wrapper').load('SuaMucMC.jsp');
				
				}
				function expand() {
					 $('.easy-tree li ul > li').show();
					}
				function collapse()
				{
					$('.easy-tree li ul > li').hide();
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
