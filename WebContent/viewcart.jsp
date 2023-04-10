<%
   String email=(String) session.getAttribute("uid");
%>
<%="welcome "+email%>

<a href="Logout">Logout</a><br><br>
<%!int total=0; %>

<%@include file="db.jsp"%>
 <%
	String qr="select * from cart where email=?";
	 PreparedStatement ps=con.prepareStatement(qr);
	 ps.setString(1, email);
	 ResultSet rs=ps.executeQuery();
	 if(rs.next())
	 {
		 do
		 {
			 String id=rs.getString("id");
			 String name=rs.getString("name");
			 int price=rs.getInt("price");
			 String cat=rs.getString("cat");
			 String cmp=rs.getString("cmp");
			 total=total+price;
			 %>

		   <div style="height: 300px;width: 300px;background-color: orange; color: white;float: left; margin: 2px">
			<h4>id:<%=id%> </h4>
			<h1>Name:<%=name %></h1>
			<h4>Price:<%=price %></h4>
			<h4>Category:<%=cat %></h4>
			<h4>company:<%=cmp %></h4>
			<a href="removecart.jsp?id=<%=id%>">Remove</a>
			
			
			</div>
		    <%
		 }while(rs.next());
		 
	 }else{
		 out.println("record not found");
	 }
	 %>
		    
<h2 align="center">total is<%=total %></h2>
<a href="https://www.paypal.com/in/signin">CheckOut and pay</a>