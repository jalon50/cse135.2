<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Report Page</title>
</head>
<body>
<form>
	<select name="option">
		<option>Customer</option>
		<option>State</option>
	</select>
	<input type="submit" name="action" value="Submit">
</form>
</form>
<h3>Filtering options</h3>
<form>
<table>
	State: <select name="state">
		<option selected="selected">All states</option>
		<option>Alabama</option> 
		<option>Alaska</option>
		<option>Arizona</option>
		<option>Arkansas</option>
		<option>California</option>
		<option>Colorado</option>
		<option>Connecticut</option>
		<option>Delaware</option>
		<option>Florida</option>
		<option>Georgia</option>
		<option>Hawaii</option>
		<option>Idaho</option>
		<option>Illinois</option>
		<option>Indiana</option>
		<option>Iowa</option>
		<option>Kansas</option>
		<option>Kentucky</option>
		<option>Louisiana</option>
		<option>Maine</option>
		<option>Maryland</option>
		<option>Massachusetts</option>
		<option>Michigan</option>
		<option>Minnesota</option>
		<option>Mississippi</option>
		<option>Missouri</option>
		<option>Montana</option>
		<option>Nebraska</option>
		<option>Nevada</option>
		<option>New Hampshire</option>
		<option>New Jersey</option>
		<option>New Mexico</option>
		<option>New York</option>
		<option>North Carolina</option>
		<option>North Dakota</option>
		<option>Ohio</option>
		<option>Oklahoma</option>
		<option>Oregon</option>
		<option>Pennsylvania</option>
		<option>Rhode Island</option>
		<option>South Carolina</option>
		<option>South Dakota</option>
		<option>Tennessee</option>
		<option>Texas</option>
		<option>Utah</option>
		<option>Vermont</option>
		<option>Virginia</option>
		<option>Washington</option>
		<option>West Virginia</option>
		<option>Wisconsin</option>
		<option>Wyoming</option>
	</select>
	Product Category: <select name="productCategory">
	</select>
	Age: <select name="age">
		<option selected="selected">All ages</option>
		<option>12-18</option>
		<option>18-45</option>
		<option>45-65</option>
		<option>65+</option>
	</select>
	<input type="submit" value="Run Query">
</table>
</form>
<%
try
{
	Class.forName("org.postgresql.Driver");	
	String url="jdbc:postgresql://127.0.0.1:5432/P1";
	String user="postgres";
	String password="880210";
	Connection conn = DriverManager.getConnection(url, user, password);
	
	System.out.println("option: " + request.getParameter("option"));
	System.out.println("state: " + request.getParameter("state"));
	System.out.println("age: " + request.getParameter("age"));
	
}
catch(Exception e)
{
	System.out.println(e.getMessage());
	out.println("<font color='#ff0000'>Error.<br>");
}

%>
</body>
</html>