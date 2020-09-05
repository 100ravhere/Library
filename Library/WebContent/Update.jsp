<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String id = request.getParameter("id");
    String title  = request.getParameter("title");
    String author  = request.getParameter("author");
    String sub  = request.getParameter("sub");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<pre>
<hr>
<hr>

<h2><b>Update Book details:</b></h2>
<hr>
<hr>
<form action ="Updatejava.jsp">
<ul type="square">
<li><b>Update details of book id: <%= id %></b></li>
<input type="hidden" name="id" value="<%=id %>" />
<li><b>Update Book title:<input type="text" name="title" value="<%=title%>">
<li>Update author:<input type="text" name="author" value="<%=author%>">
<li>Update Subject:<input type="text" name="sub" value="<%=sub%>">
<br>
<input type="submit" value="Update Book">



</ul>
</form>
</body>
</html>