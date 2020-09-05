<%@ include file ="db.jsp" %>
<%@page errorPage="Error.jsp" %>
<%
String id  = request.getParameter("id");
String title  = request.getParameter("title");
String author  = request.getParameter("author");
String sub  = request.getParameter("sub");
String qr = "update library set title=?,author=?,subject=? where id=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,title);
ps.setString(2,author);
ps.setString(3,sub);
ps.setString(4,id);
int i = ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd = request.getRequestDispatcher("Show.jsp");
	rd.include(request,response);
	out.println("<marquee><b><i>Book is updated!</b></i></marquee>");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("Show.jsp");
	rd.include(request,response);
	out.println("<marquee><b><i>Something went wrong ,Book can't be updated!</b></i></marquee>");
}
%>