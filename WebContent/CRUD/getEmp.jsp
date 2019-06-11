<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<% HttpSession sess=request.getSession();
if(sess.getAttribute("username")==null)
{
	response.sendRedirect("Index.jsp");
}
%>
               <hr size="100" color="green">           

<h1 align="center"><font color="black" size=77px >WELCOME</font></h1>
<a href="Admin.jsp"><h3 align="right">BACK</h3></a>
			<a href="Logout.jsp"><h3 align="right">LOGOUT </a>

               <hr size="100" color="green" width=100%>         

<br>
<sql:setDataSource 
var="dbconnection"
driver="oracle.jdbc.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:xe"
user="hr"
password="hr"/>
<sql:query dataSource="${dbconnection}" var="rs">
SELECT * FROM EMPLOYEES
</sql:query>
<table border="1" class="table table-striped table-hover">
<thead>
<tr>
<th>EMPLOYEE_ID</th>
<th>FIRST_NAME</th>
<th>LAST_NAME</th>
<th>EMAIL</th>
<th>PHONE_NUMBER</th>
<th>HIRE_DAT3</th>
<th>JOB_ID</th>
<th>SALARY</th>
<th>COMMISSION_PCT</th>
<th>MANAGER_ID</th>
<th>DEPARTMENT_ID</th>
<th>ADDRESS</th>
</tr>
</thead>

<c:forEach  var="row" items="${rs.rows }">

<tr>
<td><c:out value="${row.employee_id }"/></td>
<td><c:out value="${row.first_name }"/></td>
<td><c:out value="${row.last_name }"/></td>
<td><c:out value="${row.email }"/></td>
<td><c:out value="${row.phone_number }"/></td>
<td><c:out value="${row.hire_date }"/></td>
<td><c:out value="${row.job_id}"/></td>
<td><c:out value="${row.salary }"/></td>
<td><c:out value="${row.commiSsion_pct }"/></td>
<td><c:out value="${row.manager_id }"/></td>
<td><c:out value="${row.department_id }"/></td>
<td><c:out value="${row.address }"/></td>


</tr>
</c:forEach>
</table>
</body>
</html>