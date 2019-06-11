<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<%
HttpSession sess=request.getSession();
if(sess.getAttribute("username")==null)
{
	response.sendRedirect("Index.jsp");
}
%>
 <hr size="10" color="green">
    <div class="panel-heading" align="center">
                 
                <h4><b><font color="black" style="font-family: fantasy; font-size: 50px">Admin Page</font> </b></h4>
            </div>
            
     <div class="panel-heading" align="right">

                <h4><b><a href="Logout.jsp "><font color="blue" style="font-family:monospace; font-size: 20px">Logout </font> </a></b>
           
            <b><font color="black" style="font-family:monospace ; font-size: 20px">Welcome!! Admin</font> </b></h4>
             </div>
                          <hr size="10" color="green">           
           
                <br>
               <br>
                  <br>
                  <div class="container">
                  <form action="AdminS.jsp">
            <table align="center" ><tr>
            <td> <input type="submit"  class="btn btn-info btn-block btn-lg" name="detail"  value="Get_Employee"></td></tr>
        
         <tr> <td>  <input type="submit"  class="btn btn-info btn-block btn-lg" name="detail" value="Insert"></td></tr>
           
         <tr>   <td>  <input type="submit"  class="btn btn-info btn-block btn-lg" name="detail"  value="Update"></td></tr>
          
         <tr>  <td>  <input type="submit"   class="btn btn-info btn-block btn-lg" name="detail" value="Delete">
         </td>
         </tr> 
         </table>
         </form>
         </div>
</body>
</html>