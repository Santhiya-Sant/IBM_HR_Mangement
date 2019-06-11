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
 <br>
    <div class="container-fluid">
        <div class="panel panel-success">
            <div class="panel-heading" align="center">

                <h4><b><font color="black" style="font-family: fantasy; font-size: 77px;">Update Page</font> </b></h4>
            </div>
            <div class="panel-body"align="center">
                  
                <div class="container " style="margin-top: 5%; margin-bottom: 10%;">
    
                    <div class="panel panel-success" style="max-width: 35%;" align="left">
                        
                        <div class="panel-heading form-group">
                            <b><font color="white">
                                Login Form</font> </b>

                        </div>
                    
                        <div class="panel-body" >
                        	<h4 class="card-title"> <center>UPDATE DETAILS</center></h4>

                        <form action="updateS.jsp" method="post" >
                            <div class="form-group">
                                <label for="exampleInputEmail1">EMPLOYEE_ID</label> <input
                                    type="text" class="form-control" name="id" id="txtUserName"
                                    placeholder="Enter ID" required="required">

                                                   
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">ENTER ITEM TO EDIT</label> <input
                                    type="text" class="form-control" name="edit" id="txtPass"
                                    placeholder="Enter Item" required="required">
                                    
                                      <div class="form-group">
                                <label for="exampleInputEmail1">ENTER VALUE</label> <input
                                    type="text" class="form-control" name="val" id="txtUserName"
                                    placeholder="Enter Value" required="required">
                                    
                                    
                            </div>
                            <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-large btn btn-primary btn-lg btn-block" ><b>Update</b></button>
                            <div class="mt-4 text-center">

								</div>
                                                   
                        </form>

                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
    </div>
  
</body>
</html>