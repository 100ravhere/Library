<%@ include file="db.jsp" %>
<%
String name=request.getParameter("name");
String title = request.getParameter("title");
String di = request.getParameter("di");
String td = request.getParameter("td");
String qr = "insert into userissue values(?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);

ps.setString(1,title);
ps.setString(2,di);
ps.setString(3,td);
ps.setString(4,name);
int i =ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd= request.getRequestDispatcher("Uhome.jsp");
	rd.include(request,response);
	out.println("<b><i>Book is issued in the name of "+name+" from "+di+" to "+td+".</b></i>");
}
else
{
RequestDispatcher rd= request.getRequestDispatcher("Issue.jsp");
	rd.include(request,response);
out.println("Can't issue it, Try again");
}
%>