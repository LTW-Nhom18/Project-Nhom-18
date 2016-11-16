<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/qlmc" 
		user="root" 
		password=""/>
	<%@ page session="true" %>
	<% String c=(String)session.getAttribute("ten");%>
	<c:set var="a" value="<%=c %>" />
	<%@ page import="java.util.*" %>
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

		<script src="assets/css/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/easyTree.css">
		<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<link href="assets/js/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script src="assets/js/jquery.min.js"></script>
  <link href="table.css" rel="stylesheet" />
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
									<form id="myForm" class="form-horizontal" action="search2">
									 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          Tên mục minh chứng
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">	 
           <label>
             <input type="text" name="tenmc" placeholder="Nhập từ khóa cần tìm" class="form-control"> 
           </label>

          <br>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Mô tả minh chứng
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
            <label>
          <input type="text" name="mota" placeholder="Nhập từ khóa cần tìm" class="form-control"> 
           </label>
          <br>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="headingTwo1">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo1">
          Người tạo minh chứng
        </a>
      </h4>
    </div>
    <div id="collapseTwo1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo1">
      <div class="panel-body">
      	<label>
             <input type="text" name="nguoitao" placeholder="Nhập từ khóa cần tìm" class="form-control"> 
           </label>          
          <br>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Người nhập minh chứng
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <label>
             <input type="text" name="nguoinhap" placeholder="Nhập từ khóa cần tìm" class="form-control"> 
           </label>
          
          <br>
         
      </div>
    </div>
  </div>
</div>
 <button type="submit" hidden="true" name="btnsubmit" id="btnsubmit"></button>
	</form>
									
								</div>
								<div class="panel-footer"> 
								<div class="col-md-offset-3 "  >
										<button type="button" class="btn btn-info" style="margin-left:20px;" onclick="search();" >
         							 		<span class="glyphicon glyphicon-search" ></span> Tìm kiếm
         							 </button>
									
								</div>
								</div>		
						</div>
						</div>
						<div class="col-md-9" >
							<div class="panel panel-primary" id="ketqua">
				  <div class="panel-heading">Danh sách minh chứng</div>
				   <span class="MyNewClass">
				     <table class="table table-striped table-bordered " id="myTable">
				    		<thead>
						      <tr>
						        <th style="width: 10%">STT</th>
						        <th hidden="true">Mã minh chứng</th>
						        <th style="width: 40%">Tên mục minh chứng</th>
						        <th style="width: 20%">Chi tiết</th>
						       <th style="width: 30%">Tình trạng</th>
						      </tr>
						    </thead>
						    <tbody>
						    <%
						    int count = 0;
                if (request.getAttribute("list") != null) {
                	ArrayList al = (ArrayList) request.getAttribute("list");
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
                    	count++;
                    	ArrayList pList = (ArrayList) itr.next();
         					   %>
						      <tr>
						        <td></td>
						        <td hidden="true"><%=pList.get(0)%></td>
						        <td><%=pList.get(1)%></td>
						        <td><a href="#"  onclick="loadchitiet(this);">Chi tiết</a></td>
						        <td><%=pList.get(2)%></td>
						      </tr>
					<%
			                    }
			                }
			                if (count == 0) {
			            %>
			            <tr>
			                <td colspan=4 align="center"
			                    style="background-color:#eeffee"><b>No Record Found..</b></td>
			            </tr>
			            <%            }
			            %>
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


	<script type="text/javascript">
					 function submit()
					 {
					    $("#btnsubmit").click();
					    
					 }
					 function search() {
							//	document.getElementById("myTable").setAttribute("aria-hidden", "true");
								$(myTable).attr('aria-hidden', 'false').show();
								$("form#myForm").submit();
							}
						function loadchitiet(r) 
						{
							var i = r.parentNode.parentNode.rowIndex;
							 var a =document.getElementById("myTable").rows[i].cells[1].innerHTML;
						var k ="XemChiTietMC2.jsp?abc="+a;
						window.location.href =(k);
			 
						}
		</script>
	



</body>

</html>
