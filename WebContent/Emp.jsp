<%@page import="java.io.PrintWriter"%>
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


	<hr size="10" color="green">
<h1 align="center"><font color="black" size=77px >EMPLOYEE ZONE</font></h1>


 
  <% 
  HttpSession ses=request.getSession();
  if(ses.getAttribute("username")==null)
  {
  	response.sendRedirect("Index.jsp");
  }
 
     
       Class.forName("oracle.jdbc.OracleDriver");
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String password="hr";
		Connection conn=DriverManager.getConnection(url,user,password);
		Statement st=conn.createStatement();
		String s=request.getParameter("txtUserName");
	
		
		int empId;
		String firstName;
		String lastName;
	    String email;
	    String pnumber;
	    String sal;
	    String com;
	    double mid;
	    double did;
	    String add;
		ResultSet rs=st.executeQuery("SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID="+s+"");
		while(rs.next())
		{
			empId=rs.getInt("EMPLOYEE_ID");
			firstName=rs.getString("FIRST_NAME");
			lastName=rs.getString("LAST_NAME");
			email=rs.getString("EMAIL");
			pnumber=rs.getString("PHONE_NUMBER");
			sal=rs.getString("SALARY");
			com=rs.getString("COMMISSION_PCT");
			mid=rs.getDouble("MANAGER_ID");
			did=rs.getDouble("DEPARTMENT_ID");
			add=rs.getString("ADDRESS");

			%>
			<a href="Logout.jsp"><h3 align="right">LOGOUT </a>
			 WELCOME !! <%=lastName %> </h3>
			<hr size="10" color="green">
			<% out.println("<htmk><table align=center><tr><th align=left>EMP ID </th><td> <h4>"+": "+empId+"</h4></td></tr>");
			out.println();
			out.println("<tr><th align=left>EMP FIRSTNAME </th><td> <h4>" +": "+ firstName+"</h4></td></tr>");
			out.println();
            out.println( "<tr><th align=left>EMP LAST NAME </th><td> <h4> "+": "+lastName+"</h4></td></tr>") ;
			out.println();
            out.println("<tr><th align=left>EMAIL  </th><td><h4>"+": "+email+"</h4></td></tr>"); 
			out.println();
            out.println("<tr><th align=left>PHONE_NUMBER  </th><td><h4>"+": "+pnumber+"</h4></td></tr>");
			out.println();
			out.println("<tr><th align=left>SALARY  </th><td><h4>"+ ": "+sal+"</h4></td></tr>");
			out.println();
            out.println( "<tr><th align=left>COMMISSION_PCT </th><td> <h4> "+": "+com+"</h4></td></tr>") ;
			out.println();
            out.println("<tr><th align=left>MANAGER_ID  </th><td><h4>"+": "+mid+"</h4></td></tr>"); 
			out.println();
            out.println("<tr><th align=left>DEPARTMENT_ID  </th><td><h4>"+": "+did+"</h4></td></tr>");
            out.println();
            out.println("<tr><th align=left>ADDRESS  </th><td><h4>"+": "+add+"</h4></td></tr></table></html>");
			 
            
            %>
			
		<% }
		%>
		
                  <div class="container">
                  <form action="update.jsp">
            <table align="center" ><tr>
                       
         <tr>   <td>  <input type="submit" checked="checked" dir="ltr"  ismap="ismap" readonly="readonly"   class="btn btn-info btn-block btn-lg" name="detail"  value="Update"></td></tr>
         </table>
         </form>
         </div> 

</body>
</html>