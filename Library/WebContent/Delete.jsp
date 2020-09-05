<%@page errorPage="Error.jsp" %>
<%@include file="db.jsp" %>
<%
String id = request.getParameter("id");
String qr="delete from library where id = ?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,id);
int i = ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd = request.getRequestDispatcher("Show.jsp");
	rd.include(request,response);
	out.println("<marquee><b><i>Book is Removed from the library!</b></i></marquee>");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("Show.jsp");
	rd.include(request,response);
	out.println("<marquee><b><i>Book is not Removed from the library!</b></i></marquee>");
}
%>