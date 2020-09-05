<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue book</title>
</head>
<body>
<hr><hr>
<pre>
<h2>Issue</h2><h1><i>Book:</i></h1>
<%
String email=request.getParameter("email");
String title = request.getParameter("title");
%>
<hr><hr>
<br>
<form action ="Issuej.jsp">
<b><I>Hey , <%=email%></I></b> 
<br>
<input type="hidden" name="name" value="<%=email%>">
<b>Name of Book:</b><input type="text" name="title" value="<%=title %>">
<b>Date of issue:</b><input type="date" name="di">
<b>Till date:</b><input type="date" name="td"><small>You can issue a book for minimum of 20 days</small>

<input type="submit" value="Issue">
</form>

</body>
</html>