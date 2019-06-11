<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>


<% HttpSession sess=request.getSession();
if(sess.getAttribute("username")==null)
{
	response.sendRedirect("Index.jsp");
}
%>
<body>
			<a href="Logout.jsp"><h3 align="right">LOGOUT </a>


  <br>
    <div class="container-fluid">
        <div class="panel panel-success">
            <div class="panel-heading" align="center">

                <h4><b><font color="black" style="font-family: fantasy; font-size: 77px;">Insert Page</font> </b></h4>
            </div>
            <div class="panel-body"align="center">
                  
                <div class="container " style="margin-top: 5%; margin-bottom: 10%;">
    
                    <div class="panel panel-success" style="max-width: 35%;" align="left">
                        
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                Login Form</font> </b>

                        </div>
                    
                        <div class="panel-body" >
                        	<h4 class="card-title"> <center>Details</center></h4>

                        <form action="insertS.jsp" method="post" >
                            <div class="form-group">
                                <label for="exampleInputEmail1">EMPLOYEE_ID</label> <input
                                    type="text" class="form-control" name="eid" id="txtUserName"
                                    placeholder="Enter Employee Id" required="required">

                                    
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">LAST_NAME</label> <input
                                    type="text" class="form-control" name="lname" id="txtUserName"
                                    placeholder="Enter  Name" required="required">

                                    
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">EMAIL</label> <input
                                    type="text" class="form-control" name="email" id="txtUserName"
                                    placeholder="Enter email" required="required">

                                    
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">HIRE_DATE</label> <input
                                    type="text" class="form-control" name="hdate" id="txtUserName"
                                    placeholder="Enter Hire Date" required="required">

                                    
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputPassword1">JOB_ID</label> <input
                                    type="text" class="form-control" name="jid" id="txtPass"
                                    placeholder="Enter Job Id" required="required">
                            </div>
                            <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-large btn btn-primary btn-lg btn-block" ><b>Insert</b></button>
                           
                                                   
                        </form>

                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
    </div>
  

</body>
</html>