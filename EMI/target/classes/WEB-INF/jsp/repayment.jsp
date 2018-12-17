<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html>
<head><title>About</title>


</head>
<body>
		
		
<h1>Particular Installenment</h1>
<form:form modelAttribute="repayment" action="shedule" method="POST">
		Enter the number of Installenment:<br><br>
		 <form:input path="repayment"/><br><br>
		
		<input type="submit" class="btn btn-success" value="Submit">
		
		</form:form>



 </body>
</html>