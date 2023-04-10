<%@include file="db.jsp" %>

<%

String id=request.getParameter("id");
		
String qr="delete from cart where id=? ";
PreparedStatement ps=con.prepareStatement(qr);
ps.setInt(1, Integer.parseInt(id));


int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("viewcart.jsp");
rd.include(request, response);
if(i>0){
	 out.println(" remove sucessfully ");
}
else{
	 out.println("not remove");
}
con.close();

%>
