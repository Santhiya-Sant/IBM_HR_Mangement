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
<h1 align="center"><font color="black" size=77px >WELCOME ADMIN</font></h1>
<a href="Insert.jsp"><h4 align="right">BACK</h4></a>
<hr>
<sql:setDataSource
 var="dbconnection"
 driver="oracle.jdbc.OracleDriver"
  url="jdbc:oracle:thin:@localhost:1521:xe" 
 user="hr"
 password="hr"/>
 <%
String id=request.getParameter("eid");
String name=request.getParameter("lname");
String email=request.getParameter("email");
String hdate=request.getParameter("hdate");
String jid=request.getParameter("jid");
%>
<sql:update  dataSource="${dbconnection}" var="s">
INSERT INTO EMPLOYEES(EMPLOYEE_ID,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID)
VALUES ('${param.eid }','${param.lname}','${param.email }','${param.hdate }','${param.jid }')
</sql:update>
<h1 align="center"><font color="GREEN">INSERTED SUCCESSFULLY!!!!!</font></h1>

</body>
</html>