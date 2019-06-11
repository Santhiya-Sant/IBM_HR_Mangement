<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String detail=request.getParameter("detail");
if(detail.equalsIgnoreCase("Get_employee"))
{
	RequestDispatcher rd=request.getRequestDispatcher("getEmp.jsp");
	rd.forward(request,response);
}
else if(detail.equalsIgnoreCase("Insert"))
{
	RequestDispatcher rd=request.getRequestDispatcher("insert.jsp");
	rd.forward(request,response);
}

else if(detail.equalsIgnoreCase("update"))
{
	RequestDispatcher rd=request.getRequestDispatcher("update.jsp");
	rd.forward(request,response);
}

else if(detail.equalsIgnoreCase("delete"))
{
	RequestDispatcher rd=request.getRequestDispatcher("delete.jsp");
	rd.forward(request,response);
}
%>
</body>
</html>