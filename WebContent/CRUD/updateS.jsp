<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center"><font color="black" size=77px >WELCOME ADMIN</font></h1>
<a href="getEmp.jsp"> <h4 align="right">VIEW </a>
<%

ServletContext con=request.getServletContext();
String s=(String)con.getAttribute("usernames");
if(s.equalsIgnoreCase("admin"))

{
	HttpSession sess=request.getSession();
	sess.getAttribute("username");
	

%>
<a href="Admin.jsp"> BACK </h4> </a>
<%
}
else
{

	HttpSession sess=request.getSession();
	sess.getAttribute("username");
%>
<a href="Index.jsp"> <h4 align="right">BACK</h4> </a>

<%} %>
<hr>
<% 
Class.forName("oracle.jdbc.OracleDriver");

		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String password="hr";
		Connection conn=DriverManager.getConnection(url,user,password);
		Statement st=conn.createStatement();
		



String id=request.getParameter("id");
String val=request.getParameter("val");
String edit=request.getParameter("edit");

 if(edit.equalsIgnoreCase("salary"))
{

		st.executeUpdate("UPDATE EMPLOYEES SET SALARY="+val+"WHERE EMPLOYEE_ID="+id);
} 
 else if(edit.equalsIgnoreCase("phonenumber"))
{
		st.executeUpdate("UPDATE EMPLOYEES SET PHONE_NUMBER="+val+"WHERE EMPLOYEE_ID="+id);

 }
 else if(edit.equalsIgnoreCase("address"))
{
		st.executeUpdate("UPDATE EMPLOYEES SET ADDRESS="+"'"+val+"'"+"WHERE EMPLOYEE_ID="+id);

 }
 %>

<h1 align="center"><font color="green"> UPDATED SUCCESSFULLY!!!!!..............</font></h1>

</body>
</html>