<%@ include file="db.jsp" %>
<%@page errorPage="Error.jsp" %>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String mbnum=request.getParameter("mbnum");
String address=request.getParameter("address");
String dob=request.getParameter("dob");
String qr="insert into userlib values(?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, pwd);
ps.setString(4, mbnum);
ps.setString(5, address);
ps.setString(6, dob);
int i=ps.executeUpdate();
if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("User.jsp");
	rd.include(request, response);
	out.println("<script>window.alert('registration successfull');</script>");
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("Usersign.jsp");
	rd.include(request, response);
	out.println("<script>window.alert('registration failed');</script>");
}
con.close();
%>
