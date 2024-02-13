<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.DB"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Statement st = null;
	String pid = request.getParameter("pid");
	st = DB.control();
	try{
	
	st.executeUpdate("delete from patient where id='"+pid+"'");
	response.sendRedirect("admin.jsp");
	}
	catch(Exception e){
	}
 %>
</body>
</html>