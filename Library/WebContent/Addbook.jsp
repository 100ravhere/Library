<%@page import="java.sql.PreparedStatement" %>
<%@page errorPage="Error.jsp" %>
<%@include file="db.jsp" %>
<%
String id = request.getParameter("id");
String title=request.getParameter("title");
String author = request.getParameter("author");
String sub = request.getParameter("sub");
String qr="insert into library values(?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,id);
ps.setString(2,title);
ps.setString(3,author);
ps.setString(4,sub);
int i = ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd = request.getRequestDispatcher("Add.jsp");
	rd.include(request,response);
	out.println("<h3><marquee>Book is added to our library</h3></marquee>");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("Add.jsp");
	rd.include(request,response);
	out.println("<b><i>Book can't be added,Try again later</b></i>");
}
con.close();


%>