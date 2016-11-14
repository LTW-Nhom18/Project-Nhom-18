<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <% String c= request.getParameter("path");%>
    <% String root= request.getParameter("root");%>
	<c:set var="a" value="<%=c %>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${param.loai == 'Image'}">
<image src="<%=request.getContextPath() %>/${a}" />
</c:when>
<c:when test="${param.loai == 'Video'}">
<video id = "example_video_1" class ="video-js vjs-default-skin" controls preload="none" width="640" height="264" poster="video-js.zencoder.com/oceans-clip.png"; data-setup="{}" src="<%=request.getContextPath() %>/${a}" type='video/mp4'>   </video> 
</c:when>
<c:otherwise>
	
	 <%    
           
           //code for browser to download file
					  String filename = request.getParameter("path");
        		  	filename= filename.substring(10);
        		  	System.out.print("abc"+filename);
					  String filepath = root+"\\minhchung\\";   
						System.out.print("path "+filepath+filename);
					  response.setContentType("APPLICATION/OCTET-STREAM");   
					  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
					  
					  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
					            
					  int i;   
					  while ((i=fileInputStream.read()) != -1) {  
					    out.write(i);   
					  }   
					  fileInputStream.close();   
				%>   
</c:otherwise>
 </c:choose>
</body>
</html>