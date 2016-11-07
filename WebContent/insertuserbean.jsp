<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
String user,pass,role,name,gt,dt,phong,chucvu;
	String nsinh;
<jsp:useBean id="db" scope="request" class="insertbean.insertuserbean" >
  <jsp:setProperty name="db" property="user" value='<%=request.getParameter("user")%>'/>
  <jsp:setProperty name="db" property="pass" value='<%=request.getParameter("pdw")%>'/>
  <jsp:setProperty name="db" property="role" value='<%=request.getParameter("role")%>'/>
  <jsp:setProperty name="db" property="name" value='<%=request.getParameter("Name")%>'/>
  <jsp:setProperty name="db" property="gt" value='<%=request.getParameter("gt")%>'/>
  <jsp:setProperty name="db" property="dt" value='<%=request.getParameter("Tel")%>'/>
  <jsp:setProperty name="db" property="phong" value='<%=request.getParameter("khoa")%>'/>
  <jsp:setProperty name="db" property="chucvu" value='<%=request.getParameter("chucvu")%>'/>
  <jsp:setProperty name="db" property="nsinh" value='<%=request.getParameter("Date")%>'/>

 </jsp:useBean>
<jsp:forward page="adduser.do">
  <jsp:param name="user" value="<%=db.getUser()%>" />
  <jsp:param name="pdw" value="<%=db.getPass()%>" />
  <jsp:param name="role" value="<%=db.getRole()%>" />
  <jsp:param name="Name" value="<%=db.getName()%>" />
  <jsp:param name="gt" value="<%=db.getGt()%>" />
  <jsp:param name="Tel" value="<%=db.getDt()%>" />
  <jsp:param name="khoa" value="<%=db.getPhong()%>" />
  <jsp:param name="chucvu" value="<%=db.getChucvu()%>" />
  <jsp:param name="Date" value="<%=db.getNsinh()%>" />
 
</jsp:forward>
</body>
</html>