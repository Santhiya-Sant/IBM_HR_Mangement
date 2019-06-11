<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% HttpSession sess=request.getSession();
if(sess.getAttribute("username")==null)
{
	response.sendRedirect("Index.jsp");
}
%>
<h1 align="center"><font color="black" size=77px >WELCOME ADMIN</font></h1>
<a href="Admin.jsp"><h4 align="right">BACK</h4></a>
<hr>
<sql:setDataSource
 var="dbconnection"
 driver="oracle.jdbc.OracleDriver"
  url="jdbc:oracle:thin:@localhost:1521:xe" 
 user="hr"
 password="hr"/>
<%
String name=request.getParameter("name");
String id=request.getParameter("id");
%>
<sql:update dataSource="${dbconnection}" var="s">
 DELETE FROM EMPLOYEES WHERE employee_id='${param.id}'
 </sql:update> 
<h1 align="center"><font color="GREEN">DELETED SUCCESSFULLY!!!!!</font></h1>
</body>
</html>