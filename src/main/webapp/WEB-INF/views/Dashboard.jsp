
    <%@page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<label>Hello :${getEmail}</label>
<c:set var="Emails" scope="session" value="${getEmail}"/>  
<table border="1">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Dob</th>
		<th>Gender</th>
		<th>Address</th>
		<th>City</th>
		<th>State</th>
		<th>Email</th>
		
		
  
	</tr>
		<c:forEach var="em" items="${list}">
		<c:set var="listemails" scope="session" value="${em.email}"/>  

			<c:if test = "${Emails != listemails}">
					<tr>
						<td>${em.id }</td>
						<td>${em.name }</td>
						<td>${em.dob }</td>
						<td>${em.gender }</td>
						<td>${em.address }</td>
						<td>${em.city }</td>
						<td>${em.state }</td>
						<td>${em.email }</td>
					</tr>
				
			</c:if>

		</c:forEach>
	</table>

</body>
</html>