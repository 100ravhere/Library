<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book issued</title>
</head>
<body>
<pre>
<hr>

<hr>

</pre>

<%
String name=request.getParameter("email");
String qr = "select * from userissue where name = ?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,name);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
	%><h3>Your Books are here:</h3>
	<ul type="square">
<li><table align="center" border="1px">
<th>Name of book</th><th>Date of issue</th><th>Last date of return</th><%
	do
	{
		String title = rs.getString("nameofbook");
		String di = rs.getString("dateofissue");
		String td = rs.getString("tilldate");
		
		%>
		<tr>
			<td><%=title%></td>
			<td><%=di%></td>
			<td><%=td%></td>
			</tr>	
			<%
	}while(rs.next());
}
	
	else
{
	RequestDispatcher rd = request.getRequestDispatcher("Uhome.jsp");
	rd.include(request,response);
	 out.println("<b><i>Not issued any books yet</i></b>");


}
con.close();
%>

</body>
</html>