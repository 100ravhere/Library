<%@include file="db.jsp"%>
    <%@page errorPage="Error.jsp" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<pre>
<hr>
<hr>

<h2><b>List of all Books:- </b></h2>
<hr>
<hr>
<ul type="square">
<li><table align="center" border="1px">
<th>ID</th><th>Title</th><th>Author</th><th>Subject</th><th colspan=2>Make changes</th>
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
			<td><%out.println("<a href=Update.jsp?id="+id+"&title="+title+"&author="+author+"&sub="+sub+">Update</a>");  %>
			<td><a href=Delete.jsp?id=<%=id%>>Delete</a>
			</tr>	
			<%	
	}while(rs.next());
	
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("Uhome.jsp");
	rd.include(request,response);
	 out.println("<marquee><b><i>No records found</i></b></marquee>");

}
con.close();
%>
</table></li></ul></h2></pre>