<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="loadfile.jsp?loai=Hình ảnh">Click me!</a>
	 <%    
           
           //code for browser to download file
					  String filename = "Source.rar";
      
					  String filepath = "E:/";   
						System.out.print("path "+filepath);
					  response.setContentType("APPLICATION/OCTET-STREAM");   
					  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
					  
					  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
					            
					  int i;   
					  while ((i=fileInputStream.read()) != -1) {  
					    out.write(i);   
					  }   
					  fileInputStream.close();   
				%>  
</body>
</html>