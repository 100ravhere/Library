<%@page import="javax.servlet.RequestDispatcher" %>
<% 
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
if(name.equals("100rav")&&pwd.equals("100ravishere"))
{
	response.sendRedirect("Adminhome.jsp");
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
	rd.include(request,response);
	 out.println("<b><i>Incorrect Password! Please try again.</i></b>");
}
%>