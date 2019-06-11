<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
</head>
<body>

<% 

String id=request.getParameter("txtUserName");
String password=request.getParameter("txtPass");
ServletContext con=request.getServletContext();
con.setAttribute("usernames",id);
String opt=request.getParameter("det");


if(opt.equalsIgnoreCase("admin") )
	{
	if(id.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin") )

    {
		HttpSession sess=request.getSession();
		sess.setAttribute("username", id);
		out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");		
		out.println("<script>");
		out.println("$(document).ready(function(){");
		out.println("swal('WELCOME','SUCESSFULL !!'','success');");
		out.println("});");
		out.println("</script");
		
		
	RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
	rd.forward(request,response);
}
	
else
{
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal('INCORRECT DETAILS',' '','error');");
	out.println("});");
	out.println("</script");
	
	RequestDispatcher rd=request.getRequestDispatcher("err.jsp");
	rd.forward(request,response);
}
	}
else if(opt.equalsIgnoreCase("employee"))
{

	
	if(password.equals("1234"))
	{

		HttpSession sess=request.getSession();
		sess.setAttribute("username", id);
		
		for(int i=100;i<=250;i++)
		{
		String s=null;
		s=Integer.toString(i);
		
		if(id.equals(s))
		{
			RequestDispatcher rd=request.getRequestDispatcher("Emp.jsp");
			rd.forward(request,response);
		}
		}
	}
	
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("err.jsp");
		rd.forward(request,response);
	}
	}


%>

</body>
</html>