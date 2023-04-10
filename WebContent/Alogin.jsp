<%
	String id= request.getParameter("id");
	String pwd=request.getParameter("pwd");
	if(id.equals("admin")&&pwd.equals("12345"))
	{
		session.setAttribute("id",id);
		response.sendRedirect("AdminHome.jsp");
	}
	else
	{
		out.println("Invalid id and password");
	}

%>