<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
			<form action="val" method="post">
				<div class="form-group row">
				 	<label>Name:</label>
					<input type="text" name="name" id="name" class="form-control"> 
				</div>
				
				<div class="form-group row">
				 	<label>Dob:</label>
					<input type="text" name="dob" id="dob" class="form-control"> 
				</div>
				
				<div class="form-group row">
				 	<label>Gender:</label>
					<input type="radio" name="gender" value="Male">Male
					<input type="radio" name="gender" value="Female">Female  
			    </div>
			    
			    <div class="form-group row">
				 	<label>Address:</label>
					<input type="text" name="address" id="address" class="form-control"> 
				</div>
				
				<div class="form-group row">
				 	<label>City:</label>
					<select name="city" id="city">
					<option value="Nagpur">Nagpur</option>
					<option value="Amravati">Amravati</option>
					<option value="Bhopal">Bhopal</option>
					<option value="Indor">Indor</option>
					</select>
				</div>
				
				<div class="form-group row">
				 	<label>State:</label>
					<select name="state" id="state">
					<option value="MH">MH</option>
					<option value="MP">MP</option>
					</select>
				</div>
				
				<div class="form-group row">
				 	<label>Email:</label>
					<input type="text" name="email" id="email" class="form-control"> 
				</div>
				
				<div class="form-group row">
				 	<label>Password:</label>
					<input type="password" name="password" id="password" class="form-control"> 
				</div>
				
				<button type="submit" class="btn btn-success">Register</button>
				
			</form>
		</div>

</body>
</html>