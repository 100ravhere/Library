<%@page import="java.sql.ResultSet"%>
<%@ include file= "db.jsp" %>
<%@page errorPage="Error.jsp" %>

<%
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String qr = "select * from userlib where email = ? and password = ? ";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1, email);
ps.setString(2,pwd);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
	
	session.setAttribute("id",email);
	session.setMaxInactiveInterval(1);
	response.sendRedirect("Uhome.jsp");
	
}
else
{
	RequestDispatcher rd =request.getRequestDispatcher("User.jsp");
	rd.include(request,response);
	out.println("<b><i>INVAILD CREDENTIALS!</b></i>");
}
con.close();
%>