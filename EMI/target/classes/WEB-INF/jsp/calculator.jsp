<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<html>
<head><title>About</title>	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
body{
margin:0;
}
header 
{
    background-color: #666;
    padding: 3px;
    text-align: center;
    font-size: 35px;
    color: white;
	
}	
.txtemaild
	{
    border-radius: 5px;
    padding: 5px;
    border: 1px solid grey;
	}
ul
		{
		display:block;
		list-style-type: none;
	    margin: 0;
		padding: 0;
		width: 25%;
		background-color: #f1f1f1;
		position: fixed;
		height: 100%;
		}
		
		
			.home
			{
			font-size: larger;
			padding: 8px 16px;
			font-style: italic;
			display: block;
			color: #000;
			}
			
			.active
			{
			color: #000;
		    padding: 8px 16px;
		    text-decoration: none;
			font-size: larger;
			font-style: italic;
			background-color: #4CAF50;
			color: white;
			display:block;
			}
			.Admclg
			{
			display: block;
			color: #000;
			padding: 8px 16px;
			text-decoration: none;
			font-size: larger;
			font-style: italic;
			}
			.feestu
			{
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
	
<form:form modelAttribute="userValues" action="save" method="POST">		
  <ul>

<li><a class="active" href="calculator.jsp"> EMI Calculator </a></li>
<li><a class="feestu" href="http://localhost:8082/repayment.jsp"> Repayment shedule </a></li>
</ul>
<div style="margin-left:25%;padding:1px 16px;height:1000px;">
<header>
		<!-- <body background="blue.png"> -->
		<img src= "EMI-calculator1.png" width="100%">
		<!-- <h1>EMI Calculator</h1> -->
</header>
		

	<div border:1px solid grey; style="margin-left: 25%; margin-top: 9%;">
	

		Principle Amount<br><br>
			<form:input path="principle"/><br><br>
		

		
		Rate Of Interest: <br><br>
		<form:input  path="rateofinterest"/><br><br>
		
		
		Tenure: <br><br>
		<form:input   path="tenure"/><br><br>
		
    

    
		Number Of installenments:<br><br>
		 <form:input path="noOfInstallenment"/><br><br>
		<div>
	
			<input type="submit" class="btn btn-success" value="Submit"/>
		</div>
	</form:form>		
	</div>
</div>

 </body>
</html>