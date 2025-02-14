<%@page import="com.jspiders.springmvc.dto.ContactDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* Style for the entire page */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f7f7f7;
	margin: 0;
	padding: 0;
}

/* Style for the "HOME" button */
a {
	text-decoration: none;
	color: #4CAF50;
	padding: 10px 20px;
	margin-top: 0px;
	margin-right: 0px;
	border: 2px solid #4CAF50;
	border-radius: 5px;
	transition: background-color 0.3s, color 0.3s, border-color 0.3s;
	background-color: #4CAF50;
	color: white;
}

#home {
	margin-right: -275px;
	margin-top: 30px;
}

/* Style for the form container */
div {
	text-align: center;
	margin: 20px auto; /* Center the div */
	width: 50%;
}

/* Style for the form title */
h2 {
	color: #333;
	margin-bottom: 20px;
}

/* Style for the form elements */
table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 10px; /* Spacing between table rows */
}

table td {
	padding: 10px;
	border: none;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	transition: border-color 0.3s ease;
}

input[type="text"]:focus {
	border-color: #4CAF50;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 5px;
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
<%
	ContactDTO contact = (ContactDTO) request.getAttribute("contact");
	%>
	<div id="home">
		<a href="home_page">HOME</a>
	</div>
	<div align="center">
		<h2>UPDATE CONTACT</h2>
		<form action="update_contact" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" readonly="readonly"
						value="<%=contact.getId()%>"></td>
				</tr>
				<tr>
					<td>FIRST NAME</td>
					<td><input type="text" name="firstName" required="required"
						value="<%=contact.getFirstName()%>"></td>
				</tr>
				<tr>
					<td>LAST NAME</td>
					<td><input type="text" name="lastName" required="required"
						value="<%=contact.getLastName()%>"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email" required="required"
						value="<%=contact.getEmail()%>"></td>
				</tr>
				<tr>
					<td>MOBILE</td>
					<td><input type="text" name="mobile" required="required"
						value="<%=contact.getMobile()%>"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
</body>
</html>