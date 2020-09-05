
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    <%@page errorPage="Error.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home</title>
</head>
<body><pre>

<hr>

<h2><b>HOME</b></h2><p align="right"><% out.println("<a href=Logout.jsp>LOGOUT</a>");%></p>


<hr>
<ul type="square">
<%
out.println("<Marquee><h1>Welcome to user home</h1></Marquee>");
String email = (String) session.getAttribute("id");
out.println("<Marquee><h3><i>You are welcome DUDE! " +email+"</h3></i></Marquee>");
%>


<%@include file="db.jsp"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<pre>


<h2><b>List of all Books:- </b></h2>
<hr>
<h5><a href=Bookissued.jsp?email=<%=email%>>Book Issued</a></h5>
<hr>
<ul type="square">
<li><table align="center" border="1px">
<th>ID</th><th>Title</th><th>Author</th><th>Subject</th><th>Click on book which you want to issue</th>
<%
String qr="select * from library";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
if(rs.next())
{
	do
	{
		String id = rs.getString("id");
		String title = rs.getString("title");
		String author = rs.getString("author");
		String sub = rs.getString("subject");
		%>
		<tr>
			<td><%=id %></td>
			<td><%=title%></td>
			<td><%=author %></td>
			<td><%=sub%></td>
			<td><a href="Issue.jsp?title=<%=title%>&email=<%=email%>">ISSUE BOOK</a></td>
			
			</tr>	
			<%	
	}while(rs.next());
	
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("Adminhome.jsp");
	rd.include(request,response);
	 out.println("<marquee><b><i>No records found</i></b></marquee>");

	
}
con.close();
%>
</table></li></ul></h2></pre>