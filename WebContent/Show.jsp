<%@include file="db.jsp" %>
<table align="center" border="1px">
  <%
	String qr="select * from productss";
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery(qr);
	 if(rs.next())
	 {
		 do
		 {
			 String id=rs.getString("id");
			 String name=rs.getString("name");
			 String price=rs.getString("price");
			 String cat=rs.getString("cat");
			 String cmp=rs.getString("cmp");
			 %>
			 <tr>
			 <form action="Update.jsp">
			      <td><input type="hidden" name="id" value="<%=id%>"/></td>
			      <td><input type="text" name="name" value="<%=name%>"/></td>
			      <td><input type="number" name="price" value="<%=price%>"/></td>
			      <td><input type="text" name="cat" value="<%=cat%>"/></td>
			      <td><input type="text" name="cmp" value="<%=cmp%>"/></td>
			      <td><a href="Delete.jsp?id=<%=id%>">Delete</a></td>
			      <td><input type="submit" value="Update"></td>
			      </form>
			 </tr>
			 <%
		 }while(rs.next());
		 
	 }else{
		 out.println("record not found");
	 }
	 %>
</table>