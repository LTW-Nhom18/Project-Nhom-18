<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" scope="request" class="logbean.LoginBean" >
  <jsp:setProperty name="db" property="username" value='<%=request.getParameter("UserName")%>'/>
  <jsp:setProperty name="db" property="password" value='<%=request.getParameter("Password")%>'/>
 </jsp:useBean>
<jsp:forward page="login.do">
  <jsp:param name="UserName" value="<%=db.getUsername()%>" />
  <jsp:param name="Password" value="<%=db.getPassword()%>" />
</jsp:forward> 
</body>
</html>