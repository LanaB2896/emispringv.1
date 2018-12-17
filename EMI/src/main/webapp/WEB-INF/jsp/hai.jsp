<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%> --%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>
<title>About</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
body {
	margin: 0;
}

header {
	background-color: #e4e4e5;;
	padding: 0px;
	text-align: center;
	font-size: 35px;
	color: white;
}

ul {
	display: block;
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 25%;
	background-color: #f1f1f1;
	position: fixed;
	height: 100%;
}

.home {
	font-size: larger;
	padding: 8px 16px;
	font-style: italic;
	display: block;
	color: #000;
}

.active {
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
	font-size: larger;
	font-style: italic;
	background-color: #4CAF50;
	color: white;
	display: block;
}

.Admclg {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
	font-size: larger;
	font-style: italic;
}

.feestu {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
	font-size: larger;
	font-style: italic;
}
</style>
</head>
<body>

	<ul>
		<li><a class="Admclg" href="http://localhost:8082/show"> EMI
				Calculator </a></li>
		<li><a class="active" href="http://localhost:8082/repayment.jsp">
				Repayment shedule </a></li>
	</ul>
	<div style="margin-left: 25%; padding: 1px 16px; height: 1000px;">
		<header>

			<img src="repaynew.png">
		</header>


			<div class="container">
		<h2>Repayment Details</h2>

		 <table class="table table-bordered">
			<tr>
				<th>ID</th>
				<th>Outstanding Principle</th>
				<th>interest</th>
				<th>loanAmount</th>
				<th>EMI</th>
			</tr>
<!-- 		</table> -->
		

		
<!-- 		 <table class="table table-bordered"> -->
	
		
			<c:forEach items="${print}" var="element">
				<tr>
					<th>${element.id}</th>
					<th>${element.outstandingPrinciple}</th>
					<th>${element.interest}</th>
					<th>${element.loanAmount}</th>
					<th>${element.EMI}</th>
				</tr>
			</c:forEach>
		</table>
</div>


	</div>
</body>
</html>