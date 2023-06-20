     
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.LoginModel"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="java.util.List" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <%
         
//       	 String email=(String)session.getAttribute("getEmail");
//       	 String pass=(String)session.getAttribute("getPassword");
//       	 List<String> fri=(List<String>)session.getAttribute("f");
		String email="";
		String pass="";

      	 email=request.getParameter("email");
      	 pass =request.getParameter("password");
      	 System.out.println("email "+email);
      	System.out.println("pass "+pass);
      	 
      	 
      	
      	if(email != null && pass != null){
      	 if(email == pass)
      	 {
      		//session.setAttribute( "email",null);
      		 %>
		 		<script type="text/javascript">
		 				alert("Right credintial");
		 				
		 		</script>
		 		
		 	
		 		
		 <% 
      	 }
      	 else
      	 {
      		 %>
		 		<script type="text/javascript">
		 				alert("wrong credintial");
		 		</script>
		 <% 
      		
      	 }
      	}
      	 
       
      
      %>
        <main class="my-form">
		<div class="container">
			<form action="dologin" method="post">
				<div class="form-group row">
				 	<label>Email:</label>
					<input type="text" name="email" id="email" class="form-control"> 
				</div>
				
				<div class="form-group row">
				 	<label>Password:</label>
					<input type="password" name="password" id="password" class="form-control"> 
				</div>
				
				<button type="submit" class="btn btn-success">Login</button>
				<div class="form-group row">
				<a href="signup">Sign Up</a>
				</div>
			</form>
		</div>
		</main>
</body>
</html>